package kr.green.springcafe.vo;

public class OrderlistVo {
	private int ol_num;
	private int ol_amount;
	private int ol_or_num;
	private String ol_pro_code;
	
	public int getOl_num() {
		return ol_num;
	}
	public void setOl_num(int ol_num) {
		this.ol_num = ol_num;
	}
	public int getOl_amount() {
		return ol_amount;
	}
	public void setOl_amount(int ol_amount) {
		this.ol_amount = ol_amount;
	}
	public int getOl_or_num() {
		return ol_or_num;
	}
	public void setOl_or_num(int ol_or_num) {
		this.ol_or_num = ol_or_num;
	}
	public String getOl_pro_code() {
		return ol_pro_code;
	}
	public void setOl_pro_code(String ol_pro_code) {
		this.ol_pro_code = ol_pro_code;
	}
	
	@Override
	public String toString() {
		return "OrderlistVo [ol_num=" + ol_num + ", ol_amount=" + ol_amount + ", ol_or_num=" + ol_or_num
				+ ", ol_pro_code=" + ol_pro_code + "]";
	}
	
}

