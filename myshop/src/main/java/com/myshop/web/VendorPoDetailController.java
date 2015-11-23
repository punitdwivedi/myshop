package com.myshop.web;
import com.myshop.domain.VendorPoDetail;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendorpodetails")
@Controller
@RooWebScaffold(path = "vendorpodetails", formBackingObject = VendorPoDetail.class)
public class VendorPoDetailController {
}
