package edu.bit.ex;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class Command implements Service {

	@Override
	public ArrayList<EmpDto> excute(HttpServletRequest request, HttpServletResponse response) {
		EmpDao dao = EmpDao.getInstance();
		ArrayList<EmpDto> dtoList = dao.getList();
		return dtoList;
	}

}
