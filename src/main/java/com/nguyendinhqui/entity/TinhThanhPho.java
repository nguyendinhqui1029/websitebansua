package com.nguyendinhqui.entity;

import java.io.Serializable;
import java.util.ArrayList;

public class TinhThanhPho implements Serializable{
	private String maTP;
	private String tenTP;
	private ArrayList<QuanHuyen> arrQuanHuyen;
	public ArrayList<QuanHuyen> getArrQuanHuyen() {
		return arrQuanHuyen;
	}
	public void setArrQuanHuyen(ArrayList<QuanHuyen> arrQuanHuyen) {
		this.arrQuanHuyen = arrQuanHuyen;
	}
	public String getMaTP() {
		return maTP;
	}
	public void setMaTP(String maTP) {
		this.maTP = maTP;
	}
	public String getTenTP() {
		return tenTP;
	}
	public void setTenTP(String tenTP) {
		this.tenTP = tenTP;
	}
	public TinhThanhPho(String maTP, String tenTP, ArrayList<QuanHuyen> arrQuanHuyen) {
		super();
		this.maTP = maTP;
		this.tenTP = tenTP;
		this.arrQuanHuyen = arrQuanHuyen;
	}
	public TinhThanhPho(String maTP, String tenTP) {
		super();
		this.maTP = maTP;
		this.tenTP = tenTP;
		
	}
	public TinhThanhPho() {
		super();
		// TODO Auto-generated constructor stub
	}

	
}
