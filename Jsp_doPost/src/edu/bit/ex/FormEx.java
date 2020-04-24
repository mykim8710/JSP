package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.Arrays;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class FormTagEx
 */
@WebServlet("/FormEx")
public class FormEx extends HttpServlet {
	private static final long serialVersionUID = 1L;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public FormEx() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doGet");

		String id = getServletContext().getInitParameter("id");
		String pw = getServletContext().getInitParameter("pw");
		String path = getServletContext().getInitParameter("path");

		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter writer = response.getWriter();

		writer.println("<html><head></head><body>");
		writer.println("아이디 : " + id + "<br/>");
		writer.println("비밀번호 : " + pw + "<br/>");
		writer.println("경로 : " + path + "<br/>");
		writer.println("</body></html>");

		writer.close();
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) 
			throws ServletException, IOException {
		System.out.println("doPost");
		request.setCharacterEncoding("EUC-KR");

		String name = request.getParameter("name");
		String id = request.getParameter("id");
		String pw = request.getParameter("pw");
		String[] hobbys = request.getParameterValues("hobby");
		String major = request.getParameter("major");
		String protocol = request.getParameter("protocol");

		response.setContentType("text/html; charset=EUC-KR");
		PrintWriter writer = response.getWriter();

		writer.println("<html><head></head><body>");
		writer.println("이름 : " + name + "<br/>");
		writer.println("아이디 : " + id + "<br/>");
		writer.println("비밀번호 : " + pw + "<br/>");
		writer.print("취미 : ");
		for (int i = 0; i < hobbys.length; i++) {
			writer.print(hobbys[i] + " ");
		}
		writer.print("<br/>");
		writer.println();
		writer.println("전공 : " + major + "<br/>");
		writer.println("전송프로토콜 : " + protocol + "<br/>");
		writer.println("</body></html>");

		writer.close();
	}

}
