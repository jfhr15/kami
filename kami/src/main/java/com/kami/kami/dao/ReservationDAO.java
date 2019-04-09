package com.kami.kami.dao;

import java.util.ArrayList;
import java.util.HashMap;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kami.kami.vo.Idinfo;
import com.kami.kami.vo.Reservation;

@Repository
public class ReservationDAO {
	
	@Autowired
	SqlSession session;
	
	public int insertRes(Reservation res) {
		int result = 0;
		ReservationMapper mapper = session.getMapper(ReservationMapper.class);
		try {
			result = mapper.insertRes(res);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}
	
	public ArrayList<Reservation> selectRes(HashMap<Object,Object> map){
		ArrayList<Reservation> result = null;
		ReservationMapper mapper = session.getMapper(ReservationMapper.class);
		try {
			result = mapper.selectRes(map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return result;
	}
	
	public int deleteRes(HashMap<Object,Object> map) {
		int result = 0;
		ReservationMapper mapper = session.getMapper(ReservationMapper.class);
		try {
			result = mapper.deleteRes(map);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}
	
	public Reservation selectResOne(String reservationseq) {
		Reservation result = null;
		ReservationMapper mapper = session.getMapper(ReservationMapper.class);
		try {
			result = mapper.selectResOne(reservationseq);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return result;
	}
	
	public int updateRes(Reservation res) {
		int result = 0;
		ReservationMapper mapper = session.getMapper(ReservationMapper.class);
		try {
			result = mapper.updateRes(res);
		} catch (Exception e) {
			e.printStackTrace();
			return 0;
		}
		return result;
	}
	
	public ArrayList<Reservation> selectResEmp(HashMap<Object,Object> map){
		ArrayList<Reservation> result = null;
		ReservationMapper mapper = session.getMapper(ReservationMapper.class);
		try {
			result = mapper.selectResEmp(map);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return result;
	}
	
	public ArrayList<Idinfo> employeeList(String rsv_date){
		ArrayList<Idinfo> result = null;
		ReservationMapper mapper = session.getMapper(ReservationMapper.class);
		try {
			result = mapper.employeeList(rsv_date);
		} catch (Exception e) {
			e.printStackTrace();
			return null;
		}
		return result;
	}
}
