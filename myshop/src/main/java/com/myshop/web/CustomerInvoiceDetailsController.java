package com.myshop.web;
import com.myshop.domain.CustomerInvoiceDetails;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerinvoicedetailses")
@Controller
@RooWebScaffold(path = "customerinvoicedetailses", formBackingObject = CustomerInvoiceDetails.class)
public class CustomerInvoiceDetailsController {
}
