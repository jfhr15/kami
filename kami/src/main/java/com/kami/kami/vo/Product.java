package com.kami.kami.vo;

public class Product {
	private int productseq; //상품시퀀스
	private String kindseq; //상품종류시퀀스
	private String prd_name; //상품 이름
	private String prd_price1; //상품원가
	private String prd_price2; //상품 판매가
	private String prd_content; //상품소개
	private String prd_image; //상품이미지
	private String prd_quantity; //수량
	private String prd_indate; //상품업로드 날짜
	public int getProductseq() {
		return productseq;
	}
	public void setProductseq(int productseq) {
		this.productseq = productseq;
	}
	public String getKindseq() {
		return kindseq;
	}
	public void setKindseq(String kindseq) {
		this.kindseq = kindseq;
	}
	public String getPrd_name() {
		return prd_name;
	}
	public void setPrd_name(String prd_name) {
		this.prd_name = prd_name;
	}
	public String getPrd_price1() {
		return prd_price1;
	}
	public void setPrd_price1(String prd_price1) {
		this.prd_price1 = prd_price1;
	}
	public String getPrd_price2() {
		return prd_price2;
	}
	public void setPrd_price2(String prd_price2) {
		this.prd_price2 = prd_price2;
	}
	public String getPrd_content() {
		return prd_content;
	}
	public void setPrd_content(String prd_content) {
		this.prd_content = prd_content;
	}
	public String getPrd_image() {
		return prd_image;
	}
	public void setPrd_image(String prd_image) {
		this.prd_image = prd_image;
	}
	public String getPrd_quantity() {
		return prd_quantity;
	}
	public void setPrd_quantity(String prd_quantity) {
		this.prd_quantity = prd_quantity;
	}
	public String getPrd_indate() {
		return prd_indate;
	}
	public void setPrd_indate(String prd_indate) {
		this.prd_indate = prd_indate;
	}
	public Product(int productseq, String kindseq, String prd_name, String prd_price1, String prd_price2,
			String prd_content, String prd_image, String prd_quantity, String prd_indate) {
		super();
		this.productseq = productseq;
		this.kindseq = kindseq;
		this.prd_name = prd_name;
		this.prd_price1 = prd_price1;
		this.prd_price2 = prd_price2;
		this.prd_content = prd_content;
		this.prd_image = prd_image;
		this.prd_quantity = prd_quantity;
		this.prd_indate = prd_indate;
	}
	public Product() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Product [productseq=" + productseq + ", kindseq=" + kindseq + ", prd_name=" + prd_name + ", prd_price1="
				+ prd_price1 + ", prd_price2=" + prd_price2 + ", prd_content=" + prd_content + ", prd_image="
				+ prd_image + ", prd_quantity=" + prd_quantity + ", prd_indate=" + prd_indate + "]";
	}
	
	
	
	
}
