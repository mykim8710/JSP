package edu.bit.ex;

import java.util.ArrayList;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

public class MembersAllService implements Service {

	@Override
	public ArrayList<MemberDto> excute(HttpServletRequest request, HttpServletResponse response) {
		MemberDao dao = MemberDao.getInstance();
		ArrayList<MemberDto> membersAll = dao.membersAll();
		return membersAll;
	}

}
