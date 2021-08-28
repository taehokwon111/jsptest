
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("UTF-8");
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
				<h1>매장별 커피 판매관리 ver 1.0</h1>
			</div>
			<nav>
				<%@ include file="nav.jsp"%>
			</nav>
		</header>
		<h3>판매등록</h3>
		<main>
			<table>
				<tr>
					<td>비번호</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>상품코드</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>판매날짜</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>매장코드</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td>판매수량</td>
					<td><input type="text"></td>
				</tr>
				<tr>
					<td colspan="2">
						<button>등록</button>
						<button>조회</button>
					</td>
				</tr>
			</table>
		</main>
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserved. Human Resources
				Development Service of Korea.</p>
		</footer>
	</div>
</body>
</html>



