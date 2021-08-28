
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
				<h2>보유도서관리 (등록)</h2>
				<form action="action.jsp" method="post" name="form"
					onsubmit="return true">
					<input type="hidden" name="action" value="index" />
					<table>
						<tr>
							<td>도서코드(자동채번)</td>
							<td><input type="text" name="book_code"></td>
						</tr>
						<tr>
							<td>도서명</td>
							<td><input type="text" name="book_name"></td>
						</tr>
						<tr>
							<td>장르(a.에세이, b.인문, c.소설)</td>
							<td><input type="text" name="book_type"></td>
						</tr>
						<tr>
							<td>작가</td>
							<td><input type="text" name="book_author"></td>
						</tr>
						<tr>
							<td>입고일자</td>
							<td><input type="text" name="in_date"></td>
						</tr>
						<tr>
							<td>도서상태</td>
							<td>		
								<select>
									    <option value="0">대여가능</option>
									    <option value="1">대여중</option>
								</select></td>
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
