<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
					
		// 4. 실행준비
		String sql = " select empno, ename, job, hiredate, sal  from emp";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		// 5. 쿼리 실행
		ResultSet rs = stmt.executeQuery();
%>
	<table border="1">
		<tr>
			<td>번호</td>
			<td>이름</td>
			<td>직업</td>
			<td>입사일자</td>
			<td>연봉</td>
		</tr>
<%
		// 6. select 일경우, 결과값을 저장할 내용 추가.
		while(rs.next()) {
			out.println("<tr>");
			
			int empno = rs.getInt("empno");
			String ename = rs.getString("ename");
			String job = rs.getString("job");
			String hiredate = rs.getDate("hiredate").toString();
			int sal = rs.getInt("sal");
			
			out.println("<td>"+ empno + "</td>");
			out.println("<td>"+ ename + "</td>");
			out.println("<td>"+ job + "</td>");
			out.println("<td>"+ hiredate + "</td>");
			out.println("<td>"+ sal + "</td>");
			out.println("</tr>");
		}
%>
	</table>
<%		
	} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
	}
%>