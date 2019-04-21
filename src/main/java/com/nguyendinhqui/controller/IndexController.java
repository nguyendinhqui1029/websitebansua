package com.nguyendinhqui.controller;

import java.nio.channels.FileChannel.MapMode;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class IndexController {
	
	@RequestMapping(value="/", method= RequestMethod.GET)
	public String Index() {
		return "index";
	}
	
}
