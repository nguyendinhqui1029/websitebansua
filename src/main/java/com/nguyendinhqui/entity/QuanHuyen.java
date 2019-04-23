package com.nguyendinhqui.entity;

import java.io.Serializable;

public class QuanHuyen implements Serializable {
	private String maQuanHuyen;
	private String tenQuanHuyen;
	private String maTinhThanhPho;
	public String getMaQuanHuyen() {
		return maQuanHuyen;
	}
	public void setMaQuanHuyen(String maQuanHuyen) {
		this.maQuanHuyen = maQuanHuyen;
	}
	public String getTenQuanHuyen() {
		return tenQuanHuyen;
	}
	public void setTenQuanHuyen(String tenQuanHuyen) {
		this.tenQuanHuyen = tenQuanHuyen;
	}
	public String getMaTinhThanhPho() {
		return maTinhThanhPho;
	}
	public void setMaTinhThanhPho(String maTinhThanhPho) {
		this.maTinhThanhPho = maTinhThanhPho;
	}
	public QuanHuyen(String maQuanHuyen, String tenQuanHuyen, String maTinhThanhPho) {
		super();
		this.maQuanHuyen = maQuanHuyen;
		this.tenQuanHuyen = tenQuanHuyen;
		this.maTinhThanhPho = maTinhThanhPho;
	}
	public QuanHuyen() {
		super();
		// TODO Auto-generated constructor stub
	}
	
}
