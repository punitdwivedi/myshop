package com.myshop.web;
import com.myshop.domain.CustomerPaymentDetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerpaymentdetails")
@Controller
@RooWebScaffold(path = "customerpaymentdetails", formBackingObject = CustomerPaymentDetail.class)
public class CustomerPaymentDetailController {
}
