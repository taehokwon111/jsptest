
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
				<h2>회원정보 관리</h2>
				<form action="action.jsp" method="post" name="form"
					onsubmit="return true">
					<input type="hidden" name="action" value="index" />
					<table>
						<tr>
							<td>회원번호</td>
							<td><input type="text" name="cust_no"></td>
						</tr>
						<tr>
							<td>회원성명</td>
							<td><input type="text" name="cust_name"></td>
						</tr>
						<tr>
							<td>휴대폰번호</td>
							<td><input type="text" name="phone"></td>
						</tr>
						<tr>
							<td>주소</td>
							<td><input type="text" name="address"></td>
						</tr>
						<tr>
							<td>가입일자</td>
							<td><input type="text" name="joindate"></td>
						</tr>
						<tr>
							<td>상태구분</td>
							<td>
								<select>
									    <option value="0">정상</option>
									    <option value="1">휴먼</option>
									    <option value="2">탈퇴</option>
								</select>
							</td>
						</tr>
						<tr>
							<td colspan="2">
								<button type="sumbit">수정</button>
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
