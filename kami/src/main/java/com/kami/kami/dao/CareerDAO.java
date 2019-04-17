package com.kami.kami.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kami.kami.vo.Career;

@Repository
public class CareerDAO {
	
	@Autowired
	SqlSession session;
	
	public int insertCareer(Career career) {
		int result = 0;
		return result;
	}
}
