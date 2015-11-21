package com.myshop.web;
import com.myshop.domain.PaymentTerm;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/paymentterms")
@Controller
@RooWebScaffold(path = "paymentterms", formBackingObject = PaymentTerm.class)
public class PaymentTermController {
}
