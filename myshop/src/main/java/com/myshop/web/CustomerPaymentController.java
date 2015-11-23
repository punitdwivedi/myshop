package com.myshop.web;
import com.myshop.domain.CustomerPayment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerpayments")
@Controller
@RooWebScaffold(path = "customerpayments", formBackingObject = CustomerPayment.class)
public class CustomerPaymentController {
}
