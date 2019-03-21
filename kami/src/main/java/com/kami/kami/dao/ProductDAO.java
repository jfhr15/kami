package com.kami.kami.dao;

import java.util.ArrayList;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kami.kami.vo.Productkind;

@Repository
public class ProductDAO {

	@Autowired
	SqlSession session;
	
	//상품종류 전체목록 출력
	public ArrayList<Productkind> selectproductkind(){
		 ArrayList<Productkind> pList = new ArrayList<Productkind>();
		 ProductMapper mapper = session.getMapper(ProductMapper.class);
			try {
				pList = mapper.selectproductkind();
			} catch (Exception e) {
				e.printStackTrace();
				return pList;
			}
			return pList;
	}
	
	
	//상품종류 등록
	public int insertproductkind(Productkind pk) {
		int result = 0;
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		try {
			result = mapper.insertproductkind(pk);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	//상품종류 삭제
	public int deleteproductkind(Productkind pk) {
		int result = 0;
		ProductMapper mapper = session.getMapper(ProductMapper.class);
		try {
			result = mapper.deleteproductkind(pk);
		} catch (Exception e) {
			e.printStackTrace();
			return result;
		}
		return result;
	}
	
	
	
}
