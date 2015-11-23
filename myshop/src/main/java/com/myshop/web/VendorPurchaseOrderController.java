package com.myshop.web;
import com.myshop.domain.VendorPurchaseOrder;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendorpurchaseorders")
@Controller
@RooWebScaffold(path = "vendorpurchaseorders", formBackingObject = VendorPurchaseOrder.class)
public class VendorPurchaseOrderController {
}
