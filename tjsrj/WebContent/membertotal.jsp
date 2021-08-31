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
		<h1>(과정평가형 2020-058) 지역구의원투표 프로그램 ver 1.0</h1>
	</header>
	<%@include file="nav.jsp" %>
	<section>
		<h4>후보자 정보 공개</h4>
		<table align="center">
			<tr>
				<td>후보자명</td>
				<td>당명</td>
				<td>득표수</td>
			</tr>
			<%
				String sql = "select a.m_name, b.p_name, count(c.M_NO) " +
						"from TBL_MEMBER_202005 a, TBL_PARTY_202005 b, TBL_VOTE_202005 c " +
						"where a.m_no = c.m_no and a.p_code = b.p_code and c.v_confirm = 'Y' " +
						"group by a.m_name, p_name " +
						"order by count(c.M_NO) desc";
							
				ResultSet rs = dbconnection.getRs(sql);

				while(rs.next()){
					
				 
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getInt(3) %></td>
			</tr>
			<% } %>
		</table>
	</section>
	<footer><p>HRDKOREA Copyright@2019 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
</html>