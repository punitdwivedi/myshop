package com.myshop.web;
import com.myshop.domain.CustomerPoDetails;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/customerpodetailses")
@Controller
@RooWebScaffold(path = "customerpodetailses", formBackingObject = CustomerPoDetails.class)
public class CustomerPoDetailsController {
}
