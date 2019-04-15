package com.kami.kami.dao;

import org.apache.ibatis.session.SqlSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.kami.kami.vo.Picture;
import com.kami.kami.vo.Procedure;

@Repository
public class ProcedureDAO {
	
	
	@Autowired
	SqlSession session;
	
	//시술 등록
		public int insertProcedure(Procedure procedure, String pcd_nameKinds, String pcd_nameSex) {
			int result =0;
			
			String name = procedure.getPcd_name();
				name += "/";
				name += pcd_nameKinds;
				name += "/";
				name += pcd_nameSex;
			procedure.setPcd_name(name);
			System.out.println(procedure);
			try {
				ProcedureMapper mapper = session.getMapper(ProcedureMapper.class);
				result = mapper.insertProcedure(procedure);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			
			return result;
		}
	
		
		public int insertPicture(Picture picture) {
			int result =0;
			try {
				ProcedureMapper mapper = session.getMapper(ProcedureMapper.class);
				result = mapper.insertPicture(picture);
			} catch (Exception e) {
				e.printStackTrace();
			}
		
			
			return result;
		}
}
