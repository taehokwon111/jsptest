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
				<td>점포명</td>
				<td>현금매출</td>
				<td>카드매출</td>
				<td>총매출</td>
			</tr>
			<%
				String sql = " select b.store_cd, b.store_nm, "+
						" sum(a.goods_price * case when c.pay_type = '01' then c.sale_cnt else 0 end), "+
						" sum(a.goods_price * case when c.pay_type = '02' then c.sale_cnt else 0 end), "+
						" sum(a.goods_price * c.sale_cnt) "+
						" from goods_tbl_003 a, store_tbl_003 b, sale_tbl_003 c "+
						" where b.store_cd = c.store_cd "+
						" and a.goods_cd = c.goods_cd "+
						" group by b.store_cd, b.store_nm "+
						" order by 5 desc";
				
				ResultSet rs = dbconnection.getRs(sql); 
				while(rs.next()){
					String store_cd = rs.getString(1);
					String store_nm = rs.getString(2);
					int cash = rs.getInt(3);
					int card = rs.getInt(4);
					int total = rs.getInt(5);
					
				
			%>
			<tr>
				<td><a href="storeinformation.jsp?goods_cd=<%=store_cd%>"><%=store_nm %></a></td>
				<td><%=cash %></td>
				<td><%=card %></td>
				<td><%=total %></td> 
			</tr>
			<% } %>
		</table>
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
</html>