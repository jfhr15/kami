package com.kami.kami.vo;

public class Procedureinfomation { //고객이 선택한 시술 정보
	private int proinfoseq; //고객이 선택한 시술 정보 시퀀스
	private String procedureseq; //시술 정보 시퀀스
	private String sale; //할인정보
	private String proinfo_price; //총 금액
	
	public int getProinfoseq() {
		return proinfoseq;
	}
	public void setProinfoseq(int proinfoseq) {
		this.proinfoseq = proinfoseq;
	}
	public String getProcedureseq() {
		return procedureseq;
	}
	public void setProcedureseq(String procedureseq) {
		this.procedureseq = procedureseq;
	}
	public String getSale() {
		return sale;
	}
	public void setSale(String sale) {
		this.sale = sale;
	}
	public String getProinfo_price() {
		return proinfo_price;
	}
	public void setProinfo_price(String proinfo_price) {
		this.proinfo_price = proinfo_price;
	}
	@Override
	public String toString() {
		return "Procedureinfomation [proinfoseq=" + proinfoseq + ", procedureseq=" + procedureseq + ", sale=" + sale
				+ ", proinfo_price=" + proinfo_price + "]";
	}
	public Procedureinfomation(int proinfoseq, String procedureseq, String sale, String proinfo_price) {
		super();
		this.proinfoseq = proinfoseq;
		this.procedureseq = procedureseq;
		this.sale = sale;
		this.proinfo_price = proinfo_price;
	}
	public Procedureinfomation() {
		super();
		// TODO Auto-generated constructor stub
	}
	
	
	
	
	
}
