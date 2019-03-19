package com.kami.kami.vo;

public class Procedure { //고객이 선택할 수 있는 시술 정보를 담는다. 

	private int procedureseq; 
	private String colorseq; //염색의 경우 추가됨
	private String pcd_name; //시술 명
	private String pcd_time; //시술 소요시간
	private String pcd_price; //시술당 가격
	private String pcd_content; //시술 설명 내용
	
	
	public int getProcedureseq() {
		return procedureseq;
	}
	public void setProcedureseq(int procedureseq) {
		this.procedureseq = procedureseq;
	}
	public String getColorseq() {
		return colorseq;
	}
	public void setColorseq(String colorseq) {
		this.colorseq = colorseq;
	}
	public String getPcd_name() {
		return pcd_name;
	}
	public void setPcd_name(String pcd_name) {
		this.pcd_name = pcd_name;
	}
	public String getPcd_time() {
		return pcd_time;
	}
	public void setPcd_time(String pcd_time) {
		this.pcd_time = pcd_time;
	}
	public String getPcd_price() {
		return pcd_price;
	}
	public void setPcd_price(String pcd_price) {
		this.pcd_price = pcd_price;
	}
	public String getPcd_content() {
		return pcd_content;
	}
	public void setPcd_content(String pcd_content) {
		this.pcd_content = pcd_content;
	}
	public Procedure(int procedureseq, String colorseq, String pcd_name, String pcd_time, String pcd_price,
			String pcd_content) {
		super();
		this.procedureseq = procedureseq;
		this.colorseq = colorseq;
		this.pcd_name = pcd_name;
		this.pcd_time = pcd_time;
		this.pcd_price = pcd_price;
		this.pcd_content = pcd_content;
	}
	public Procedure() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Procedure [procedureseq=" + procedureseq + ", colorseq=" + colorseq + ", pcd_name=" + pcd_name
				+ ", pcd_time=" + pcd_time + ", pcd_price=" + pcd_price + ", pcd_content=" + pcd_content + "]";
	}
	
	
}
