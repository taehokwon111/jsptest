
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
<link rel="stylesheet" href="./style.css">
</head>
<body>
	<div class="wrap">
		<header>
			<div class="txt">
				<h1>도서대여관리 ver 1.0</h1>
			</div>
			<nav>
				<%@ include file="nav.jsp"%>
			</nav>
		</header>
		<main>
			<section>
				<h2>대여도서 등록</h2>
				<form action="action.jsp" method="post" name="form"
					onsubmit="return true">
					<input type="hidden" name="action" value="index" />
					<table>
						<tr>
							<td>대여일자</td>
							<td><input type="text" name="rent_ymd"></td>
						</tr>
						<tr>
							<td>대여번호(자동채번)</td>
							<td><input type="text" name="rent_no"></td>
						</tr>
						<tr>
							<td>도서코드</td>
							<td><input type="text" name="rent_book"></td>
						</tr>
						<tr>
							<td>고객번호</td>
							<td><input type="text" name="rent_rent"></td>
						</tr>
						<tr>
							<td>반납기한(대여일 7일 후)</td>
							<td><input type="text" name="close_ymd"></td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="sumbit">삭제</button>
								<button type="button" onclick="location.href='book_list.jsp'">조회</button>
							</td>
						</tr>
					</table>
				</form>
			</section>
		</main>
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserved. Human Resources
				Development Service of Korea.</p>
		</footer>
	</div>
</body>
</html>
