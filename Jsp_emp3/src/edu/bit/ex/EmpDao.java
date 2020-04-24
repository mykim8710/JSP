package edu.bit.ex;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import javax.naming.Context;
import javax.naming.InitialContext;
import javax.sql.DataSource;

public class EmpDao {
	private static EmpDao instance = new EmpDao();
	private DataSource dataSource;
	private ArrayList<EmpDto> dtoList;

	public static EmpDao getInstance() {
		return instance;
	}

	public EmpDao() {
		try {
			Context context = new InitialContext();
			dataSource = (DataSource) context.lookup("java:comp/env/jdbc/oracle");
		} catch (Exception e) {
			e.printStackTrace();
		}
	}

	public ArrayList<EmpDto> getList() {
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
				String hireDate = rs.getString("hiredate");
				String sal = rs.getString("sal");
				String comm = rs.getString("comm");
				String deptNo = rs.getString("deptno");
				
				EmpDto dto = new EmpDto(empNo, eName, job, hireDate, sal, comm, deptNo);
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
