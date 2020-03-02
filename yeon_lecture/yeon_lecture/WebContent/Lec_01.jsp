<%@page import="java.io.PrintWriter"%>
<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%
	String name = request.getParameter("NAME");
	
	response.setContentType("text/html; charset=euc-kr");
	PrintWriter out2 = response.getWriter();
	




%>
<title>Insert title here</title>
</head>
<body>
<h1>JSP 강좌 2강</h1>
	<h2><%=name %></h2>
</body>
</html>