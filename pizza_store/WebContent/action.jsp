<%@page import="DBPKG.Dbconnecter"%>
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
	case "add":
		String a = request.getParameter("test1");
		String b = request.getParameter("test2");
		String c = request.getParameter("test3");
		String d = request.getParameter("test4");
		String e = request.getParameter("test5");
		String f = request.getParameter("test6");

		
		sql = "insert into TBL_VOTE_202005 values('"+ a +"', '"+ b +"', '"+ c +"', '"+ d +"', '"+ e +"', '"+ f +"')";
		
		
		Dbconnecter.Insert(sql);
		
		url="index.jsp";
		msg= a +", "+ b +", "+ c +", "+ d +", "+ e +", "+ f;
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