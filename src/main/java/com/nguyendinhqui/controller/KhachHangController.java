package com.nguyendinhqui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class KhachHangController {
	@RequestMapping(value="thong-tin-khach-hang", method = RequestMethod.GET)
	public String QuanTri(ModelMap model) {
		String tieude ="Đăng nhập";
		model.addAttribute("tieude",tieude);
		return "/pages/thong-tin-khach-hang";
	}
}
