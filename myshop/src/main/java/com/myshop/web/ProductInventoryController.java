package com.myshop.web;
import com.myshop.domain.ProductInventory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productinventorys")
@Controller
@RooWebScaffold(path = "productinventorys", formBackingObject = ProductInventory.class)
public class ProductInventoryController {
}
