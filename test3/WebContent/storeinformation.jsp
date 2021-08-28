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
				<td>판매구분</td>
				<td>판매번호</td>
				<td>판매일자</td>
				<td>상품명</td>
				<td>판매수량</td>
				<td>판매금액</td>
				<td>수취구분</td>
			</tr>
			<%
				String store_cd = request.getParameter("goods_cd");
				String sql = " select sale_fg, sale_no, sale_ymd, goods_nm, sale_cnt,sale_cnt*goods_price, pay_type "+
						" from goods_tbl_003 a, store_tbl_003 b, sale_tbl_003 c "+
						" where b.store_cd = c.store_cd "+
						" and a.goods_cd = c.goods_cd "+
						" and b.store_cd = '"+store_cd+"'" ;
						
				
				ResultSet rs = dbconnection.getRs(sql); 
				while(rs.next()){
					
					String sale_fg = rs.getString(1);
					String sale_no = rs.getString(2);
					String sale_ymd = rs.getString(3);
					String goods_nm = rs.getString(4);
					String sale_cnt = rs.getString(5);
					String sale_amt = rs.getString(6);
					String pay_type = rs.getString(7);
				
			%>
			<tr>
				<td><%=sale_fg %></td>
				<td><%=sale_no %></td>
				<td><%=sale_ymd %></td>
				<td><%=goods_nm %></td>
				<td><%=sale_cnt %></td>
				<td><%=sale_amt %></td>
				<td><%=pay_type %></td>
			</tr>
			<% } %>
		</table>
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
</html>