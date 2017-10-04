package cn.me.domain;

import java.util.ArrayList;
import java.util.List;

public class PageBean<T> {
	private int currentPage;
	private int pageSize;
	private int countPage;
	private List<T> objList = new ArrayList<T>();
	public int getCurrentPage() {
		return currentPage;
	}
	public void setCurrentPage(int currentPage) {
		this.currentPage = currentPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public int getCountPage() {
		return countPage;
	}
	public void setCountPage(int countPage) {
		this.countPage = countPage;
	}
	public List<T> getObjList() {
		return objList;
	}
	public void setObjList(List<T> objList) {
		this.objList = objList;
	}
	
}
