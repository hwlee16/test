<%@ page language="java" contentType="text/html; charset=EUC-KR"

    pageEncoding="EUC-KR"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>

<head>

<meta http-equiv="Content-Type" content="text/html; charset=EUC-KR">

<title>Insert title here</title>

</head>

<body>

�� jsp��<br/>      <!-- html �ּ� -->



<% 

//���� jsp ����

//out.print("�� �ڹپ�");     // �� ���� �ڹ� ����

request.setCharacterEncoding("UTF-8"); //�޾ƿ� �������� ���ڵ�

String irum = request.getParameter("irum"); //�Ѱܿ��� �������߿� irum�Ӽ��� ������

String age = request.getParameter("nai");  //�Ѱܿ��� �������߿� nai �Ӽ��� ������

String weight = request.getParameter("weight");  //�Ѱܿ��� �������߿� nai �Ӽ��� ������

String gender = request.getParameter("gender");  //�Ѱܿ��� �������߿� nai �Ӽ��� ������

%>



�Ѿ� �� �� ��� : <br/>

<%

out.print("�̸���  " + irum);

out.print("<br/>���̴�  " + age);

out.print("<br/>�����Դ� : " + weight);

out.print("<br/>������ : " + gender);
%>

</body>

</html>
