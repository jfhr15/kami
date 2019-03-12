package com.kami.kami.dao;

import com.kami.kami.vo.Employee;

public interface AdminMapper {
	//직원 회원가입
	public int insertEmployee(Employee employee);
	//직원 로그인
	public Employee selectEmployee(Employee employee);
}
