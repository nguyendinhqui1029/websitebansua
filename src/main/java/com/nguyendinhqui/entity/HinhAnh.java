package com.nguyendinhqui.entity;

public class HinhAnh {
	private String maHinhAnh;
	private String maSP;
	private String tenHinh;
	private String moTa;
	public String getMaHinhAnh() {
		return maHinhAnh;
	}
	public void setMaHinhAnh(String maHinhAnh) {
		this.maHinhAnh = maHinhAnh;
	}
	public String getMaSP() {
		return maSP;
	}
	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	public String getTenHinh() {
		return tenHinh;
	}
	public void setTenHinh(String tenHinh) {
		this.tenHinh = tenHinh;
	}
	public String getMoTa() {
		return moTa;
	}
	public void setMoTa(String moTa) {
		this.moTa = moTa;
	}
	public HinhAnh(String maHinhAnh, String maSP, String tenHinh, String moTa) {
		super();
		this.maHinhAnh = maHinhAnh;
		this.maSP = maSP;
		this.tenHinh = tenHinh;
		this.moTa = moTa;
	}
	public HinhAnh() {
		// TODO Auto-generated constructor stub
	}
	
}
