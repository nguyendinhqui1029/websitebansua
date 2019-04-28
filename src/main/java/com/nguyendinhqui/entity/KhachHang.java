package com.nguyendinhqui.entity;

public class KhachHang {
private String maKH;
private String tenKH;
private String ngaySinh;
private String quanHuyen;
private String tinhTP;
private String diaChi;
private String dienThoai;
private String email;
private String gioiTinh;
public String getMaKH() {
	return maKH;
}
public void setMaKH(String maKH) {
	this.maKH = maKH;
}
public String getTenKH() {
	return tenKH;
}
public void setTenKH(String tenKH) {
	this.tenKH = tenKH;
}
public String getNgaySinh() {
	return ngaySinh;
}
public void setNgaySinh(String ngaySinh) {
	this.ngaySinh = ngaySinh;
}
public String getQuanHuyen() {
	return quanHuyen;
}
public void setQuanHuyen(String quanHuyen) {
	this.quanHuyen = quanHuyen;
}
public String getTinhTP() {
	return tinhTP;
}
public void setTinhTP(String tinhTP) {
	this.tinhTP = tinhTP;
}
public String getDiaChi() {
	return diaChi;
}
public void setDiaChi(String diaChi) {
	this.diaChi = diaChi;
}
public String getDienThoai() {
	return dienThoai;
}
public void setDienThoai(String dienThoai) {
	this.dienThoai = dienThoai;
}
public String getEmail() {
	return email;
}
public void setEmail(String email) {
	this.email = email;
}
public String getGioiTinh() {
	return gioiTinh;
}
public void setGioiTinh(String gioiTinh) {
	this.gioiTinh = gioiTinh;
}
public KhachHang(String maKH, String tenKH, String ngaySinh, String quanHuyen, String tinhTP, String diaChi,
		String dienThoai, String email, String gioiTinh) {
	super();
	this.maKH = maKH;
	this.tenKH = tenKH;
	this.ngaySinh = ngaySinh;
	this.quanHuyen = quanHuyen;
	this.tinhTP = tinhTP;
	this.diaChi = diaChi;
	this.dienThoai = dienThoai;
	this.email = email;
	this.gioiTinh = gioiTinh;
}
public KhachHang() {
	// TODO Auto-generated constructor stub
}

}
