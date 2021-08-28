
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="DBPKG.DBconnector"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
	request.setCharacterEncoding("UTF-8");
    ResultSet rs = null;
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/css.css">
</head>
<body>
	<div class="wrap">
		<header>
			<div class="txt">
				<h1>매장별 커피 판매관리 ver 1.0</h1>
			</div>
			<nav>
				<%@ include file="nav.jsp" %>
			</nav>
		</header>
		<main>
			<section>
				<h2>매장별 커피 판매관리 프로그램</h2>
				<div class="index-txt">
					<table>
						<tr>
							<td>비번호</td>
							<td>상품코드</td>
							<td>판매날짜</td>
							<td>매장코드</td>
							<td>상품명</td>
							<td>판매수량</td>
							<td>총판매액</td>
						</tr>
						<tr>
						
						<%
							String sql = "select c.saleno, c.pcode, c.saledate, c.scode, a.name, c. amount, (a.cost * c.amount) from tbl_product_01 a, tbl_shop_01 b, tbl_salelist_01 c where a.pcode = c.pcode and b.scode = c.scode";
							rs = DBconnector.getRs(sql);
							while (rs.next()) {
								int saleno = rs.getInt(1);
								String pcode = rs.getString(2);
								Date saledate = rs.getDate(3);
								String scode = rs.getString(4);
								String name = rs.getString(5);
								int amount = rs.getInt(6);
								int total = rs.getInt(7);
							%>
							<td><%=saleno%></td>
							<td><%=pcode%></td>
							<td><%=saledate%></td>
							<td><%=scode%></td>
							<td><%=name%></td>
							<td><%=amount%></td>
							<td><%=total%></td>
	
						
						<%
						}
						%>
						</tr>
						</table>
				</div>
			</section>
		</main>
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserved. Human Resources Development Service of Korea.</p>
		</footer>
	</div>
</body>
</html>
