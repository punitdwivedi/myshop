package com.myshop.web;
import com.myshop.domain.ShipmentDetails;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/shipmentdetailses")
@Controller
@RooWebScaffold(path = "shipmentdetailses", formBackingObject = ShipmentDetails.class)
public class ShipmentDetailsController {
}
