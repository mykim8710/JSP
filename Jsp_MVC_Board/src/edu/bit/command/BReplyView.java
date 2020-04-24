package edu.bit.command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.dao.BDao;
import edu.bit.dto.BDto;

public class BReplyView implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String bId = request.getParameter("bId");
		BDao dao = BDao.getInstance();
		BDto dto =  dao.reply_view(bId);
		request.setAttribute("reply_view", dto);
	}

}
