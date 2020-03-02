<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%
	String data = "1, mini, sea\r\n" + 
				"2, xmlmana, ttttt\r\n" +
				"3, w3c, tjksdtjlkj\r\n";
%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html"  charset="UTF-8">
<title>Excel download</title>
</head>
<body>
	<h1> 엑셀 다운로드 예제</h1>
	<form action="<%= request.getContextPath() %>/miniexport" method="post" name="frmDownload">
		<input type="hidden" name="result" value="<%=data %>"  />
		<input type="Submit"  value="엑셀파일 다운로드"  />
	</form>
	
</body>
</html>