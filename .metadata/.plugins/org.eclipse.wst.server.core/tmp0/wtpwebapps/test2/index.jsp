
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
				<h1>도서대여관리 ver 1.0</h1>
			</div>
			<nav>
				<%@ include file="nav.jsp"%>
			</nav>
		</header>
		<main>
			<section>
				<h2>도서대여관리 프로그램</h2>

				<div class="index-txt">
					<p>도서관 회원정보, 도서정보, 대여정보 데이터베이스를 구축하고 도서대여관리 프로그램을 작성하는 프로그램이다.</p>
					<p>1. 회원정보 테이블을 생성한다.</p>
					<p>2. 도서정보 테이블을 생성한다.</p>
					<p>3. 대여정보 테이블을 생성한다.</p>
					<p>4. 회원정보, 도서정보, 대여정보 테이블에 제기된 문제지의 참조데이터를 추가생성한다..</p>
					<p>5. 도서대여정보 입력화면 프로그램을 작성한다.</p>
					<p>6. 회원관리 프로그램을 작성한다..</p>
					<p>7. 도서관리 프로그램을 작성한다.</p>
					<p>8. 도서대여정보 조회 프로그램을 작성한다..</p>


				</div>
			</section>
		</main>
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserved. Human Resources
				Development Service of Korea.</p>
		</footer>
	</div>
</body>
</html>
