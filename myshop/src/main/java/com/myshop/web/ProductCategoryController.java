package com.myshop.web;
import com.myshop.domain.ProductCategory;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/productcategorys")
@Controller
@RooWebScaffold(path = "productcategorys", formBackingObject = ProductCategory.class)
public class ProductCategoryController {
}
