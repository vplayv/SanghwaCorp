package com.dbinc.sanghwa.faq;

public class Pagination {
	private int page; // 현재 페이지 -
	private int range; // 각 페이지 범위 시작 번호 -1
	private int listCnt; // 전체 개시물의 개수 -설정 완료(16)
	private int pageCnt; // 전체 페이지 범위의 개수
	private int listSize = 7; // 한 페이지당 보여질 리스트의 개수
	private int rangeSize = 5; // 한 페이지 범위에 보여질 페이지의 개수
	private int startPage; // 각 페이지 범위 시작 번호
	private int endPage; // 각 페이지 범위 끝 번호
	private boolean prev;
	private boolean next;
	private int startList;

	public int getPageCnt() {
		return pageCnt;
	}

	public void setPageCnt(int pageCnt) {
		this.pageCnt = pageCnt;
	}

	public int getRangeSize() {
		return rangeSize;
	}

	public int getPage() {
		return page;
	}

	public void setPage(int page) {
		this.page = page;
	}

	public int getRange() {
		return range;
	}

	public void setRange(int range) {
		this.range = range;
	}

	public int getStartPage() {
		return startPage;
	}

	public void setStartPage(int startPage) {
		this.startPage = startPage;
	}

	public int getEndPage() {
		return endPage;
	}

	public void setEndPage(int endPage) {
		this.endPage = endPage;
	}

	public boolean isPrev() {
		return prev;
	}

	public void setPrev(boolean prev) {
		this.prev = prev;
	}

	public boolean isNext() {
		return next;
	}

	public void setNext(boolean next) {
		this.next = next;
	}

	public int getListSize() {
		return listSize;
	}

	public void setListSize(int listSize) {
		this.listSize = listSize;
	}

	public int getListCnt() {
		return listCnt;
	}

	public void setListCnt(int listCnt) {
		this.listCnt = listCnt;
	}

	public int getStartList() {
		return startList;
	}

	public void pageInfo(int page, int listCnt) {
		this.page = page;
		range = (int) ((page - 1) / rangeSize) + 1;
		System.out.println("range:" + range);
		this.pageCnt = (int) Math.ceil(listCnt * 1.0 / listSize);
		this.startPage = (range - 1) * rangeSize + 1;
		System.out.println("startPage:" + startPage);
		this.endPage = range * rangeSize;
		System.out.println("endPage:" + endPage);
		this.startList = (page - 1) * listSize;
		this.prev = range == 1 ? false : true;
		this.next = endPage > pageCnt ? false : true;
		if (this.endPage > this.pageCnt) {
			this.endPage = this.pageCnt;
			this.next = false;
		}
	}
}
