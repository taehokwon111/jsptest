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
		<h1>피자전문점 판매관리 프로그램 ver1.0</h1>
	</header>
	<%@include file="nav.jsp" %>
	<section>
		<h4>상품정보 등록</h4>
		<form method="post" name="action"  action="action.jsp">
		<input type="hidden" name="action" value="addproduct">
			<table align="center">
			<%
			Connection con = null;
			ResultSet rs = null;
			PreparedStatement stmt = null;
			con = dbconnection.getConnection();
						
			%>
				<tr>
					<td>매출 전표 번호</td>
					<td><input type="text" name="saleno" value=""></td>
				</tr>
				
				<tr>
					<td>지점 코드</td>
					<td><input type="text" name="scode" ></td>
				</tr>
				<tr>
					<td>판매일자</td>
					<td><input type="text" name="saledate" ></td>
				</tr>
				<tr>
					<td>피자코드</td>
					<td>
						<select name="pcode">
						<%
						String sql = "select pcode, pname from TBL_PIZZA_01";
						rs = dbconnection.getRs(sql); 
						while(rs.next()){
							String A = rs.getString(1);
							String B = rs.getString(2);
						
						%>
    						<option value="<%=A%>">[<%=A%>] <%=B%></option>
    						<%} %>
					</td>
				</tr>
				<tr>
					<td>판매수량</td>
					<td><input type="text" name="amount" ></td>
				</tr>
				
				
				<tr>
					<td colspan="2">
						<button type="submit">전표등록</button>
						<button type="button" onclick="window.location.href='addproduct.jsp'">다시쓰기</button>
					</td>
				</tr>
			</table>
		</form>	
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>

</html>