<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>
<%@page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
					
		// 4. 실행준비
		String sql = " select * from 고객";
		PreparedStatement stmt = con.prepareStatement(sql);
		
		// 5. 쿼리 실행
		ResultSet rs = stmt.executeQuery();
		
		// 6. select 일경우, 결과값을 저장할 내용 추가.
		while(rs.next()) {
			String customerId = rs.getString("고객아이디");
			String name = rs.getString("고객이름");
			int age = rs.getInt("나이");
			String grade = rs.getString("등급");
			String job = rs.getString("직업");
			int pnt = rs.getInt("적립금");
			out.println(customerId + name + age + grade + job + pnt +"<br>");
		}
		
	} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
	}
%>