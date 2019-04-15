package com.kami.kami.dao;

import com.kami.kami.vo.Picture;
import com.kami.kami.vo.Procedure;

public interface ProcedureMapper {
	
	//시술 등록
	public int insertProcedure(Procedure procedure);
	//사진 등록
	public int insertPicture(Picture picture);
}
