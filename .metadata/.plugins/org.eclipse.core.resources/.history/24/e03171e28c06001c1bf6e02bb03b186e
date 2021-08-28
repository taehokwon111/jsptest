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
	<header>
		<h1>편의점 매출관리 ver1.0</h1>
	</header>
	<%@include file="nav.jsp" %>
	<section>
		<h4>매출등록</h4>
		<form method="post" name="action" onclick="art()" action="action.jsp">
		<input type="hidden" name="action" value="addsales">
			<table align="center">
			<%
			Connection con = null;
			ResultSet rs = null;
			PreparedStatement stmt = null;
			
			con = dbconnection.getConnection();
			
			String sql = "select to_char(saleseq.nextval, 'fm0000'), to_char(sysdate,'yyyymmdd') from dual";
			
			stmt = con.prepareStatement(sql);
			
			rs = stmt.executeQuery();
			
			if(rs.next()){
				String sale_no = rs.getString(1);
				String sale_ymd = rs.getString(2);
		
			%>
				<tr>
					<td>판매번호(자동발생)</td>
					<td><input type="text" name="sale_no" value="<%=sale_no%>"></td>
				</tr>
				<tr>
					<td>판매일자(자동발생)</td>
					<td><input type="text" name="sale_ymd" value="<%=sale_ymd%>"></td>
				</tr>
				<% } %>
				<tr>
					<td>판매구분</td>
					<td>
						<select name="sale_fg">
							<option value="">선택</option>
							<option value="1">판매</option>
							<option value="2">판매취소</option>
						</select>
					</td>
				</tr>
				<tr>
					<td>판매점포</td>
					<td>
						<select name="store_cd">
							<option value="">선택</option>
							<% 
							sql = "select store_cd, store_nm from STORE_TBL_003";
							
							rs = dbconnection.getRs(sql);
							
							while(rs.next()){
								String store_cd = rs.getString(1);
								String store_nm = rs.getString(2);
								
							
							%>
							<option value="<%=store_cd%>"><%=store_nm %></option>
							<% } %>
						</select>
					</td>
				</tr>
				<tr>
					<td>판매상품</td>
					<td>
						<select name="goods_cd">
							<option value="">선택</option>
							<%
							sql = "select goods_cd, goods_nm from GOODS_TBL_003";
							
							rs = dbconnection.getRs(sql);
							while(rs.next()){
								String goods_cd = rs.getString(1);
								String goods_nm = rs.getString(2);
							
							%>
							<option value="<%=goods_cd%>"><%=goods_nm %></option>
						
							<% } %>
						</select>
					</td>
				</tr>
				<tr>
					<td>판매수량</td>
					<td><input type="text" name="sale_cnt" value=""></td>
				</tr>
				<tr>
					<td>수취구분</td>
					<td>
						<select name="pay_type">
							<option value="">선택</option>
							<option value="01">현금</option>
							<option value="02">카드</option>
						</select>
					</td>
				</tr>
				<tr>
					<td colspan="2">
						<button type="submit">등록</button>
						<button>조회</button>
					</td>
				</tr>
			</table>
		</form>	
	</section>
	<footer><p>HRDKOREA Copyright@2016 All rights reserved, Human Resources Development Service of Korea.</p></footer>
</body>
<script type="text/javascript">
	function art() {
		if(form.goods_cd.value ===''){
			alert('판매구분을 입력하지 않았습니다');
			return false;
		}
		if(form.sale_cnt.value ===''){
			alert('판매수량을 입력하지 않았습니다');
			return false;
			
		}
	}

</script>
</html>