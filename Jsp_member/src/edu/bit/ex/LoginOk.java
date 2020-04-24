package edu.bit.ex;

import java.io.IOException;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

/**
 * Servlet implementation class LoginOk
 */
@WebServlet("/LoginOk")
public class LoginOk extends HttpServlet {
	private static final long serialVersionUID = 1L;
	private Connection conn;
	private Statement stmt;
	private ResultSet resultSet;
	private String name;
	private String id;
	private String pw;
	private String address;
	private String phone1;
	private String phone2;
	private String phone3;
	private String gender;

	/**
	 * @see HttpServlet#HttpServlet()
	 */
	public LoginOk() {
		super();
		// TODO Auto-generated constructor stub
	}

	/**
	 * @see HttpServlet#doGet(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doGet(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		// TODO Auto-generated method stub
		response.getWriter().append("Served at: ").append(request.getContextPath());
	}

	/**
	 * @see HttpServlet#doPost(HttpServletRequest request, HttpServletResponse
	 *      response)
	 */
	protected void doPost(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		System.out.println("doPost 실행");
		actionDo(request, response);
	}

	protected void actionDo(HttpServletRequest request, HttpServletResponse response)
			throws ServletException, IOException {
		request.setCharacterEncoding("EUC-KR");

		id = request.getParameter("id");
		pw = request.getParameter("pw");

		String query = "SELECT * FROM member WHERE id = '" + id + "' AND pw = '" +pw + "'";
		System.out.println(query);
		
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver");
			conn = DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe", "scott", "tiger");
			stmt = conn.createStatement();
			resultSet = stmt.executeQuery(query);
			
			while (resultSet.next()) {
				name = resultSet.getString("name");
				id = resultSet.getString("id");
				pw = resultSet.getString("pw");
				address = resultSet.getString("address");
				phone1 = resultSet.getString("phone1");
				phone2 = resultSet.getString("phone2");
				phone3 = resultSet.getString("phone3");
				gender = resultSet.getString("gender");
			}
			// 서버의 세션에 name, id, pw를  저장
			HttpSession httpsession = request.getSession();
			httpsession.setAttribute("name", name);
			httpsession.setAttribute("id", id);
			httpsession.setAttribute("pw", pw);
			
			response.sendRedirect("loginResult.jsp");
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (resultSet != null) {
					resultSet.close();
				}
				
				if (stmt != null) {
					stmt.close();
				}

				if (conn != null) {
					conn.close();
				}
				
				
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}

	}

}
