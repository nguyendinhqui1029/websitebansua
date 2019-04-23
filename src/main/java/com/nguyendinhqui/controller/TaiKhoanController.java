package com.nguyendinhqui.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import org.springframework.stereotype.Controller;

import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nguyendinhqui.entity.QuanHuyen;
import com.nguyendinhqui.entity.TinhThanhPho;
import com.nguyendinhqui.model.ConnectDatabase;

@Controller
public class TaiKhoanController {
	
	@RequestMapping(value="dang-nhap", method= RequestMethod.GET)
	public String DangNhap(ModelMap model) {
		String tieude ="Đăng nhập";
		model.addAttribute("tieude",tieude);
		return "/pages/dangnhap";
	}
	
	@RequestMapping(value="dang-ki", method= RequestMethod.GET)
	public String DangKi(ModelMap model) {
		List<TinhThanhPho> dsTinhThanhPho = new ArrayList<TinhThanhPho>();
		String tieude ="Đăng kí";
		String sqlQuanHuyen = "SELECT * FROM QUANHUYEN WHERE maTP = ?";
		String sqlTinhThanhPho ="SELECT * FROM TINHTHANHPHO";
		ResultSet rsTinhThanhPho = ConnectDatabase.Select(sqlTinhThanhPho);
		try {
			List<TinhThanhPho> arrTinhThanhPhoTam = new ArrayList<TinhThanhPho>();
			while (rsTinhThanhPho.next()) {
				arrTinhThanhPhoTam.add(new TinhThanhPho(rsTinhThanhPho.getString(1), rsTinhThanhPho.getString(2)));
			}
			
			for(TinhThanhPho tp : arrTinhThanhPhoTam){
				ArrayList<QuanHuyen> arrQuanHuyenTam = new ArrayList<QuanHuyen>();
				Vector vt = new Vector();
				vt.add(tp.getMaTP());
				ResultSet rsQuanHuyen= ConnectDatabase.SelectWhere(sqlQuanHuyen,vt);
				while (rsQuanHuyen.next()) {
					arrQuanHuyenTam.add(new QuanHuyen(rsQuanHuyen.getString(1), rsQuanHuyen.getString(2), rsQuanHuyen.getString(3)));
				}
				
				dsTinhThanhPho.add(new TinhThanhPho(tp.getMaTP(), tp.getTenTP(), arrQuanHuyenTam));
			}
			
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		model.addAttribute("tieude",tieude);
		model.addAttribute("ds",dsTinhThanhPho);
		return "/pages/dangki";
		
	}
}
