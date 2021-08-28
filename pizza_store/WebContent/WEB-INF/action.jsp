<%@page import="DBPKG.dbconnection"%>
<%@page import="java.sql.Date"%>
<%@page import="java.sql.ResultSet"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<% 
	request.setCharacterEncoding("UTF-8");
	String action = request.getParameter("action");
	ResultSet rs = null;
	String url = null;
	String msg = null;
	String sql = "";
	
	switch(action){

	case "addproduct":
		
		int saleno = Integer.parseInt(request.getParameter("saleno"));
		String scode = request.getParameter("scode");
		Date saledate = request.getParameter("saledate");
		String pcode = request.getParameter("pcode");
		int amount = Integer.parseInt(request.getParameter("amount"));
		
//		sql = "insert into GOODS_TBL_003 values('"+goods_cd+"','"+goods_nm+"','"+goods_price+"','"+cost+"','"+in_date+"')";
		dbconnection.Insert(sql);
		
		url="addproduct.jsp";
		msg="저장되었습니다";
		break;

	}

    
%>  
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<script type="text/javascript">
		alert("<%=msg%>")
		window.location.href="<%=url%>"
	</script>
</body>
</html>