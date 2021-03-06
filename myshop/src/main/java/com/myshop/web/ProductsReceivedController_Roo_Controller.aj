// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.web;

import com.myshop.domain.Product;
import com.myshop.domain.ProductsReceived;
import com.myshop.domain.VendorPoDetail;
import com.myshop.web.ProductsReceivedController;
import java.io.UnsupportedEncodingException;
import javax.servlet.http.HttpServletRequest;
import javax.validation.Valid;
import org.joda.time.format.DateTimeFormat;
import org.springframework.context.i18n.LocaleContextHolder;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.util.UriUtils;
import org.springframework.web.util.WebUtils;

privileged aspect ProductsReceivedController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String ProductsReceivedController.create(@Valid ProductsReceived productsReceived, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, productsReceived);
            return "productsreceiveds/create";
        }
        uiModel.asMap().clear();
        productsReceived.persist();
        return "redirect:/productsreceiveds/" + encodeUrlPathSegment(productsReceived.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String ProductsReceivedController.createForm(Model uiModel) {
        populateEditForm(uiModel, new ProductsReceived());
        return "productsreceiveds/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String ProductsReceivedController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("productsreceived", ProductsReceived.findProductsReceived(id));
        uiModel.addAttribute("itemId", id);
        return "productsreceiveds/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String ProductsReceivedController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("productsreceiveds", ProductsReceived.findProductsReceivedEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) ProductsReceived.countProductsReceiveds() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("productsreceiveds", ProductsReceived.findAllProductsReceiveds(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "productsreceiveds/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String ProductsReceivedController.update(@Valid ProductsReceived productsReceived, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, productsReceived);
            return "productsreceiveds/update";
        }
        uiModel.asMap().clear();
        productsReceived.merge();
        return "redirect:/productsreceiveds/" + encodeUrlPathSegment(productsReceived.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String ProductsReceivedController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, ProductsReceived.findProductsReceived(id));
        return "productsreceiveds/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String ProductsReceivedController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        ProductsReceived productsReceived = ProductsReceived.findProductsReceived(id);
        productsReceived.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/productsreceiveds";
    }
    
    void ProductsReceivedController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("productsReceived_receiveddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void ProductsReceivedController.populateEditForm(Model uiModel, ProductsReceived productsReceived) {
        uiModel.addAttribute("productsReceived", productsReceived);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("products", Product.findAllProducts());
        uiModel.addAttribute("vendorpodetails", VendorPoDetail.findAllVendorPoDetails());
    }
    
    String ProductsReceivedController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
