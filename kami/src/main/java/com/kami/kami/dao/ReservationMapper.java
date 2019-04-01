package com.kami.kami.dao;

import java.util.ArrayList;
import java.util.HashMap;

import com.kami.kami.vo.Reservation;

public interface ReservationMapper {
	public int insertRes(Reservation res); 
	public ArrayList<Reservation> selectRes(HashMap<Object,Object> map); 
	public int deleteRes(HashMap<Object,Object> map);
	public Reservation selectResOne(String reservationseq);
	public int updateRes(Reservation res);
}
