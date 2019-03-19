package com.kami.kami.vo;

public class Reservation {
	private int reservationseq;
	private String payseq;//결제정보
	private String proinfoseq; //선택한 시술 정보
	private String emp_id; //예약직원
	private String mem_id; //예약회원
	private String rsv_date; //예약날짜
	private String rsv_time; //예약시간
	public int getReservationseq() {
		return reservationseq;
	}
	public void setReservationseq(int reservationseq) {
		this.reservationseq = reservationseq;
	}
	public String getPayseq() {
		return payseq;
	}
	public void setPayseq(String payseq) {
		this.payseq = payseq;
	}
	public String getProinfoseq() {
		return proinfoseq;
	}
	public void setProinfoseq(String proinfoseq) {
		this.proinfoseq = proinfoseq;
	}
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public String getMem_id() {
		return mem_id;
	}
	public void setMem_id(String mem_id) {
		this.mem_id = mem_id;
	}
	public String getRsv_date() {
		return rsv_date;
	}
	public void setRsv_date(String rsv_date) {
		this.rsv_date = rsv_date;
	}
	public String getRsv_time() {
		return rsv_time;
	}
	public void setRsv_time(String rsv_time) {
		this.rsv_time = rsv_time;
	}
	public Reservation(int reservationseq, String payseq, String proinfoseq, String emp_id, String mem_id,
			String rsv_date, String rsv_time) {
		super();
		this.reservationseq = reservationseq;
		this.payseq = payseq;
		this.proinfoseq = proinfoseq;
		this.emp_id = emp_id;
		this.mem_id = mem_id;
		this.rsv_date = rsv_date;
		this.rsv_time = rsv_time;
	}
	public Reservation() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Reservation [reservationseq=" + reservationseq + ", payseq=" + payseq + ", proinfoseq=" + proinfoseq
				+ ", emp_id=" + emp_id + ", mem_id=" + mem_id + ", rsv_date=" + rsv_date + ", rsv_time=" + rsv_time
				+ "]";
	}
	
	
	
}
