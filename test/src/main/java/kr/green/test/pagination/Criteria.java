package kr.green.test.pagination;

public class Criteria {
	private int page; //현재 페이지가 몇 페이지인지
	private int perPageNum; //한 페이지의 게시글 개수
	private String search;
	private int type;	//검색 타입
	public int getPage() {
		return page;
	}
	public void setPage(int page) {
		//setPage 수정
		if(page <= 0)
			this.page=1;
		else
			this.page = page;
	}
	public int getPerPageNum() {
		return perPageNum;
	}
	public void setPerPageNum(int perPageNum) {
		//setPerPageNum 수정 (최소 10개 기준)
		if(perPageNum < 10)
			this.perPageNum = 10;
		else
			this.perPageNum = perPageNum;
	}
	public String getSearch() {
		return search;
	}
	public void setSearch(String search) {
		this.search = search;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		// setType 수정
		if(type < 0 || type > 3)
			this.type = 0;
		else
			this.type = type;
		//**위에 조건문 한줄로 가능** this.type = (type < 0 || type > 3) ? 1 : type;
	}
	//getter 추가
	public int getStartPage() {
		return (page - 1) * perPageNum;
	}
	@Override
	public String toString() {
		return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", search=" + search + ", type=" + type + "]";
	}
	//생성자 추가
	public Criteria() {
		page = 1;
		perPageNum = 10;
		search = "";
		type = 0; //생략가능(int는 기본 초기값이 0이기 때문에)
	}
}


