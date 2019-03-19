package com.kami.kami.vo;

public class Member { //회원정보 
	private String mem_id;  //회원아이디
	private String mem_money; //회원이 보유하고 있는 적립금
	private String mem_phone; //회원 전화번호
	private String mem_birthday; //회원 생일
	private String mem_name; //회원 이름
	private String mem_registDate; //회원가입일
	private String mem_gender; //회원 성별
	private String mem_address; //회원 주소
	private String mem_flag; //회원 탈퇴 여부, 1: 가입 / 2: 탈퇴
	public Member(String mem_id, String mem_money, String mem_phone, String mem_birthday, String mem_name,
			String mem_registDate, String mem_gender, String mem_address, String mem_flag) {
		super();
		this.mem_id = mem_id;
		this.mem_money = mem_money;
		this.mem_phone = mem_phone;
		this.mem_birthday = mem_birthday;
		this.mem_name = mem_name;
		this.mem_registDate = mem_registDate;
		this.mem_gender = mem_gender;
		this.mem_address = mem_address;
		this.mem_flag = mem_flag;
	}
	public Member() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Member [mem_id=" + mem_id + ", mem_money=" + mem_money + ", mem_phone=" + mem_phone + ", mem_birthday="
				+ mem_birthday + ", mem_name=" + mem_name + ", mem_registDate=" + mem_registDate + ", mem_gender="
				+ mem_gender + ", mem_address=" + mem_address + ", mem_flag=" + mem_flag + "]";
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getMem_money() {
		return mem_money;
	}
	public void setMem_money(String mem_money) {
		this.mem_money = mem_money;
	}
	public String getMem_phone() {
		return mem_phone;
	}
	public void setMem_phone(String mem_phone) {
		this.mem_phone = mem_phone;
	}
	public String getMem_birthday() {
		return mem_birthday;
	}
	public void setMem_birthday(String mem_birthday) {
		this.mem_birthday = mem_birthday;
	}
	public String getMem_name() {
		return mem_name;
	}
	public void setMem_name(String mem_name) {
		this.mem_name = mem_name;
	}
	public String getMem_registDate() {
		return mem_registDate;
	}
	public void setMem_registDate(String mem_registDate) {
		this.mem_registDate = mem_registDate;
	}
	public String getMem_gender() {
		return mem_gender;
	}
	public void setMem_gender(String mem_gender) {
		this.mem_gender = mem_gender;
	}
	public String getMem_address() {
		return mem_address;
	}
	public void setMem_address(String mem_address) {
		this.mem_address = mem_address;
	}
	public String getMem_flag() {
		return mem_flag;
	}
	public void setMem_flag(String mem_flag) {
		this.mem_flag = mem_flag;
	}
	
	
}
