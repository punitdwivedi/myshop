package com.myshop.web;
import com.myshop.domain.ProductsReceived;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productsreceiveds")
@Controller
@RooWebScaffold(path = "productsreceiveds", formBackingObject = ProductsReceived.class)
public class ProductsReceivedController {
}
