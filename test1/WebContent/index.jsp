
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
<link rel="stylesheet" href="css/css.css">
</head>
<body>
	<div class="wrap">
		<header>
			<div class="txt">
				<h1>매장별 커피 판매관리 ver 1.0</h1>
			</div>
			<nav>
				<%@ include file="nav.jsp" %>
			</nav>
		</header>
		<main>
			<section>
				<h2>매장별 커피 판매관리 프로그램</h2>
				<div class="index-txt">
				<p>매장별 커피 판매를 위한 프로그램이다</p>
		<p>1. 상품테이블, 매장테이블, 판매테이블을 추가한다.</p>
		<p>2. 판매등록, 판매현황, 매장별판매액, 상품별 판매액 페이지를 작성한다.</p>
		<p>3. 올바르게 구현되었는지 확인한다.</p>

				</div>
			</section>
		</main>
		<footer>
			<p>HRDKOREA Copyright@2016 All rights reserved. Human Resources Development Service of Korea.</p>
		</footer>
	</div>
</body>
</html>
