package edu.bit.controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import edu.bit.command.BCommand;
import edu.bit.command.BContentCommand;
import edu.bit.command.BDeleteCommand;
import edu.bit.command.BListCommand;
import edu.bit.command.BModifyCommand;
import edu.bit.command.BModifyView;
import edu.bit.command.BReplyCommand;
import edu.bit.command.BReplyView;
import edu.bit.command.BWriteCommand;

@WebServlet("*.do") // URL처리를 확장자패턴으로
public class Board_FrontController extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public Board_FrontController() {
		super();
	}

	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doGet");
		actionDo(request, response);

	}

	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost");
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("actionDo");
		request.setCharacterEncoding("EUC-KR");

		String viewPage = null;
		BCommand command = null;

		StringBuffer url = request.getRequestURL();
		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String cmd = uri.substring(contextPath.length());

		System.out.println();
		System.out.println("테스트 URL : " + url);
		System.out.println("테스트 URI : " + uri);
		System.out.println("테스트 ContextPath : " + contextPath);
		System.out.println("테스트 cmd : " + cmd);

		if (cmd.equals("/write_view.do")) {
			viewPage = "write_view.jsp";
		} else if (cmd.equals("/write.do")) {
			command = new BWriteCommand();
			command.excute(request, response);
			viewPage = "list.do";
		} else if (cmd.equals("/list.do")) {
			command = new BListCommand();
			command.excute(request, response);
			viewPage = "list.jsp";
		} else if (cmd.equals("/content_view.do")) {
			command = new BContentCommand();
			command.excute(request, response);
			viewPage = "content_view.jsp";
		}

		else if (cmd.equals("/modify_view.do")) {
			command = new BModifyView();
			command.excute(request, response);
			viewPage = "modify_view.jsp";
		} else if (cmd.equals("/modify.do")) {
			command = new BModifyCommand();
			command.excute(request, response);
			viewPage = "list.do";
		}

		else if (cmd.equals("/delete.do")) {
			command = new BDeleteCommand();
			command.excute(request, response);
			viewPage = "list.do";
		}

		else if (cmd.equals("/reply_view.do")) {
			command = new BReplyView();
			command.excute(request, response);
			viewPage = "reply_view.jsp";
		} else if (cmd.equals("/reply.do")) {
			command = new BReplyCommand();
			command.excute(request, response);
			viewPage = "list.do";
		}

		RequestDispatcher dispatcher = request.getRequestDispatcher(viewPage);
		dispatcher.forward(request, response);
	}

}
