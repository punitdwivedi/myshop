package com.myshop.web;
import com.myshop.domain.VendorAddress;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendoraddresses")
@Controller
@RooWebScaffold(path = "vendoraddresses", formBackingObject = VendorAddress.class)
public class VendorAddressController {
}
