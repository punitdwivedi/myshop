package com.myshop.web;
import com.myshop.domain.VendorContactPerson;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendorcontactpeople")
@Controller
@RooWebScaffold(path = "vendorcontactpeople", formBackingObject = VendorContactPerson.class)
public class VendorContactPersonController {
}
