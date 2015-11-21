package com.myshop.web;
import com.myshop.domain.AddressType;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/addresstypes")
@Controller
@RooWebScaffold(path = "addresstypes", formBackingObject = AddressType.class)
public class AddressTypeController {
}
