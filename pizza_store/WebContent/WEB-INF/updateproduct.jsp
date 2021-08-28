<%@page import="java.sql.Date"%>
<%@page import="DBPKG.dbconnection"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Connection"%>
<%@page import="java.sql.PreparedStatement"%>
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
		<h4>상품정보 변경</h4>
		<form method="post" name="action"  action="action.jsp">
		<input type="hidden" name="action" value="updateproduct">
			<table align="center">
			<%
			request.setCharacterEncoding("UTF-8");
			Connection con = null;
			ResultSet rs = null;
			PreparedStatement stmt = null;
			con = dbconnection.getConnection();
			
			String goods_cd = request.getParameter("goods_cd");
			String sql = "select * from goods_tbl_003 where goods_cd = '"+goods_cd+"'";
			
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			if(rs.next()){
				String goods_nm = rs.getString(2);
				String goods_price = rs.getString(3);
				String cost = rs.getString(4);
				String in_date = rs.getString(5);
				
			%>
				<tr>
					<td>상품코드(변경불가)</td>
					<td><input type="text" name="goods_cd" value="<%=goods_cd%>"></td>
				</tr>
				
				<tr>
					<td>상품명</td>
					<td><input type="text" name="goods_nm" value="<%=goods_nm%>"></td>
				</tr>
				<tr>
					<td>단가</td>
					<td><input type="text" name="goods_price" value="<%=goods_price%>"></td>
				</tr>
				<tr>
					<td>원가</td>
					<td><input type="text" name="cost" value="<%=cost%>" ></td>
				</tr>
				<tr>
					<td>입고일자(변경불가)</td>
					<td><input type="text" name="in_date" value="<%=in_date%>"></td>
				</tr>
				<% } %>
				
				<tr>
					<td colspan="2">
						<button type="submit">등록</button>
						<button type="button" onclick="window.location.href='productmanager.jsp'">상품목록</button>
					</td>
				</tr>
			</table>
		</form>	
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>

</html>