package com.nguyendinhqui.controller;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.Vector;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.nguyendinhqui.model.ConnectDatabase;
import com.nguyendinhqui.entity.HinhAnh;
import com.nguyendinhqui.entity.SanPham;
@Controller
public class SanPhamController {
	
	@RequestMapping(value="{id}", method= RequestMethod.GET)
	public String SanPham(@PathVariable("id") String id,ModelMap model) {
		String sql ="SELECT * FROM SANPHAM WHERE maLSP=?";
		Vector vt = new Vector();
		vt.add(id);
		ResultSet rs =ConnectDatabase.SelectWhere(sql, vt);
		ArrayList<SanPham> dssanpham = new ArrayList<SanPham>();
		try {
			while(rs.next())
			{
				ArrayList<HinhAnh> hinhAnh = new ArrayList<HinhAnh>();
				String sqlhinh ="SELECT * FROM HINHANH WHERE maSP=?";
				Vector vthinh = new Vector();
				vthinh.add(rs.getString("maSP"));
				ResultSet rsHinhAnh = ConnectDatabase.SelectWhere(sqlhinh, vthinh);
				while(rsHinhAnh.next()) {
					System.out.println(rs.getString(2));
					hinhAnh.add(new HinhAnh(rsHinhAnh.getString(1), rsHinhAnh.getString(2), rsHinhAnh.getString(3), rsHinhAnh.getString(4)));
				}
					dssanpham.add(new SanPham(rs.getString("maSP"),rs.getString("tenSP"), rs.getFloat("giaSP"), rs.getFloat("giaMoi"), rs.getString("moTaTomTat"), rs.getString("moTaChiTiet"), hinhAnh, String.valueOf(rs.getInt("trangThai"))));
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		model.addAttribute("dsloaisanpham",IndexController.layDanhSachLoaiSanPham());
		model.addAttribute("dssanpham",dssanpham);
		return "/pages/san_pham";
	}
	
	@RequestMapping(value="chi-tiet-san-pham/{id}", method= RequestMethod.GET)
	public String ChiTietSanPham(@PathVariable("id") String id,ModelMap model) {
		model.addAttribute("dsloaisanpham",IndexController.layDanhSachLoaiSanPham());
		return "/pages/chi-tiet-san-pham";
	}
}
