package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class select
 */
@WebServlet("*.do")
public class select extends HttpServlet {
	private static final long serialVersionUID = 1L;

	public select() {
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

		String uri = request.getRequestURI();
		String contextPath = request.getContextPath();
		String command = uri.substring(contextPath.length());

		System.out.println("uri : " + uri);
		System.out.println("contextPath : " + contextPath);
		System.out.println("command : " + command);

		/*
		 * if (command.equals("/insert.do")) { System.out.println("insert");
		 * System.out.println("----------------"); } else if
		 * (command.equals("/update.do")) { System.out.println("update");
		 * System.out.println("----------------"); } else if
		 * (command.equals("/select.do")) { System.out.println("select");
		 * System.out.println("----------------"); } else if
		 * (command.equals("/delete.do")) { System.out.println("delete");
		 * System.out.println("----------------"); }
		 */
//		if (command.equals("empPrintAll.do")) {
		response.setContentType("text/html;charset=EUC-KR");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head></head><body>");
		writer.println("<table border =\"1\">");
		writer.println("<tr>");
		writer.println("<td>사원번호</td>");
		writer.println("<td>사원명</td>");
		writer.println("<td>직무</td>");
		writer.println("<td>입사일</td>");
		writer.println("<td>급여</td>");
		writer.println("<td>커미션</td>");
		writer.println("<td>부서번호</td>");
		writer.println("</tr>");

		Service sellectAll = new Command();
		ArrayList<EmpDto> dtoList = sellectAll.excute(request, response);

		for (int i = 0; i < dtoList.size(); i++) {
			EmpDto dto = dtoList.get(i);
			String empNo = dto.getEmpNo();
			String eName = dto.geteName();
			String job = dto.getJob();
			String hireDate = dto.getHireDate();
			String sal = dto.getSal();
			String comm = dto.getComm();
			String deptNo = dto.getDeptNo();

			writer.println("<tr>");
			writer.println("<td>" + empNo + "</td>");
			writer.println("<td>" + eName + "</td>");
			writer.println("<td>" + job + "</td>");
			writer.println("<td>" + hireDate.substring(0, 10) + "</td>");
			writer.println("<td>" + sal + "</td>");
			writer.println("<td>" + comm + "</td>");
			writer.println("<td>" + deptNo + "</td>");
			writer.println("</tr>");

		}
		writer.println("</body></html>");
		writer.close();

		// }

	}

}
