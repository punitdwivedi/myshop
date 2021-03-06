// WARNING: DO NOT EDIT THIS FILE. THIS FILE IS MANAGED BY SPRING ROO.
// You may push code into the target .java compilation unit if you wish to edit any member(s).

package com.myshop.web;

import com.myshop.domain.Product;
import com.myshop.domain.SalesChannel;
import com.myshop.domain.SalesChannelTranasaction;
import com.myshop.web.SalesChannelTranasactionController;
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

privileged aspect SalesChannelTranasactionController_Roo_Controller {
    
    @RequestMapping(method = RequestMethod.POST, produces = "text/html")
    public String SalesChannelTranasactionController.create(@Valid SalesChannelTranasaction salesChannelTranasaction, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, salesChannelTranasaction);
            return "saleschanneltranasactions/create";
        }
        uiModel.asMap().clear();
        salesChannelTranasaction.persist();
        return "redirect:/saleschanneltranasactions/" + encodeUrlPathSegment(salesChannelTranasaction.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(params = "form", produces = "text/html")
    public String SalesChannelTranasactionController.createForm(Model uiModel) {
        populateEditForm(uiModel, new SalesChannelTranasaction());
        return "saleschanneltranasactions/create";
    }
    
    @RequestMapping(value = "/{id}", produces = "text/html")
    public String SalesChannelTranasactionController.show(@PathVariable("id") Long id, Model uiModel) {
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("saleschanneltranasaction", SalesChannelTranasaction.findSalesChannelTranasaction(id));
        uiModel.addAttribute("itemId", id);
        return "saleschanneltranasactions/show";
    }
    
    @RequestMapping(produces = "text/html")
    public String SalesChannelTranasactionController.list(@RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, @RequestParam(value = "sortFieldName", required = false) String sortFieldName, @RequestParam(value = "sortOrder", required = false) String sortOrder, Model uiModel) {
        if (page != null || size != null) {
            int sizeNo = size == null ? 10 : size.intValue();
            final int firstResult = page == null ? 0 : (page.intValue() - 1) * sizeNo;
            uiModel.addAttribute("saleschanneltranasactions", SalesChannelTranasaction.findSalesChannelTranasactionEntries(firstResult, sizeNo, sortFieldName, sortOrder));
            float nrOfPages = (float) SalesChannelTranasaction.countSalesChannelTranasactions() / sizeNo;
            uiModel.addAttribute("maxPages", (int) ((nrOfPages > (int) nrOfPages || nrOfPages == 0.0) ? nrOfPages + 1 : nrOfPages));
        } else {
            uiModel.addAttribute("saleschanneltranasactions", SalesChannelTranasaction.findAllSalesChannelTranasactions(sortFieldName, sortOrder));
        }
        addDateTimeFormatPatterns(uiModel);
        return "saleschanneltranasactions/list";
    }
    
    @RequestMapping(method = RequestMethod.PUT, produces = "text/html")
    public String SalesChannelTranasactionController.update(@Valid SalesChannelTranasaction salesChannelTranasaction, BindingResult bindingResult, Model uiModel, HttpServletRequest httpServletRequest) {
        if (bindingResult.hasErrors()) {
            populateEditForm(uiModel, salesChannelTranasaction);
            return "saleschanneltranasactions/update";
        }
        uiModel.asMap().clear();
        salesChannelTranasaction.merge();
        return "redirect:/saleschanneltranasactions/" + encodeUrlPathSegment(salesChannelTranasaction.getId().toString(), httpServletRequest);
    }
    
    @RequestMapping(value = "/{id}", params = "form", produces = "text/html")
    public String SalesChannelTranasactionController.updateForm(@PathVariable("id") Long id, Model uiModel) {
        populateEditForm(uiModel, SalesChannelTranasaction.findSalesChannelTranasaction(id));
        return "saleschanneltranasactions/update";
    }
    
    @RequestMapping(value = "/{id}", method = RequestMethod.DELETE, produces = "text/html")
    public String SalesChannelTranasactionController.delete(@PathVariable("id") Long id, @RequestParam(value = "page", required = false) Integer page, @RequestParam(value = "size", required = false) Integer size, Model uiModel) {
        SalesChannelTranasaction salesChannelTranasaction = SalesChannelTranasaction.findSalesChannelTranasaction(id);
        salesChannelTranasaction.remove();
        uiModel.asMap().clear();
        uiModel.addAttribute("page", (page == null) ? "1" : page.toString());
        uiModel.addAttribute("size", (size == null) ? "10" : size.toString());
        return "redirect:/saleschanneltranasactions";
    }
    
    void SalesChannelTranasactionController.addDateTimeFormatPatterns(Model uiModel) {
        uiModel.addAttribute("salesChannelTranasaction_solddate_date_format", DateTimeFormat.patternForStyle("M-", LocaleContextHolder.getLocale()));
    }
    
    void SalesChannelTranasactionController.populateEditForm(Model uiModel, SalesChannelTranasaction salesChannelTranasaction) {
        uiModel.addAttribute("salesChannelTranasaction", salesChannelTranasaction);
        addDateTimeFormatPatterns(uiModel);
        uiModel.addAttribute("products", Product.findAllProducts());
        uiModel.addAttribute("saleschannels", SalesChannel.findAllSalesChannels());
    }
    
    String SalesChannelTranasactionController.encodeUrlPathSegment(String pathSegment, HttpServletRequest httpServletRequest) {
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
