package com.nguyendinhqui.controller;

import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.Vector;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;


import com.nguyendinhqui.entity.QuanHuyen;
import com.nguyendinhqui.entity.TaiKhoan;
import com.nguyendinhqui.entity.TinhThanhPho;
import com.nguyendinhqui.model.ConnectDatabase;

@Controller
public class TaiKhoanController {
	List<TinhThanhPho> dsTinhThanhPho;
	
	//Đăng nhập
	@RequestMapping(value="dang-nhap", method= RequestMethod.GET)
	public String DangNhap(ModelMap model) {
		String tieude ="Đăng nhập";
		model.addAttribute("tieude",tieude);
		model.addAttribute("taikhoan",new TaiKhoan());
		return "/pages/dangnhap";
	}
	
	@RequestMapping(value="dang-nhap", method= RequestMethod.POST)
	public String DangNhap(@ModelAttribute(name="TaiKhoan") TaiKhoan tk, ModelMap model,HttpSession session) {
		String tieude ="Đăng nhập";
		model.addAttribute("tieude",tieude);
		String sql ="SELECT * FROM TAIKHOAN WHERE tenTK=?";
		Vector vt = new Vector();
		vt.add(tk.getTenTaiKhoan());
		try {
			ResultSet rs =ConnectDatabase.SelectWhere(sql, vt);
			
			if(rs.next()) {
					if(rs.getString("matKhau").equalsIgnoreCase(getMD5(tk.getMatKhau()))) {
						session.setAttribute("tentaikhoan", rs.getString("tenTK"));
						session.setAttribute("loaitaikhoan", rs.getString("loaiTK"));
						return "/pages/index";
					}else {
						tk.setMatKhau("");
						model.addAttribute("taikhoan",tk);
						model.addAttribute("code","Mật khẩu không đúng. Vui lòng kiểm tra lại.");
						return "/pages/dangnhap";
					}
				
			}else {
				model.addAttribute("taikhoan",new TaiKhoan());
				model.addAttribute("code","Tên tài khoản không đúng. Vui lòng kiểm tra lại.");
				return "/pages/dangnhap";
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return "/pages/index";
	}
	//End Đăng nhập
	
	//Đăng xuất
	@RequestMapping(value="dang-xuat",method= RequestMethod.GET)
	public String DangXuat(HttpSession session,ModelMap model) {
		session.removeAttribute("tentaikhoan");
		session.removeAttribute("loaitaikhoan");
		model.addAttribute("taikhoan",new TaiKhoan());
		return "/pages/dangnhap";
	}
	//End đăng xuất
	
	//Quên mât khẩu
	@RequestMapping(value="quen-mat-khau",method = RequestMethod.GET)
	public String QuenMatKhau(ModelMap model) {
		String tieude ="Quên mật khẩu";
		return "/pages/quen_mat_khau";
	}
	//End Quên mật khẩu
	
	//Hiện thị view đăng kí
	@RequestMapping(value="dang-ki", method= RequestMethod.GET, produces = "text/plain;charset=UTF-8")
	public String DangKi(ModelMap model) {
		dsTinhThanhPho = new ArrayList<TinhThanhPho>();
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
		model.addAttribute("TaiKhoan", new TaiKhoan());
		model.addAttribute("dsquan",dsTinhThanhPho.get(0).getArrQuanHuyen());
		return "/pages/dangki";
		
	} 
	         
	 //Lưu thông tin đăng kí       
	@RequestMapping(value="dang-ki", method= RequestMethod.POST,produces = "text/plain;charset=UTF-8")
	public String DangKi(@ModelAttribute(name="TaiKhoan") TaiKhoan tk, ModelMap model) {
		String tieude ="Đăng kí";
		String sqlKhachHang ="INSERT INTO KHACHHANG VALUES(?,?,?,?,?,?,?,?,?)";
		String sqlTaiKhoan ="INSERT INTO TAIKHOAN VALUES(?,?,?,?,?,?)";
		Vector vtKhachHang = new Vector();
		String maKH = ("KH"+(int)(System.currentTimeMillis() & 0xfffffff)).substring(0, 10);
		vtKhachHang.add(maKH);
		vtKhachHang.add(tk.getHoTen());
		vtKhachHang.add(tk.getNgaySinh());
		vtKhachHang.add(tk.getQuanHuyen());
		vtKhachHang.add(tk.getTinhThanhPho());
		vtKhachHang.add(tk.getDiaChi());
		vtKhachHang.add(tk.getSoDienThoai());
		vtKhachHang.add(tk.getEmail());
		vtKhachHang.add(tk.getGioiTinh());
		if(ConnectDatabase.Insert(sqlKhachHang, vtKhachHang)>0) {
			Vector vtTaiKhoan = new Vector();
			String maTK =   ("TK"+(int)(System.currentTimeMillis() & 0xfffffff)).substring(0, 10);
			vtTaiKhoan.add(maTK);
			vtTaiKhoan.add(tk.getTenTaiKhoan());
			vtTaiKhoan.add(TaiKhoanController.getMD5(tk.getMatKhau()));
			vtTaiKhoan.add("Admin");
			vtTaiKhoan.add(maKH);
			vtTaiKhoan.add(0);
			if(ConnectDatabase.Insert(sqlTaiKhoan, vtTaiKhoan)>0) {
				model.addAttribute("code",1);
			}else {
				model.addAttribute("code",0);
			}
		}
		model.addAttribute("tieude",tieude);
		model.addAttribute("ds",dsTinhThanhPho);
		model.addAttribute("dsquan",dsTinhThanhPho.get(0).getArrQuanHuyen());
		return "/pages/dangki";
	}
	
	//aja lấy danh sách quận huyện theo thành phố
	@RequestMapping(value ="change-tp", method = RequestMethod.POST, produces = "text/plain;charset=UTF-8")
	public @ResponseBody String loadQuanHuyen(HttpServletRequest request) {
		String tpho = request.getParameter("thanhpho");
		String html ="";
		for (TinhThanhPho tp : dsTinhThanhPho) {
			if(tp.getMaTP().trim().equalsIgnoreCase(tpho.trim()))
			{
				for (QuanHuyen qh : tp.getArrQuanHuyen()) {
					html +="<option value='"+qh.getMaQuanHuyen()+"'>"+qh.getTenQuanHuyen()+"</option>";
				}
				
			}
		}
		return html;
	} 
	
	
	//Mã hóa mật khẩu md5
	public static String getMD5(String input) {
	    try {
	      MessageDigest md = MessageDigest.getInstance("MD5");
	      byte[] messageDigest = md.digest(input.getBytes());
	      return convertByteToHex(messageDigest);
	    } catch (NoSuchAlgorithmException e) {
	      throw new RuntimeException(e);
	    }
	  }
	public static String convertByteToHex(byte[] data) {
	    StringBuffer sb = new StringBuffer();
	    for (int i = 0; i < data.length; i++) {
	      sb.append(Integer.toString((data[i] & 0xff) + 0x100, 16).substring(1));
	    }
	    return sb.toString();
	  }
	//Send Eamil
	
}
