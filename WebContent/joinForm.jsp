<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<form action="join_proc.jsp" method="post">
	<table border="1">
		<tr><td>ID</td><td><input type="text" name="id"></td></tr>
		<tr><td>PW</td><td><input type="password" name="pw"></td></tr>
		<tr><td>성명</td><td><input type="text" name="name"></td></tr>
		<tr><td>핸드폰</td><td><input type="text" name="phone"></td></tr>
		<tr><td>Email</td><td><input type="text" name="email"></td></tr>
		<tr><td>약관동의</td><td><input type="checkbox"></td></tr>
	</table>
	<input type="submit" value="가입">
</form>
    