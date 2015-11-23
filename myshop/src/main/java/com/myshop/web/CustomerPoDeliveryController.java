package com.myshop.web;
import com.myshop.domain.CustomerPoDelivery;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerpodeliverys")
@Controller
@RooWebScaffold(path = "customerpodeliverys", formBackingObject = CustomerPoDelivery.class)
public class CustomerPoDeliveryController {
}
