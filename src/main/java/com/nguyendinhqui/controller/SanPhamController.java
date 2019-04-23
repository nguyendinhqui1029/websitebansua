package com.nguyendinhqui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class SanPhamController {
	@RequestMapping(value="san-pham", method= RequestMethod.GET)
	public String SanPham(ModelMap model) {
		return "/pages/san_pham";
	}
	
	@RequestMapping(value="chi-tiet-san-pham/{id}", method= RequestMethod.GET)
	public String ChiTietSanPham(@PathVariable("id") String id,ModelMap model) {
		return "/pages/chi-tiet-san-pham";
	}
}
