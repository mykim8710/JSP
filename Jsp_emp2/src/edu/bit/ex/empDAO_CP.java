package edu.bit.ex;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class empDAO_CP {
	private DataSource dataSource;
	private ArrayList<empDTO> dtoList;

	// 생성자 정의 : DB접속을 위해 오라클 드라이버 객체의 생성
	public empDAO_CP() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	// DB에 접속하고 쿼리문을 실행한 결과들을 empDTO객체로 만들어서 ArrayList<empDTO>에 담아서 반환하는 메서드 정의
	public ArrayList<empDTO> getDTOList() {
		dtoList = new ArrayList<>();
		Connection conn = null;
		PreparedStatement pstmt = null;
		ResultSet rs = null;
		String query = "SELECT * FROM emp";

		try {
			conn = dataSource.getConnection();
			pstmt = conn.prepareStatement(query);
			rs = pstmt.executeQuery();

			while (rs.next()) {
				String empNo = rs.getString("empno");
				String eName = rs.getString("ename");
				String job = rs.getString("job");
				String mgr = rs.getString("mgr");
				String hireDate = rs.getString("hiredate");
				String sal = rs.getString("sal");
				String comm = rs.getString("comm");
				String deptNo = rs.getString("deptno");

				empDTO dto = new empDTO(empNo, eName, job, mgr, hireDate, sal, comm, deptNo);
				dtoList.add(dto);
			}

		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if (rs != null) {
					rs.close();
				}
				if (pstmt != null) {
					pstmt.close();
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
