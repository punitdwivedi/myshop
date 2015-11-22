package com.myshop.web;
import com.myshop.domain.CustomerContact;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customercontacts")
@Controller
@RooWebScaffold(path = "customercontacts", formBackingObject = CustomerContact.class)
public class CustomerContactController {
}
