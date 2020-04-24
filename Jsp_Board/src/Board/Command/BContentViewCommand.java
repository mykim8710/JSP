package Board.Command;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Board.DAO.BoardDAO;
import Board.DTO.BoardDTO;

public class BContentViewCommand implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		String bId = request.getParameter("bId");
		BoardDAO dao = BoardDAO.getInstance();
		BoardDTO dto = dao.contentView(bId);
		request.setAttribute("contentView", dto);	
	}
}
