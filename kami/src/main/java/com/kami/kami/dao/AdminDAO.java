package com.kami.kami.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kami.kami.vo.Employee;

@Repository
public class AdminDAO {
	
	@Autowired
	SqlSession session;
	
	//직원 회원가입
	public int insertEmployee(Employee employee) {
		int result = 0;
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		try {
			result = mapper.insertEmployee(employee);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	};
	
	//직원 로그인
	public Employee selectEmployee(Employee employee) {
		Employee result = null;
		AdminMapper mapper = session.getMapper(AdminMapper.class);
		try {
			result = mapper.selectEmployee(employee);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	};
}
