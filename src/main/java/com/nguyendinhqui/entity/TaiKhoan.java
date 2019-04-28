package com.nguyendinhqui.entity;

import java.io.Serializable;

public class TaiKhoan implements Serializable {
 private String tenTaiKhoan;
 private String email;
 private String matKhau;
 private String hoTen;
 private String gioiTinh;
 private String ngaySinh;
 private String soDienThoai;
 private String diaChi;
 private String tinhThanhPho;
 private String quanHuyen;
 private int diemTichLuy;
public int getDiemTichLuy() {
	return diemTichLuy;
}
public void setDiemTichLuy(int diemTichLuy) {
	this.diemTichLuy = diemTichLuy;
}
public String getTenTaiKhoan() {
	return tenTaiKhoan;
}
public void setTenTaiKhoan(String tenTaiKhoan) {
	this.tenTaiKhoan = tenTaiKhoan;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getMatKhau() {
	return matKhau;
}
public void setMatKhau(String matKhau) {
	this.matKhau = matKhau;
}
public String getHoTen() {
	return hoTen;
}
public void setHoTen(String hoTen) {
	this.hoTen = hoTen;
}
public String getGioiTinh() {
	return gioiTinh;
}
public void setGioiTinh(String gioiTinh) {
	this.gioiTinh = gioiTinh;
}
public String getNgaySinh() {
	return ngaySinh;
}
public void setNgaySinh(String ngaySinh) {
	this.ngaySinh = ngaySinh;
}
public String getSoDienThoai() {
	return soDienThoai;
}
public void setSoDienThoai(String soDienThoai) {
	this.soDienThoai = soDienThoai;
}
public String getDiaChi() {
	return diaChi;
}
public void setDiaChi(String diaChi) {
	this.diaChi = diaChi;
}
public String getTinhThanhPho() {
	return tinhThanhPho;
}
public void setTinhThanhPho(String tinhThanhPho) {
	this.tinhThanhPho = tinhThanhPho;
}
public String getQuanHuyen() {
	return quanHuyen;
}
public void setQuanHuyen(String quanHuyen) {
	this.quanHuyen = quanHuyen;
}
public TaiKhoan(String tenTaiKhoan, String email, String matKhau, String hoTen, String gioiTinh, String ngaySinh,
		String soDienThoai, String diaChi, String tinhThanhPho, String quanHuyen, int diemTichLuy) {
	super();
	this.tenTaiKhoan = tenTaiKhoan;
	this.email = email;
	this.matKhau = matKhau;
	this.hoTen = hoTen;
	this.gioiTinh = gioiTinh;
	this.ngaySinh = ngaySinh;
	this.soDienThoai = soDienThoai;
	this.diaChi = diaChi;
	this.tinhThanhPho = tinhThanhPho;
	this.quanHuyen = quanHuyen;
	this.diemTichLuy = diemTichLuy;
}
public TaiKhoan() {
	// TODO Auto-generated constructor stub
}

 
}
