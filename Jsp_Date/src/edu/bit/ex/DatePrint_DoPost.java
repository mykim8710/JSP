package edu.bit.ex;

import java.io.IOException;
import java.io.PrintWriter;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * Servlet implementation class DatePrint_DoPost
 */
@WebServlet("/DatePrint_DoPost")
public class DatePrint_DoPost extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
    /**
     * @see HttpServlet#HttpServlet()
     */
    public DatePrint_DoPost() {
        super();
        // TODO Auto-generated constructor stub
    }

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		// TODO Auto-generated method stub
		Date today = new Date();
		SimpleDateFormat date = new SimpleDateFormat("yyyy/MM/dd");
		SimpleDateFormat time = new SimpleDateFormat("hh:mm:ss a");

		System.out.println("doPost");
		System.out.println("Servlet으로 구현");
		System.out.println("날짜/시간출력");
		System.out.println("오늘날짜 : " + date.format(today));
		System.out.println("현재시간 : " + time.format(today));
		response.setContentType("text/html; charset=utf-8");
		PrintWriter writer = response.getWriter();
		writer.println("<html>");
		writer.println("<head>");
		writer.println("<style>");
		writer.println("p { font-size: 20px; font-weight: bold; }");
		writer.println("</style>");
		writer.println("</head>");
		writer.println("<body>");
		writer.println("<p>DoPost방식</p>");
		writer.println("<p>날짜/시간 출력</p>");
		writer.println("<p>오늘날짜 : " + date.format(today) + "</p>");
		writer.println("<p>현재시간 : " + time.format(today) + "</p>");
		writer.println("</body>");
		writer.println("</html>");
		
		writer.close();
	}

}
