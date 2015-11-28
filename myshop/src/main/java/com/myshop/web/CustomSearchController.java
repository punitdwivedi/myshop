
package com.myshop.web;
import java.util.ArrayList;
import java.util.List;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.myshop.dto.FilterData;
import com.myshop.dto.SearchByProductNameResultDTO;
import com.myshop.dto.SoldProductsDTO;

@RequestMapping("/process/data/**")
@Controller
public class CustomSearchController {
	
	@PersistenceContext(unitName = "persistenceUnit")
	private EntityManager em;

    @RequestMapping(value = "/searchProduct",  method = RequestMethod.POST )
    public String post(@ModelAttribute("filterData") FilterData filterData, ModelMap modelMap, HttpServletRequest request, HttpServletResponse response) {
		modelMap.addAttribute("SearchByProductNameResultDTOList", getProducts(filterData));		
		return index(modelMap);
		
    }
    
    @RequestMapping(value = "/searchByProductForm",  method = RequestMethod.GET )
    public String seachByProductForm(ModelMap modelMap) {
    	FilterData filterData  = new FilterData();
    	modelMap.put("filterData", filterData);	
    	setResult(filterData, modelMap);    		
		return "process/data/searchByProductName";
		
    }
    
    @RequestMapping(value = "/searchByProduct",  method = RequestMethod.POST)
    public String seachByProduct(@ModelAttribute("filterData") FilterData filterData, ModelMap modelMap) {
    	setResult(filterData, modelMap);

    	return "process/data/searchByProductName";
		
    }

