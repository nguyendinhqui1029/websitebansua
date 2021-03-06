package com.nguyendinhqui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class TinTucController {
	
	@RequestMapping(value="tin-tuc", method = RequestMethod.GET)
	public String DanhSachTinTuc(ModelMap model) {
		String tieude ="Tin tức";
		model.addAttribute("tieude",tieude);
		model.addAttribute("dsloaisanpham",IndexController.layDanhSachLoaiSanPham());
		return "/pages/tintuc";
	}
	@RequestMapping(value="chi-tiet-tin-tuc/{id}", method = RequestMethod.GET)
	public String ChiTietTinTuc(ModelMap model) {
		String tieude ="Chi tiết tin tức";
		model.addAttribute("tieude",tieude);
		model.addAttribute("dsloaisanpham",IndexController.layDanhSachLoaiSanPham());
		return "/pages/chi-tiet-tin-tuc";
	}
}
