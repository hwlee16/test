<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<%
	String name = request.getParameter("NAME");
	System.out.println(name);

%>


<title>�Խ��� �ǽ�</title>
</head>
<body>
	<h2>�۾���</h2>
    <form action="/yeon_lecture/Lec_01.jsp" method="POST">

        �̸� : <input type=TEXT NAME=NAME><BR>

        ���� : <input type=TEXT NAME=TITLE><BR>

        <TEXTAREA COLS=50 ROWS=5 NAME=CONTENT></TEXTAREA><BR>

        <INPUT TYPE=SUBMIT VALUES='����'>

         <INPUT TYPE=RESET VALUES='���'>

    </form>

</body>

</html>



