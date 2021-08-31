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
				<td>기호</td>
				<td>출마자명</td>
				<td>당</td>
				<td>학위</td>
				<td>주민번호</td>
				<td>출마구</td>
			</tr>
			<%
				String sql = "select m_no, m_name, p_code, p_school, concat(concat(SUBSTR(m_jumin, 1, 6),'-'), SUBSTR(m_jumin, 7, 12)), m_city from TBL_MEMBER_202005";
				
				ResultSet rs = dbconnection.getRs(sql); 
				while(rs.next()){
			
					
				
			%>
			<tr>
				<td><%=rs.getString(1) %></td>
				<td><%=rs.getString(2)%></td>
				<td><%=rs.getString(3) %></td>
				<%
				switch(rs.getString(4)){
				
				case "1" : 
					%>
					<td>고졸</td>
					<%
					break;
					
				case "2" : 
					%>
					<td>학사</td>
					<%
					break;
				
				case "3" : 
					%>
					<td>석사</td>
					<%
					break;
					
				case "4" : 
					%>
					<td>박사</td>
					<%
					break;
					
				}
				%>
				<td><%=rs.getString(5) %></td>
				<td><%=rs.getString(6) %></td>
				
			</tr>
			<% } %>
		</table>
	</section>
	<footer><p>HRDKOREA Copyright@2019 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
</html>