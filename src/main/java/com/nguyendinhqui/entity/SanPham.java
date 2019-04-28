package com.nguyendinhqui.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class SanPham implements Serializable{
	private String maSP;
	private String tenSP;
	private double giaCu;
	private double giaMoi;
	private String noiDungTomTat;
	private String noiDungChiTiet;
	private ArrayList<HinhAnh> hinhAnh = new ArrayList<HinhAnh>();
	private String trangThai;
	public String getMaSP() {
		return maSP;
	}
	public void setMaSP(String maSP) {
		this.maSP = maSP;
	}
	public String getTenSP() {
		return tenSP;
	}
	public void setTenSP(String tenSP) {
		this.tenSP = tenSP;
	}
	public double getGiaCu() {
		return giaCu;
	}
	public void setGiaCu(double giaCu) {
		this.giaCu = giaCu;
	}
	public double getGiaMoi() {
		return giaMoi;
	}
	public void setGiaMoi(double giaMoi) {
		this.giaMoi = giaMoi;
	}
	public String getNoiDungTomTat() {
		return noiDungTomTat;
	}
	public void setNoiDungTomTat(String noiDungTomTat) {
		this.noiDungTomTat = noiDungTomTat;
	}
	public String getNoiDungChiTiet() {
		return noiDungChiTiet;
	}
	public void setNoiDungChiTiet(String noiDungChiTiet) {
		this.noiDungChiTiet = noiDungChiTiet;
	}
	public ArrayList<HinhAnh> getHinhAnh() {
		return hinhAnh;
	}
	public void setHinhAnh(ArrayList<HinhAnh> hinhAnh) {
		this.hinhAnh = hinhAnh;
	}
	public String getTrangThai() {
		return trangThai;
	}
	public void setTrangThai(String trangThai) {
		this.trangThai = trangThai;
	}
	public SanPham(String maSP, String tenSP, double giaCu, double giaMoi, String noiDungTomTat, String noiDungChiTiet,
			ArrayList<HinhAnh> hinhAnh, String trangThai) {
		super();
		this.maSP = maSP;
		this.tenSP = tenSP;
		this.giaCu = giaCu;
		this.giaMoi = giaMoi;
		this.noiDungTomTat = noiDungTomTat;
		this.noiDungChiTiet = noiDungChiTiet;
		this.hinhAnh = hinhAnh;
		this.trangThai = trangThai;
	}
	public SanPham() {
		// TODO Auto-generated constructor stub
	}
	
}
