package com.nguyendinhqui.interfaces;

import java.util.ArrayList;

public interface ObjectInterface {
	public int ThemObject(Object ob);
	public int XoaObject(String maObject);
	public int SuaObject(Object ob );
	public Object LayObjectTheoMa(String maObject);
	public ArrayList<Object> LayDanhSachObject();
}
