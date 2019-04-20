package com.nguyendinhqui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping("dangnhap")
public class TaiKhoanController {

	@RequestMapping(value="dangnhap", method= RequestMethod.GET)
	
	public String DangNhap() {
		return "dangnhap";
	}
}
