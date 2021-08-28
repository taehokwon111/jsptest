<%@page import="DBPKG.dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="style.css">
</head>
<body>
	<header>
		<h1>피자전문점 판매관리 프로그램 ver1.0</h1>
	</header>
	<%@include file="nav.jsp" %>
	<section>
		<h4>상품관리</h4>
		<table align="center">
			<tr>
				<td>지점코드</td>
				<td>지점 명</td>
				<td>총매출액</td>
			</tr>
			<%
				String sql = "select a.scode, c.sname, (cost * a.amount) from TBL_SALELIST_01 a, TBL_PIZZA_01 b, TBL_SHOP_01 c where a.pcode = b.pcode and a.scode = c.scode order by a.scode asc";
			
				ResultSet rs = dbconnection.getRs(sql); 
				while(rs.next()){
		
				
			%>
			<tr>
				<td><%=rs.getString(1)%>"</td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getInt(3) %></td>
			</tr>
			<% } %>
		</table>
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
</html>