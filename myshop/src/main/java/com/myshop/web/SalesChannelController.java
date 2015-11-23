package com.myshop.web;
import com.myshop.domain.SalesChannel;
import org.springframework.roo.addon.web.mvc.controller.scaffold.RooWebScaffold;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@RequestMapping("/saleschannels")
@Controller
@RooWebScaffold(path = "saleschannels", formBackingObject = SalesChannel.class)
public class SalesChannelController {
}
