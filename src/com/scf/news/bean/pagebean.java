package com.scf.news.bean;

import java.util.List;

public class pagebean {
	private int curPage; //表示当前页数
	private int pageSize; //表示每页数据条数
	private long totalSize; //表示总数据条数
	private long totalPage; // 表示总页数
	private List<Document> list;// 表示每页的list集合
	public int getCurPage() {
		return curPage;
	}
	public void setCurPage(int curPage) {
		this.curPage = curPage;
	}
	public int getPageSize() {
		return pageSize;
	}
	public void setPageSize(int pageSize) {
		this.pageSize = pageSize;
	}
	public long getTotalSize() {
		return totalSize;
	}
	public void setTotalSize(long totalSize) {
		this.totalSize = totalSize;
	}
	public long getTotalPage() {
		return totalPage;
	}
	public void setTotalPage(long totalPage) {
		this.totalPage = totalPage;
	}
	public List<Document> getList() {
		return list;
	}
	public void setList(List<Document> list) {
		this.list = list;
	}
	
}
