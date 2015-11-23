package com.myshop.web;
import com.myshop.domain.PaymentSentDetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/paymentsentdetails")
@Controller
@RooWebScaffold(path = "paymentsentdetails", formBackingObject = PaymentSentDetail.class)
public class PaymentSentDetailController {
}
