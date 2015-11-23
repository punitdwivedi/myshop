package com.myshop.web;
import com.myshop.domain.VendorDebitMemo;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/vendordebitmemoes")
@Controller
@RooWebScaffold(path = "vendordebitmemoes", formBackingObject = VendorDebitMemo.class)
public class VendorDebitMemoController {
}
