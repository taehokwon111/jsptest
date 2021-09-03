<%@page import="java.sql.Date"%>
<%@page import="DBPKG.Dbconnecter"%>
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
	<script type="text/javascript">
		function dmddo() {
			if (document.dmddo.test1.value == null) {
				alert("지점코드를 입력해주세요!")
				re_zero();
			}
			if (document.dmddo.test2.value == null) {
				alert("판매일자를 입력해주세요!")
				re_zero();
			}
			if (document.dmddo.test3.value == null) {
				alert("피자코드를 입력해주세요!")
				re_zero();
			}
			if (document.dmddo.test4.value == null) {
				alert("판매수량 입력해주세요!")
				re_zero();
			}

			function re_zero() {
				location.reload();
			}

		}
	</script>
	<header>
		<h1> 피자전문점 판매관리 프로그램 ver 1.0</h1>
	</header>
	<%@include file="nav.jsp" %>
	<section>
		<h4>피자전문점 판매관리 프로그램</h4>
		<form method="post" name="dmddo" action="action.jsp">

			<input type="hidden" name="action" value="add">
			<table align="center">
				<tr>
					<td>매출전표번호</td>
					<td><input type="text" name="test1"></td>
				</tr>
				<tr>
					<td>지점코드</td>
					<td><input type="text" name="test2"></td>
				</tr>

				<tr>
					<td>판매일자</td>
					<td><input type="text" name="test4"></td>
				</tr>
					<%
					String sql = "select pcode, pname from TBL_Pizza_01";
					ResultSet rs = Dbconnecter.getRs(sql);
					%>
				<tr>
					<td>피자코드</td>
					<td><select name="test3">
				<%
					while (rs.next()) {
					%>
							<option value="<%=rs.getString(1)%>">[<%=rs.getString(1)%>] <%=rs.getString(2)%></option>
							
							<%
					}
							%>
					</td>
				</tr>
				<tr>
					<td>판매수량</td>
					<td><input type="text" name="test5"></td>
				</tr>

				<tr>
					<td colspan="2">
						<button type="submit" onclick="dmddo()">전표등록</button>
						<button type="button" onclick="window.location.href='add.jsp'">다시쓰기</button>
					</td>
				</tr>
			</table>
		</form>
	</section>
	<footer>
		<p>HRDKOREA Copyright@2019 All rights reserved, Human Resources
			Development Service of Korea.</p>
	</footer>
</body>

</html>