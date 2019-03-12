package com.kami.kami.vo;

public class Employee {
	private String employeeId;
	private int positionSeq;
	private String password;
	private String name;
	private String  hireDate;
	private String  birthDate;
	private String  phone;
	private String  address;
	private String  fireDate;
	private String  gender;
	
	
	
	public Employee() {
		super();
	}



	public Employee(String employeeId, int positionSeq, String password, String name, String hireDate, String birthDate,
			String phone, String address, String fireDate, String gender) {
		super();
		this.employeeId = employeeId;
		this.positionSeq = positionSeq;
		this.password = password;
		this.name = name;
		this.hireDate = hireDate;
		this.birthDate = birthDate;
		this.phone = phone;
		this.address = address;
		this.fireDate = fireDate;
		this.gender = gender;
	}



	public String getEmployeeId() {
		return employeeId;
	}



	public void setEmployeeId(String employeeId) {
		this.employeeId = employeeId;
	}



	public int getPositionSeq() {
		return positionSeq;
	}



	public void setPositionSeq(int positionSeq) {
		this.positionSeq = positionSeq;
	}



	public String getPassword() {
		return password;
	}



	public void setPassword(String password) {
		this.password = password;
	}



	public String getName() {
		return name;
	}



	public void setName(String name) {
		this.name = name;
	}



	public String getHireDate() {
		return hireDate;
	}



	public void setHireDate(String hireDate) {
		this.hireDate = hireDate;
	}



	public String getBirthDate() {
		return birthDate;
	}



	public void setBirthDate(String birthDate) {
		this.birthDate = birthDate;
	}



	public String getPhone() {
		return phone;
	}



	public void setPhone(String phone) {
		this.phone = phone;
	}



	public String getAddress() {
		return address;
	}



	public void setAddress(String address) {
		this.address = address;
	}



	public String getFireDate() {
		return fireDate;
	}



	public void setFireDate(String fireDate) {
		this.fireDate = fireDate;
	}



	public String getGender() {
		return gender;
	}



	public void setGender(String gender) {
		this.gender = gender;
	}



	@Override
	public String toString() {
		return "Employee [employeeId=" + employeeId + ", positionSeq=" + positionSeq + ", password=" + password
				+ ", name=" + name + ", hireDate=" + hireDate + ", birthDate=" + birthDate + ", phone=" + phone
				+ ", address=" + address + ", fireDate=" + fireDate + ", gender=" + gender + "]";
	}




	
	
}
