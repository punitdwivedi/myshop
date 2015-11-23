package com.myshop.web;
import com.myshop.domain.VendorPaymentDetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendorpaymentdetails")
@Controller
@RooWebScaffold(path = "vendorpaymentdetails", formBackingObject = VendorPaymentDetail.class)
public class VendorPaymentDetailController {
}
