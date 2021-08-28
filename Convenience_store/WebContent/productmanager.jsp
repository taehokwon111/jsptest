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
		<h1>편의점 매출관리 ver1.0</h1>
	</header>
	<%@include file="nav.jsp" %>
	<section>
		<h4>상품관리</h4>
		<table align="center">
			<tr>
				<td>상품코드</td>
				<td>상품명</td>
				<td>단가</td>
				<td>원가</td>
				<td>입고일자</td>
			</tr>
			<%
				String sql = "select goods_cd,goods_nm,goods_price,cost,to_char(in_date,'yyyymmdd') from GOODS_TBL_003";
				
				ResultSet rs = dbconnection.getRs(sql); 
				while(rs.next()){
					String goods_cd = request.getParameter("goods_cd");
					String goods_nm = request.getParameter("goods_nm");
					String goods_price = request.getParameter("goods_price");
					String cost = request.getParameter("cost");
					String in_date = request.getParameter("in_date");
				
			%>
			<tr>
				<td><a href="updateproduct.jsp?goods_cd=<%=rs.getString(1)%>"><%=rs.getString(1) %></a></td>
				<td><%=rs.getString(2) %></td>
				<td><%=rs.getString(3) %></td>
				<td><%=rs.getString(4) %></td>
				<td><%=rs.getString(5) %></td>
			</tr>
			<% } %>
			<tr>
				<td colspan="5">
					<button onclick="window.location.href='addproduct.jsp'">등록</button>
				</td>
			</tr>
		</table>
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
</html>