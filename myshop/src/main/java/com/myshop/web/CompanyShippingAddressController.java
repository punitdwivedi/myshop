package com.myshop.web;
import com.myshop.domain.CompanyShippingAddress;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/companyshippingaddresses")
@Controller
@RooWebScaffold(path = "companyshippingaddresses", formBackingObject = CompanyShippingAddress.class)
public class CompanyShippingAddressController {
}
