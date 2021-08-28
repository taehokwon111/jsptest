
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
				<h2>매장별 판매액</h2>
				<div class="index-txt">
					<table>
						<tr>
							<td>매장코드</td>
							<td>매장명</td>
							<td>매장별 판매액</td>
						</tr>
						<tr>
						
						<%
							String sql = "select TPRO.pcode, TPRO.name, sum(TPRO.cost * tsale.amount) as HAP from tbl_product_01 TPRO join tbl_salelist_01 TSALE on TSALE.pcode = TPRO.pcode GROUP BY TPRO.pcode, TPRO.name ORDER BY TPRO.pcode ASC";
							rs = DBconnector.getRs(sql);
							while (rs.next()) {
								String saleno = rs.getString(1);
								String pcode = rs.getString(2);
								int saledate = rs.getInt(3);
						
							%>
							<td><%=saleno%></td>
							<td><%=pcode%></td>
							<td><%=saledate%></td>
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
