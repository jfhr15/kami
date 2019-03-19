package com.kami.kami.vo;

public class Idinfo { //전체 id 정보

	private String id;
	private String pw;
	private int type; //직원, 회원 여부. 직원:1 / 회원:2
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getPw() {
		return pw;
	}
	public void setPw(String pw) {
		this.pw = pw;
	}
	public int getType() {
		return type;
	}
	public void setType(int type) {
		this.type = type;
	}
	@Override
	public String toString() {
		return "Idinfo [id=" + id + ", pw=" + pw + ", type=" + type + "]";
	}
	public Idinfo(String id, String pw, int type) {
		super();
		this.id = id;
		this.pw = pw;
		this.type = type;
	}
	public Idinfo() {
		super();
		// TODO Auto-generated constructor stub
	}


}
