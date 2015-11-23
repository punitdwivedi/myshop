package com.myshop.web;
import com.myshop.domain.CustomerInvoice;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerinvoices")
@Controller
@RooWebScaffold(path = "customerinvoices", formBackingObject = CustomerInvoice.class)
public class CustomerInvoiceController {
}
