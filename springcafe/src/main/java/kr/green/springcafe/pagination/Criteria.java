package kr.green.springcafe.pagination;

public class Criteria {
		
		private int page;  
		private int perPageNum;
		private String search;
		private int type;
		
		public Criteria() {
			this.page = 1;
			this.perPageNum = 1;
			this.search = "";
			this.type = 0;
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
			this.type = type;
		}

		public int getPage() {
			return page;
		}
		public void setPage(int page) {
			
			if(page <= 0) {
				this.page = 1;
			}
			else
				this.page = page;
		}
		public int getPerPageNum() {
			return perPageNum;
		}
		public void setPerPageNum(int perPageNum) {
			
			if(perPageNum < 1) 
				this.perPageNum = 10;
				this.perPageNum = perPageNum;
		}
		@Override
		public String toString() {
			return "Criteria [page=" + page + ", perPageNum=" + perPageNum + ", search=" + search + ", type=" + type
					+ "]";
		}

		public int getPageStart() {
			return (this.page -1) * perPageNum;
		}
}
