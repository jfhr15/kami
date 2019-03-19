package com.kami.kami.dao;

import com.kami.kami.vo.Productkind;

public interface ProductMapper {
	//상품종류 등록
	public int insertproductkind(Productkind pk);
	
	//상품종류 삭제
	public int deleteproductkind(Productkind pk);
	
}
