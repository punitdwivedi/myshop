package com.myshop.web;
import com.myshop.domain.SalesChannelTranasaction;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/saleschanneltranasactions")
@Controller
@RooWebScaffold(path = "saleschanneltranasactions", formBackingObject = SalesChannelTranasaction.class)
public class SalesChannelTranasactionController {
}
