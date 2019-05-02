package com.nguyendinhqui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class QuanTriController {

	@RequestMapping(value="quan-tri", method = RequestMethod.GET)
	public String QuanTri(ModelMap model) {
		String tieude ="Đăng nhập";
		model.addAttribute("tieude",tieude);
		model.addAttribute("dsloaisanpham",IndexController.layDanhSachLoaiSanPham());
		return "/pages/quan-tri";
	}
}
