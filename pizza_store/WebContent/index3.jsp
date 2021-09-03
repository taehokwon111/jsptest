<%@page import="DBPKG.Dbconnecter"%>
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
		<h1> 피자전문점 판매관리 프로그램 ver 1.0</h1>
	</header>
		<%@include file="nav.jsp" %>
	<section>
		<h4>상품별 매출 현황</h4>
		<table align="center">
			<tr>
				<td>피자코드</td>
				<td>피자 명</td>
				<td>총 매출액</td>
		
			</tr>
			<%
				String sql = "select a.pcode, b.pname, sum(cost * a.amount) " +
						"from TBL_SALELIST_01 a, TBL_PIZZA_01 b, TBL_SHOP_01 c " +
						"where a.pcode = b.pcode " +
						"and a.scode = c.scode " +
						"group by a.pcode, b.pname " +
						"order by sum(cost * a.amount) desc";
				ResultSet rs = Dbconnecter.getRs(sql);
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3)%></td>
	
				
				
			</tr>
			<%
				}
			%>
		</table>
	</section>
</body>
</html>