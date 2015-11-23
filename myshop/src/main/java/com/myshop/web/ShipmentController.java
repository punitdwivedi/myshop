package com.myshop.web;
import com.myshop.domain.Shipment;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/shipments")
@Controller
@RooWebScaffold(path = "shipments", formBackingObject = Shipment.class)
public class ShipmentController {
}
