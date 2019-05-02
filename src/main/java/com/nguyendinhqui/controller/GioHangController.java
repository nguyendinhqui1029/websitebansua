package com.nguyendinhqui.controller;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class GioHangController {

	//Giỏ hàng
	@RequestMapping(value="gio-hang", method=RequestMethod.GET)
	public String GioHang(ModelMap model) {
		String tieude ="Giỏ hàng";
		model.addAttribute("tieude",tieude);
		model.addAttribute("dsloaisanpham",IndexController.layDanhSachLoaiSanPham());
		return "/pages/gio_hang";
	}
	//Kiểm tra đơn hàng
	@RequestMapping(value="kiem-tra-don-hang", method=RequestMethod.GET)
	public String KiemTraDonHang(ModelMap model) {
		String tieude ="Kiểm tra đơn hàng";
		model.addAttribute("tieude",tieude);
		model.addAttribute("dsloaisanpham",IndexController.layDanhSachLoaiSanPham());
		return "/pages/don_hang";
	}
	
}
