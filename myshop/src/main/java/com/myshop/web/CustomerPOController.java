package com.myshop.web;
import com.myshop.domain.CustomerPO;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/custoes")
@Controller
@RooWebScaffold(path = "custoes", formBackingObject = CustomerPO.class)
public class CustomerPOController {
}
