package edu.bit.ex;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

public class EmpDAO {
	private String url = "jdbc:oracle:thin:@localhost:1521:xe";
	private String uid = "scott";
	private String upw = "tiger";
	ArrayList<EmpDTO> list;

	public EmpDAO() {
		try {
			Class.forName("oracle.jdbc.driver.OracleDriver"); // 오라클 드라이버 객체 생성
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<EmpDTO> getDTO(String query) {
		list = new ArrayList<>();
		Connection conn = null;
		Statement stmt = null;
		ResultSet rs = null;

		try {
			conn = DriverManager.getConnection(url, uid, upw); // url, id, pw입력하여 오라클 db에 접속, Connection 객체 생성
			stmt = conn.createStatement(); // Statement객체를 통해 SQL 쿼리문이 실행됨
			rs = stmt.executeQuery(query); // ResultSet 객체에 SQL 쿼리문에 대한 결과값을 저장

			while (rs.next()) {

				String ename = rs.getString("ename");

				String hireDate = rs.getString("hiredate");

				EmpDTO dto = new EmpDTO();
				dto.setEname(ename);
				dto.setHireDate(hireDate);
				list.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
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

		return list;

	}

}
