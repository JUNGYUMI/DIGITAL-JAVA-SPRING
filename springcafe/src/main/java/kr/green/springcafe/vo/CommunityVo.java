package kr.green.springcafe.vo;

public class CommunityVo {
	private int com_num;
	private String com_title;
	private String com_date;
	private String com_writer;
	private String com_content;
	private String mem_id;
	private String com_reply;
	private String com_type;
	private int com_views;
	
	
	
	public int getCom_views() {
		return com_views;
	}
	public void setCom_views(int com_views) {
		this.com_views = com_views;
	}
	public int getCom_num() {
		return com_num;
	}
	public void setCom_num(int com_num) {
		this.com_num = com_num;
	}
	public String getCom_title() {
		return com_title;
	}
	public void setCom_title(String com_title) {
		this.com_title = com_title;
	}
	public String getCom_date() {
		return com_date;
	}
	public void setCom_date(String com_date) {
		this.com_date = com_date;
	}
	public String getCom_writer() {
		return com_writer;
	}
	public void setCom_writer(String com_writer) {
		this.com_writer = com_writer;
	}
	public String getCom_content() {
		return com_content;
	}
	public void setCom_content(String com_content) {
		this.com_content = com_content;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getCom_reply() {
		return com_reply;
	}
	public void setCom_reply(String com_reply) {
		this.com_reply = com_reply;
	}
	public String getCom_type() {
		return com_type;
	}
	public void setCom_type(String com_type) {
		this.com_type = com_type;
	}
	
	@Override
	public String toString() {
		return "CommunityVo [com_num=" + com_num + ", com_title=" + com_title + ", com_date=" + com_date
				+ ", com_writer=" + com_writer + ", com_content=" + com_content + ", mem_id=" + mem_id + ", com_reply="
				+ com_reply + ", com_type=" + com_type + "]";
	}
	
	
}
