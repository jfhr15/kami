package com.kami.kami.dao;

import com.kami.kami.vo.Employee;

public interface AdminMapper {
	//���� ȸ������
	public int insertEmployee(Employee employee);
	//���� �α���
	public Employee selectEmployee(Employee employee);
}
