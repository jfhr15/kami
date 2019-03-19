package com.kami.kami.vo;

public class Employee {
	private String emp_id; //id는 email 주소를 받는다.
	private int positionseq; //직원의 직책 정보
	private String password; //비밀번호
	private String emp_name; //직원이름
	private String  emp_hiredate; //직원 입사일
	private String  emp_birthdate; //직원 생일
	private String  emp_phone; // 직원 전화번호
	private String  emp_address; //직원 주소
	private String  emp_firedate; //직원 퇴사일
	private String  emp_gender; //직원 성별
	private String  emp_flag; //직원 퇴직 여부, 1: 재직 / 2: 퇴직
	
	
	
	public String getEmp_id() {
		return emp_id;
	}
	public void setEmp_id(String emp_id) {
		this.emp_id = emp_id;
	}
	public int getPositionseq() {
		return positionseq;
	}
	public void setPositionseq(int positionseq) {
		this.positionseq = positionseq;
	}
	public String getPassword() {
		return password;
	}
	public void setPassword(String password) {
		this.password = password;
	}
	public String getEmp_name() {
		return emp_name;
	}
	public void setEmp_name(String emp_name) {
		this.emp_name = emp_name;
	}
	public String getEmp_hiredate() {
		return emp_hiredate;
	}
	public void setEmp_hiredate(String emp_hiredate) {
		this.emp_hiredate = emp_hiredate;
	}
	public String getEmp_birthdate() {
		return emp_birthdate;
	}
	public void setEmp_birthdate(String emp_birthdate) {
		this.emp_birthdate = emp_birthdate;
	}
	public String getEmp_phone() {
		return emp_phone;
	}
	public void setEmp_phone(String emp_phone) {
		this.emp_phone = emp_phone;
	}
	public String getEmp_address() {
		return emp_address;
	}
	public void setEmp_address(String emp_address) {
		this.emp_address = emp_address;
	}
	public String getEmp_firedate() {
		return emp_firedate;
	}
	public void setEmp_firedate(String emp_firedate) {
		this.emp_firedate = emp_firedate;
	}
	public String getEmp_gender() {
		return emp_gender;
	}
	public void setEmp_gender(String emp_gender) {
		this.emp_gender = emp_gender;
	}
	public String getEmp_flag() {
		return emp_flag;
	}
	public void setEmp_flag(String emp_flag) {
		this.emp_flag = emp_flag;
	}
	public Employee(String emp_id, int positionseq, String password, String emp_name, String emp_hiredate,
			String emp_birthdate, String emp_phone, String emp_address, String emp_firedate, String emp_gender,
			String emp_flag) {
		super();
		this.emp_id = emp_id;
		this.positionseq = positionseq;
		this.password = password;
		this.emp_name = emp_name;
		this.emp_hiredate = emp_hiredate;
		this.emp_birthdate = emp_birthdate;
		this.emp_phone = emp_phone;
		this.emp_address = emp_address;
		this.emp_firedate = emp_firedate;
		this.emp_gender = emp_gender;
		this.emp_flag = emp_flag;
	}
	public Employee() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Employee [emp_id=" + emp_id + ", positionseq=" + positionseq + ", password=" + password + ", emp_name="
				+ emp_name + ", emp_hiredate=" + emp_hiredate + ", emp_birthdate=" + emp_birthdate + ", emp_phone="
				+ emp_phone + ", emp_address=" + emp_address + ", emp_firedate=" + emp_firedate + ", emp_gender="
				+ emp_gender + ", emp_flag=" + emp_flag + "]";
	}
	
	
}
