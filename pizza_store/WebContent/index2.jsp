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
		<h4>통합매출현황조회</h4>
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
				String sql = "select a.saleno, a.scode, c.sname, a.saledate, a.pcode, b.pname, amount, cost * a.amount " +
						"from TBL_SALELIST_01 a, TBL_PIZZA_01 b, TBL_SHOP_01 c " +
						"where a.pcode = b.pcode " +
						"and a.scode = c.scode  " +
						"order by saleno";
				ResultSet rs = Dbconnecter.getRs(sql);
				while (rs.next()) {
			%>
			<tr>
				<td><%=rs.getString(1)%></td>
				<td><%=rs.getString(2)%>-<%=rs.getString(3)%></td>
				<td><%=rs.getString(4)%></td>
				<td><%=rs.getString(5)%></td>
				<td><%=rs.getString(6)%></td>
				<td><%=rs.getString(7)%></td>
				<td><%=rs.getString(8)%></td>
				
				
			</tr>
			<%
				}
			%>
		</table>
	</section>
</body>
</html>