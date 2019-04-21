package com.nguyendinhqui.controller;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller

@RequestMapping("dangnhap")

public class TaiKhoanController {
	@RequestMapping(value="dang-nhap", method= RequestMethod.GET)
	public String DangNhap(ModelMap model) {
		String tieude ="Đăng nhập";
		model.addAttribute("tieude",tieude);
		return "/pages/dangnhap";
	}
	
	@RequestMapping(value="dang-ki", method= RequestMethod.GET)
	public String DangKi(ModelMap model) {
		String tieude ="Đăng kí";
		model.addAttribute("tieude",tieude);
		return "/pages/dangki";
	}
}
