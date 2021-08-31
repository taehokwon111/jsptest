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
				<td>투표자명</td>
				<td>생년월일</td>
				<td>나이 (만 나이)</td>
				<td>성별</td>
				<td>투표한 후보자</td>
				<td>투표시간</td>
				<td>투표장소</td>
				<td>후보자확인여부</td>
				
			</tr>
			<%
				String sql = "select c.v_name, SUBSTR(v_jumin, 1, 2) as year, SUBSTR(v_jumin, 3, 2) as month, SUBSTR(v_jumin, 5, 2) as day ,SUBSTR(v_jumin, 12, 2) as test, SUBSTR(v_jumin, 7, 1) as gender, c.m_no, SUBSTR(v_time, 1, 2), SUBSTR(v_time, 3, 2), c.v_area, c.v_confirm " +
						"from TBL_MEMBER_202005 a, TBL_PARTY_202005 b, TBL_VOTE_202005 c " +
						"where a.p_code = b.p_code " +
						"and a.m_no = c.m_no " +
						"group by v_name, v_jumin, c.m_no, v_time, v_area, v_confirm " +
						"order by SUBSTR(v_jumin, 12, 2)";
				
				ResultSet rs = dbconnection.getRs(sql); 
				while(rs.next()){
			
					
				
			%>
			<tr>
				
				<td><%=rs.getString(1) %></td>
				<td>19<%=rs.getString(2)%>년<%=rs.getString(3)%>일<%=rs.getString(4)%>일생</td>
				<%
				int testmen = 0;
				String age1= null;
				
				int aa = Integer.parseInt(rs.getString(2));
				
				if(Integer.parseInt(rs.getString(2)) > 10){
				age1 = "19" + rs.getString(2);
				testmen = 2021 - Integer.parseInt(age1);
				}else{
					age1 = "20" + rs.getString(2);
					testmen = 2021 - Integer.parseInt(age1);
				}
				%>
				<td><%=testmen %>세</td>
				<%
				switch(rs.getString(6)){
				case "1":
				%>
					<td>남자</td>
				<%
				break;
				case "2":
					%>
						<td>여자</td>
					<%
				break;
					
				case "3":
						%>
						<td>남자</td>
					<%
				break;
				case "4":
					%>
						<td>여자</td>
					<%
				break;
					
				}
				%>
				
						<%
				switch(rs.getString(7)){
				case "1":
				%>
					<td>은후보</td>
				<%
				break;
				case "2":
					%>
						<td>강후보</td>
					<%
				break;
					
				case "3":
						%>
						<td>김후보</td>
					<%
				break;
				case "4":
					%>
						<td>이후보</td>
					<%
				break;
				case "5":
					%>
						<td>박후보</td>
					<%
				break;
				case "6":
					%>
						<td>서후보</td>
					<%
				break;
				}
				%>
				
				<td><%=rs.getString(8)%>:<%=rs.getString(9)%></td>
				<td><%=rs.getString(10) %></td>
				<td><%=rs.getString(11) %></td>

				
				
			</tr>
			<% } %>
		</table>
	</section>
</body>
</html>