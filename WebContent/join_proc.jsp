<%@page import="java.sql.SQLException"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.Connection"%>
<%@page import="db.DBManager"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String pw = request.getParameter("pw");
	String name = request.getParameter("name");
	String phone = request.getParameter("phone");
	String email = request.getParameter("email");
	
	try {
		DBManager db = DBManager.getInstance();
		Connection con = db.open();
					
		// 4. 실행준비
		String sql = "insert into person_info values (?, ?, ?, ?, ?)";
		PreparedStatement stmt = con.prepareStatement(sql);
		stmt.setString(1, id);
		stmt.setString(2, pw);
		stmt.setString(3, name);
		stmt.setString(4, phone);
		stmt.setString(5, email);
		
		// 5. 쿼리 실행
		//stmt.executeQuery(); //select 일때는 이걸씁니다.
		int result = stmt.executeUpdate();
		if(result >= 1) out.println("회원가입이 완료되었습니다.");
		else out.println("실패");
		
		// 6. select 일경우, 결과값을 저장할 내용 추가.
				
	} catch (ClassNotFoundException | SQLException e) {
			e.printStackTrace();
	}
	
%>