package com.myshop.web;
import com.myshop.domain.CustomerCreditMemo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customercreditmemoes")
@Controller
@RooWebScaffold(path = "customercreditmemoes", formBackingObject = CustomerCreditMemo.class)
public class CustomerCreditMemoController {
}
