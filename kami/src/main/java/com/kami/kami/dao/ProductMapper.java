package com.kami.kami.dao;

import java.util.ArrayList;

import com.kami.kami.vo.Productkind;

public interface ProductMapper {
	
	//상품종류 전체목록 출력
	public ArrayList<Productkind> selectproductkind();
	
	//상품종류 등록
	public int insertproductkind(Productkind pk);
	
	//상품종류 삭제
	public int deleteproductkind(Productkind pk);
	
}
