// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.web;

import com.myshop.domain.CompanyShippingAddress;
import com.myshop.domain.Vendor;
import com.myshop.domain.VendorPurchaseOrder;
import com.myshop.web.VendorPurchaseOrderController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect VendorPurchaseOrderController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String VendorPurchaseOrderController.create(@Valid VendorPurchaseOrder vendorPurchaseOrder, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, vendorPurchaseOrder);
            return "vendorpurchaseorders/create";
        }
        uiModel.asMap().clear();
        vendorPurchaseOrder.persist();
        return "redirect:/vendorpurchaseorders/" + encodeUrlPathSegment(vendorPurchaseOrder.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String VendorPurchaseOrderController.createForm(Model uiModel) {
        populateEditForm(uiModel, new VendorPurchaseOrder());
        return "vendorpurchaseorders/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String VendorPurchaseOrderController.show(@PathVariable("id") Long id, Model uiModel) {
        uiModel.addAttribute("vendorpurchaseorder", VendorPurchaseOrder.findVendorPurchaseOrder(id));
        uiModel.addAttribute("itemId", id);
        return "vendorpurchaseorders/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String VendorPurchaseOrderController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("vendorpurchaseorders", VendorPurchaseOrder.findVendorPurchaseOrderEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) VendorPurchaseOrder.countVendorPurchaseOrders() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("vendorpurchaseorders", VendorPurchaseOrder.findAllVendorPurchaseOrders(sortFieldName, sortOrder));
        }
        return "vendorpurchaseorders/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String VendorPurchaseOrderController.update(@Valid VendorPurchaseOrder vendorPurchaseOrder, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, vendorPurchaseOrder);
            return "vendorpurchaseorders/update";
        }
        uiModel.asMap().clear();
        vendorPurchaseOrder.merge();
        return "redirect:/vendorpurchaseorders/" + encodeUrlPathSegment(vendorPurchaseOrder.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String VendorPurchaseOrderController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, VendorPurchaseOrder.findVendorPurchaseOrder(id));
        return "vendorpurchaseorders/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String VendorPurchaseOrderController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        VendorPurchaseOrder vendorPurchaseOrder = VendorPurchaseOrder.findVendorPurchaseOrder(id);
        vendorPurchaseOrder.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/vendorpurchaseorders";
    }
    
    void VendorPurchaseOrderController.populateEditForm(Model uiModel, VendorPurchaseOrder vendorPurchaseOrder) {
        uiModel.addAttribute("vendorPurchaseOrder", vendorPurchaseOrder);
        uiModel.addAttribute("companyshippingaddresses", CompanyShippingAddress.findAllCompanyShippingAddresses());
        uiModel.addAttribute("vendors", Vendor.findAllVendors());
    }
    
    String VendorPurchaseOrderController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
        String enc = httpServletRequest.getCharacterEncoding();
        if (enc == null) {
            enc = WebUtils.DEFAULT_CHARACTER_ENCODING;
        }
        try {
            pathSegment = UriUtils.encodePathSegment(pathSegment, enc);
        } catch (UnsupportedEncodingException uee) {}
        return pathSegment;
    }
    
}
