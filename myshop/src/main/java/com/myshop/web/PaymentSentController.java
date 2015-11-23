package com.myshop.web;
import com.myshop.domain.PaymentSent;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/paymentsents")
@Controller
@RooWebScaffold(path = "paymentsents", formBackingObject = PaymentSent.class)
public class PaymentSentController {
}
