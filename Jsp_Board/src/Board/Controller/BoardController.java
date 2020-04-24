package Board.Controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import Board.Command.BCommand;
import Board.Command.BContentViewCommand;
import Board.Command.BDeleteCommand;
import Board.Command.BListCommand;
import Board.Command.BModifyCommand;
import Board.Command.BModifyView;
import Board.Command.BReplyCommand;
import Board.Command.BReplyView;
import Board.Command.BWriteCommand;

@WebServlet("*.do")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public BoardController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);
	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}

	private void actionDo(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		System.out.println("actionDo");
		request.setCharacterEncoding("EUC-KR");
		
		String url = request.getRequestURL().toString();
		String uri = request.getRequestURI();
		String conPath = request.getContextPath();
		String cmd = uri.substring(conPath.length());
		
		System.out.println();
		System.out.println("현재 URL : " +url);
		System.out.println("현재 URI : " + uri);
		System.out.println("현재 ContextPath : " + conPath);
		System.out.println("현재 Command : " + cmd);
		System.out.println();
		
		BCommand command = null;
		String viewPage = null;
		
		switch (cmd) {
		case "/list.do":
			command = new BListCommand();
			command.excute(request, response);
			viewPage = "BoardList.jsp";
			break;
		case "/write_view.do":
			viewPage = "BoardWrite.jsp";
			break;
		case "/write.do":
			command = new BWriteCommand();
			command.excute(request, response);
			viewPage = "list.do";
			break;
		case "/content_view.do" :
			command = new BContentViewCommand();
			command.excute(request, response);
			viewPage = "content_view.jsp";
			break;
		case "/modify_view.do":
			command = new BModifyView();
			command.excute(request, response);
			viewPage = "modify_view.jsp";
			break;
		case "/modify.do":
			command = new BModifyCommand();
			command.excute(request, response);
			viewPage = "list.do";
			break;
		case "/reply_view.do":
			command = new BReplyView();
			command.excute(request, response);
			viewPage = "reply_view.jsp";
			break;
		case "/reply.do":
			command = new BReplyCommand();
			command.excute(request, response);
			viewPage = "list.do";
			break;
		case "/delete.do":
			command = new BDeleteCommand();
			command.excute(request, response);
			viewPage = "list.do";
		default:
			break;
		}


		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);

	}

}
