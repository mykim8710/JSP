package edu.bit.command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.dao.BDao;
import edu.bit.dto.BDto;

public class BListCommand implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		BDao dao = BDao.getInstance();
		ArrayList<BDto> dtos = dao.getList();
		request.setAttribute("list", dtos);
	}

}
