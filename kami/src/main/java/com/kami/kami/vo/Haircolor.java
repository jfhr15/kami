package com.kami.kami.vo;

public class Haircolor {

	private String colorseq; 
	private String color; //색깔 이름
	private String colorcode; //색깔번호
	private String colorcontent; //색깔 설명
	public String getColorseq() {
		return colorseq;
	}
	public void setColorseq(String colorseq) {
		this.colorseq = colorseq;
	}
	public String getColor() {
		return color;
	}
	public void setColor(String color) {
		this.color = color;
	}
	public String getColorcode() {
		return colorcode;
	}
	public void setColorcode(String colorcode) {
		this.colorcode = colorcode;
	}
	public String getColorcontent() {
		return colorcontent;
	}
	public void setColorcontent(String colorcontent) {
		this.colorcontent = colorcontent;
	}
	public Haircolor(String colorseq, String color, String colorcode, String colorcontent) {
		super();
		this.colorseq = colorseq;
		this.color = color;
		this.colorcode = colorcode;
		this.colorcontent = colorcontent;
	}
	public Haircolor() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Haircolor [colorseq=" + colorseq + ", color=" + color + ", colorcode=" + colorcode + ", colorcontent="
				+ colorcontent + "]";
	}
	
	
	
}
