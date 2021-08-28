<%@page import="java.sql.Date"%>
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
		<h4>통합 매출 현황 조회</h4>
		<table align="center">
			<tr>
				<td>매출전표번호</td>
				<td>지점</td>
				<td>판매일자</td>
				<td>피자코드</td>
				<td>피자명</td>
				<td>판매수량</td>
				<td>매출액</td>
			</tr>
			<%
			
				String sql = "select a.saleno, a.scode, c.sname, a.saledate, a.pcode, b.pname, amount, amount * cost * a.amount " +
						"from TBL_SALELIST_01 a, TBL_PIZZA_01 b, TBL_SHOP_01 c " +
						"where a.pcode = b.pcode " +
						"and a.scode = c.scode " +
						"order by saleno ";
				
				ResultSet rs = dbconnection.getRs(sql); 
				while(rs.next()){
					int a = rs.getInt(1);
					String b = rs.getString(2);
					String c = rs.getString(3);
					Date d = rs.getDate(4);
					String e = rs.getString(5);
					String f = rs.getString(6);
					int g = rs.getInt(7);
					int h = rs.getInt(8);
					
				
			%>
			<tr>
								<td><%=a%></td>
								<td><%=b%>-<%=c%></td>
								<td><%=d%></td>
								<td><%=e%></td>
								<td><%=f%></td>
								<td><%=g%></td>
								<td>W<%=h%></td>
				
			</tr>
			<% } %>
		</table>
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
</html>