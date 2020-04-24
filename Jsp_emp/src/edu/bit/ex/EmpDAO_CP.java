package edu.bit.ex;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.Statement;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class EmpDAO_CP {
	// connection pool 객체의 선언
	private DataSource dataSource;
	private ArrayList<EmpDTO> dtoList;

	public EmpDAO_CP() {
		// DB에 접속하기 위해 드라이버(오라클DB) 객체의 생성
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<EmpDTO> getDTO(String query) {
		dtoList = new ArrayList<>();

		Connection conn = null; // DB에 접속하기 위한 conn 객체
		Statement stmt = null; // 쿼리문을 실행하기 위한 객체
		ResultSet rs = null; // 쿼리문 실행결과를 저장할 객체

		try {
			conn = dataSource.getConnection();
			stmt = conn.createStatement();
			rs = stmt.executeQuery(query);

			// 쿼리문 실행결과를 객체화 하여 ArrayList에 저장
			while (rs.next()) {
				String name = rs.getString("ename");
				String hireDate = rs.getString("hireDate");

				EmpDTO dto = new EmpDTO();
				dto.setEname(name);
				dto.setHireDate(hireDate);

				dtoList.add(dto);
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

		return dtoList;
	}

}
