package Board.Command;

import java.util.ArrayList;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Board.DAO.BoardDAO;
import Board.DTO.BoardDTO;

public class BListCommand implements BCommand {

	@Override
	public void excute(HttpServletRequest request, HttpServletResponse response) {
		BoardDAO dao = BoardDAO.getInstance();
		ArrayList<BoardDTO> dtoList = dao.getList();
		request.setAttribute("dtoList", dtoList);
	}

}
