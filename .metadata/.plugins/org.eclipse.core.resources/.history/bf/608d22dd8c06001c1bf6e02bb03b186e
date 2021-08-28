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
	case "addsales":
		String sale_no = request.getParameter("sale_no");
		String sale_ymd =request.getParameter("sale_ymd");
		String sale_fg = request.getParameter("sale_fg");
		String store_cd = request.getParameter("store_cd");
		String goods_cd = request.getParameter("goods_cd");
		String sale_cnt = request.getParameter("sale_cnt");
		String pay_type = request.getParameter("pay_type");
		
		sql = "insert into SALE_TBL_003 values('"+sale_no+"','"+sale_ymd+"','"+sale_fg+"','"+store_cd+"','"+goods_cd+"','"+sale_cnt+"','"+pay_type+"')";
		dbconnection.Insert(sql);
		
		url="addsales.jsp";
		msg="저장되었습니다";
		break;
	case "addproduct":
		goods_cd = request.getParameter("goods_cd");
		String goods_nm = request.getParameter("goods_nm");
		String goods_price = request.getParameter("goods_price");
		String cost = request.getParameter("cost");
		String in_date = request.getParameter("in_date");
		
		sql = "insert into GOODS_TBL_003 values('"+goods_cd+"','"+goods_nm+"','"+goods_price+"','"+cost+"','"+in_date+"')";
		dbconnection.Insert(sql);
		
		url="addproduct.jsp";
		msg="저장되었습니다";
		break;

	case "updateproduct":
		goods_cd = request.getParameter("goods_cd");
		goods_nm = request.getParameter("goods_nm");
		goods_price = request.getParameter("goods_price");
		cost = request.getParameter("cost");
		in_date = request.getParameter("in_date");
		
		sql = "update goods_tbl_003 set goods_nm = '"+goods_nm+"',goods_price = "+goods_price+",cost = "+cost+" where goods_cd = '"+goods_cd+"'";
		System.out.println(sql);
		
		dbconnection.Insert(sql);
		
		
		url="productmanager.jsp";
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