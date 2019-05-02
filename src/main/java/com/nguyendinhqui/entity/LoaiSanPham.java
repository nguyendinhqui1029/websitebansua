package com.nguyendinhqui.entity;

public class LoaiSanPham {
	private String maLSP;
	private String tenLSP;
	private boolean trangThai;
	public String getMaLSP() {
		return maLSP;
	}
	public void setMaLSP(String maLSP) {
		this.maLSP = maLSP;
	}
	public String getTenLSP() {
		return tenLSP;
	}
	public void setTenLSP(String tenLSP) {
		this.tenLSP = tenLSP;
	}
	public boolean isTrangThai() {
		return trangThai;
	}
	public void setTrangThai(boolean trangThai) {
		this.trangThai = trangThai;
	}
	public LoaiSanPham(String maLSP, String tenLSP, boolean trangThai) {
		super();
		this.maLSP = maLSP;
		this.tenLSP = tenLSP;
		this.trangThai = trangThai;
	}
	public LoaiSanPham() {
		// TODO Auto-generated constructor stub
	}
	
}
