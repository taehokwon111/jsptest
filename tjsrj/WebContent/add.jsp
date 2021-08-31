<%@page import="java.sql.Date"%>
<%@page import="DBPKG.dbconnection"%>
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
	if(document.dmddo.test1.value == null){
		alert("주민번호를 입력해주세요!")
		re_zero();
	}
	if(document.dmddo.test2.value == null){
		alert("투표자이름을 입력해주세요!")
		re_zero();
	}
	if(document.dmddo.test3.value == null){
		alert("후보자이름을 입력해주세요!")
		re_zero();
	}
	if(document.dmddo.test4.value == null){
		alert("투표시간을 입력해주세요!")
		re_zero();
	}
	if(document.dmddo.test5.value == null){
		alert("투표장소를 입력해주세요!")
		re_zero();
	}
	if(!document.dmddo.test6[0].chacked && !document.action.test6[1].chacked){
		alert("후보자확인을 입력해주세요!")
		re_zero();
	}
	
	function re_zero() {
		location.reload();
	}
	
}

</script>
	<header>
		<h1>(과정평가형 2020-058) 지역구의원투표 프로그램 ver 1.0</h1>
	</header>
	<section>
		<h4>투표하기</h4>
		<form method="post" name="dmddo"  action="action.jsp">
	
		<input type="hidden" name="action" value="add">
			<table align="center">
			<%
			Connection con = null;
			ResultSet rs = null;
			PreparedStatement stmt = null;
			con = dbconnection.getConnection();
		
			%>
				<tr>
					<td>주민번호</td>
					<td><input type="text" name="test1"> 예)03028300001</td>
				</tr>
				<tr>
					<td>투표자명</td>
					<td><input type="text" name="test2"></td>
				</tr>
				<tr>
					<td>후보자명</td>
					<td><select name="test3">
					<option value="">후보선택</option> 
					<option value="1">은후보</option>
					<option value="2">감후보</option> 
					<option value="3">김후보</option>
					<option value="4">이후보</option>
					<option value="5">박후보</option> 
					<option value="6">서후보</option> 
					
					</td>
				</tr>
				<tr>
					<td>투표시간</td>
					<td><input type="text" name="test4" ></td>
				</tr>
				<tr>
					<td>투표장소</td>
					<td><input type="text" name="test5" ></td>
				</tr>
				<tr>
					<td>후보자확인</td>
					<td>
					<input type="radio" name="test6" value="N">확인
					<input type="radio" name="test6" value="Y">미확인
					</td>
				</tr>
				
				<tr>
					<td colspan="2">
						<button type="submit" onclick="dmddo()">투표하기</button>
						<button type="button" onclick="window.location.href='add.jsp'">다시쓰기</button>
					</td>
				</tr>
			</table>
		</form>	
	</section>
	<footer><p>HRDKOREA Copyright@2019 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>

</html>