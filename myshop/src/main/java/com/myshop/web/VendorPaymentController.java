package com.myshop.web;
import com.myshop.domain.VendorPayment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendorpayments")
@Controller
@RooWebScaffold(path = "vendorpayments", formBackingObject = VendorPayment.class)
public class VendorPaymentController {
}
