package com.nguyendinhqui.controller;

import java.nio.channels.FileChannel.MapMode;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.nguyendinhqui.entity.LoaiSanPham;
import com.nguyendinhqui.model.ConnectDatabase;

@Controller
public class IndexController {
	
	
	@RequestMapping(value= {"/","index"}, method= RequestMethod.GET)
	public String Index(ModelMap model) {
		model.addAttribute("dsloaisanpham",layDanhSachLoaiSanPham());
		return "/pages/index";
	}
	
	public static ArrayList<LoaiSanPham> layDanhSachLoaiSanPham(){
		String sql ="SELECT * FROM LOAISANPHAM WHERE trangThai=?";
		ArrayList<LoaiSanPham> dsLoaiSanPham = new ArrayList<LoaiSanPham>();
		Vector vt = new Vector();
		vt.add(true);
		ResultSet rs=ConnectDatabase.SelectWhere(sql,vt);
		try {
			while (rs.next()) {
				dsLoaiSanPham.add(new LoaiSanPham(rs.getString(1), rs.getString(2), rs.getBoolean(3)));
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return dsLoaiSanPham;
	}
}
