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


<title>게시판 실습</title>
</head>
<body>
	<h2>글쓰기</h2>
    <form action="/yeon_lecture/Lec_01.jsp" method="POST">

        이름 : <input type=TEXT NAME=NAME><BR>

        제목 : <input type=TEXT NAME=TITLE><BR>

        <TEXTAREA COLS=50 ROWS=5 NAME=CONTENT></TEXTAREA><BR>

        <INPUT TYPE=SUBMIT VALUES='저장'>

         <INPUT TYPE=RESET VALUES='취소'>

    </form>

</body>

</html>