    @RequestMapping
    public String index( ModelMap modelMap) {
    	List<SearchByProductNameResultDTO> SearchByProductNameResultDTOList = getProducts(new FilterData());
    	modelMap.put("filterData", new FilterData());
    	modelMap.put("searchByProductNameResultDTOList", getProducts(new FilterData()));
        return "process/data/index";
    }
    
    
    private List<SearchByProductNameResultDTO> getProducts(FilterData filterData){
    	
    	
    	String queryString = "SELECT p.id, p.product_name,v.name,p.height, p.weight, pi.inventory_qty  "
    			+ "FROM product p, vendor v, product_inventory pi where p.vendor=v.id and p.id=pi.product_id";
    	if(StringUtils.isNotBlank(filterData.getProductName())){
    		queryString = queryString + " AND p.product_name=:productName";
    	}
		Query query = em.createNativeQuery(queryString);
		
		if(StringUtils.isNotBlank(filterData.getProductName())){
			query.setParameter("productName", filterData.getProductName());
    	}
		
		List<Object[]> list  = query.getResultList();
		List<SearchByProductNameResultDTO> SearchByProductNameResultDTOList = new ArrayList<SearchByProductNameResultDTO>();

		return SearchByProductNameResultDTOList;
    }
    
    
  private List<SearchByProductNameResultDTO> getProductByName(FilterData filterData){
    	final StringBuilder queryString = new StringBuilder();
    	queryString.append("SELECT").
    						append(" p.id as id, ").append
							("p.height as height, ").append
							("p.length as length, ").append
							("p.weight as weight, ").append
							("p.product_image as product_image_name, ").append
							("p.product_name as product_name, ").append
							("i.inventory_qty as inventory_qty, ").append
							("i.room_no as room_no, ").append
							("i.seat_no as seat_no, ").append
							("i.shelf_no as shelf_no,").append
							("i.warehouse_no as ware_house_no, ").append
							("po_d.qty as customer_order_qty, ").append
							("po_d.desired_delivery_date as customer_required_date, ").append
							("vpo_d.qty as vendor_order_qty, ").append
							("vpo_d.confirm_date as vendor_required_date, ")
							.append("p.product_type as product_type ").append
						("FROM ")
							.append("product p ").append
							("inner join  product_inventory i ").append
							("on p.id=i.product_id ").append
							("inner join customer_po_details po_d ").append
							("on p.id=po_d.product_id ").append
							("inner join customerpo po ").append
							("on po.id=po_d.customer_po_id ").append
							("inner join vendor_po_detail vpo_d ").append
							("on p.id=vpo_d.product ").append
							("inner join vendor_purchase_order vpo ").append
							("on vpo.id=vpo_d.vendor_po ").append
						("where ")
							.append(" po.order_is_open=1 and vpo.is_status_open=1 ");
    	if(StringUtils.isNotBlank(filterData.getProductName())){
    		queryString.append("AND p.product_name like '%").append(filterData.getProductName()).append("%' ");
    	}
		Query query = em.createNativeQuery(queryString.toString(), SearchByProductNameResultDTO.class);
		return query.getResultList();
    }
  
  
  public List<SoldProductsDTO> getCustomSoldProducts(FilterData filterData, List<Long> productlist){
	  String productIdStr = StringUtils.join(productlist, ",");	 	  
	  final StringBuilder queryString = new StringBuilder();
	  
  queryString.append("select ")
      .append("sd.id as id, ")
	  .append("s.shipping_date as sold_date, ")
	  .append("sd.shipped_quantity as quantity, ")
	  .append("c.customer_name as channel ")
  .append("from shipment s ")
	  .append("inner join shipment_details sd ")
	  .append("on sd.shipping_id = s.id ")
	  .append("inner join customer_po_details cpod ")
	  .append("on sd.customer_po_line_no = cpod.id ")
	  .append("inner join customerpo cpo ")
	  .append("on cpod.customer_po_id = cpo.id ")
	  .append("inner join customer c ")
	  .append("on cpo.customer_id = c.id ")
  .append("where ")
	  .append("cpod.product_id in (").append(productIdStr).append(") ");

  
  	if(StringUtils.isNotBlank(filterData.getStartDate())){			 
		 queryString.append("AND s.shipping_dat >='").append(filterData.getStartDate()).append(" 00:00:00").append("' ");
	 }
	 if(StringUtils.isNotBlank(filterData.getEndDate())){			 
		 queryString.append("AND s.shipping_dat <='").append(filterData.getEndDate()).append(" 23:59:59").append("' ");
	 }
	  Query query = em.createNativeQuery(queryString.toString(), SoldProductsDTO.class);
	  return query.getResultList();
	  
  }
  
  
  public List<SoldProductsDTO> getSoldProducts(FilterData filterData, List<Long> productlist){
	  String productIdStr = StringUtils.join(productlist, ",");	 
	  final StringBuilder queryString = new StringBuilder();  
	  
		 queryString.append("SELECT ") 
		     .append("sct.id AS id, ")
			 .append("sct.sold_date AS sold_date, ")
			 .append("sct.sold_qty AS quantity, ")
			 .append("sc.sales_channel_name AS channel ")
		 .append("FROM ")
			 .append("sales_channel_tranasaction sct ")
			 .append("INNER JOIN ")
			 .append("sales_channel sc ON sct.sales_channel_id = sc.id ")
		 .append("WHERE ")
		 	.append("sct.product_id IN (").append(productIdStr).append(") ");
		// date format yyyy-mm-dd 00:00:00
		 if(StringUtils.isNotBlank(filterData.getStartDate())){			 
			 queryString.append("AND sct.sold_date >='").append(filterData.getStartDate()).append(" 00:00:00").append("' ");
		 }
		 if(StringUtils.isNotBlank(filterData.getEndDate())){			 
			 queryString.append("AND sct.sold_date <='").append(filterData.getEndDate()).append(" 23:59:59").append("' ");
		 }
	  
	  Query query = em.createNativeQuery(queryString.toString(), SoldProductsDTO.class);
	  return  query.getResultList();
  }
  
  private void setResult(FilterData filterData, ModelMap modelMap){
	  List<SearchByProductNameResultDTO> searchByProductNameResultDTOList = getProductByName(filterData);
	  	List<Long> customProductIds = new ArrayList<Long>();
	  	List<Long> productIds = new ArrayList<Long>();
	  	for (SearchByProductNameResultDTO searchByProductNameResultDTO : searchByProductNameResultDTOList) {
				if(searchByProductNameResultDTO.getProductType().equals("noncustom")){
					productIds.add(searchByProductNameResultDTO.getId());
				}
				else{
					customProductIds.add(searchByProductNameResultDTO.getId());
				}
				
			}   	
	  	
	  	modelMap.addAttribute("searchByProductNameResultDTOList", searchByProductNameResultDTOList);	   
	  	if(customProductIds.size()>0){
	  		modelMap.addAttribute("customSoldProducts", getCustomSoldProducts(filterData, customProductIds));	
	  	}
	  	if(productIds.size()>0){
	  		modelMap.addAttribute("nonCustomSoldProducts", getSoldProducts(filterData, productIds));	
	  	}
	 }
    
}
