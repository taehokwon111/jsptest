
<%@page import="DBPKG.DBconnector"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
ResultSet rs = null;
int a = 0;
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="css/style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<div class="txt">
				<p>도서 대여 관리 ver 1.0</p>
			</div>
			<nav>
				<%@ include file="nav.jsp"%>
			</nav>
		</header>
		<main>
			<section>
				<h2>회원등록</h2>
				<table>
					<thead>
						<th></th>
						<th>회원번호</th>
						<th>회원성명</th>
						<th>핸드폰번호</th>
						<th>주소</th>
						<th>가입일자</th>
						<th>상태구분</th>
					</thead>
					<tbody>
						<tr>
						<%
							String sql = "select a.cust_no, a.cust_name, a.phone, a.address, a.join_date, a.stat_fg from member_tbl_001 a";
							rs = DBconnector.getRs(sql);
							while (rs.next()) {
								int one= rs.getInt(1);
								String two= rs.getString(2);
								String three = rs.getString(3);
								String four = rs.getString(4);
								String five = rs.getString(5);
								String six = rs.getString(6);
								a++;
						
							%>
						<td><%=a%></td>
						<td><%=one%></td>
						<td><%=two%></td>
						<td><%=three%></td>
						<td><%=four%></td>
						<td><%=five%></td>
						<td><%=six %></td>
						<%
							}
						%>
							<td colspan="7">
								<button onclick="location.href = 'addmember.jsp'">신규</button>
							</td>
						</tr>


					</tbody>
				</table>


			</section>
		</main>
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserved. Human Resources
				Development Service of Korea.</p>
		</footer>
	</div>
</body>
</html>