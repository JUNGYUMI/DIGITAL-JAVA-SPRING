package kr.green.springcafe.vo;

public class MembershipVo {
	private int ship_num;
	private String ship_location;
	private String ship_store_shape;
	private String ship_possession;
	private String ship_age;
	private String ship_name;
	private String ship_phone;
	
	public int getShip_num() {
		return ship_num;
	}
	public void setShip_num(int ship_num) {
		this.ship_num = ship_num;
	}
	public String getShip_location() {
		return ship_location;
	}
	public void setShip_location(String ship_location) {
		this.ship_location = ship_location;
	}
	public String getShip_store_shape() {
		return ship_store_shape;
	}
	public void setShip_store_shape(String ship_store_shape) {
		this.ship_store_shape = ship_store_shape;
	}
	public String getShip_possession() {
		return ship_possession;
	}
	public void setShip_possession(String ship_possession) {
		this.ship_possession = ship_possession;
	}
	public String getShip_age() {
		return ship_age;
	}
	public void setShip_age(String ship_age) {
		this.ship_age = ship_age;
	}
	public String getShip_name() {
		return ship_name;
	}
	public void setShip_name(String ship_name) {
		this.ship_name = ship_name;
	}
	public String getShip_phone() {
		return ship_phone;
	}
	public void setShip_phone(String ship_phone) {
		this.ship_phone = ship_phone;
	}
	
	@Override
	public String toString() {
		return "MembershipVo [ship_num=" + ship_num + ", ship_location=" + ship_location + ", ship_store_shape="
				+ ship_store_shape + ", ship_possession=" + ship_possession + ", ship_age=" + ship_age + ", ship_name="
				+ ship_name + ", ship_phone=" + ship_phone + "]";
	}
	
	
}
