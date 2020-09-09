package kr.green.springcafe.vo;

public class ProductVo {
	private String pro_code;
	private String pro_name;
	private int pro_price;
	private String pro_type;
	
	public String getPro_code() {
		return pro_code;
	}
	public void setPro_code(String pro_code) {
		this.pro_code = pro_code;
	}
	public String getPro_name() {
		return pro_name;
	}
	public void setPro_name(String pro_name) {
		this.pro_name = pro_name;
	}
	public int getPro_price() {
		return pro_price;
	}
	public void setPro_price(int pro_price) {
		this.pro_price = pro_price;
	}
	public String getPro_type() {
		return pro_type;
	}
	public void setPro_type(String pro_type) {
		this.pro_type = pro_type;
	}
	
	@Override
	public String toString() {
		return "ProductVo [pro_code=" + pro_code + ", pro_name=" + pro_name + ", pro_price=" + pro_price + ", pro_type="
				+ pro_type + "]";
	}
	
}
