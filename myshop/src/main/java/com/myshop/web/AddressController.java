package com.myshop.web;
import com.myshop.domain.Address;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * Address Controller
 */
@RequestMapping("/addresses")
@Controller
@RooWebScaffold(path = "addresses", formBackingObject = Address.class)
public class AddressController {
}
