<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>


<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
	Connection conn = null;
	PreparedStatement pstmt = null;
	ResultSet rs = null;
	String id_ = "";
	String name_ = "";
	try{
		String driverName = "com.mysql.jdbc.Driver";
		String url        = "jdbc:mysql://localhost:3306/test?serverTimezone=UTC&useSSL=false";
		String id         = "lhw";
		String pwd        = "1234";
		Class.forName(driverName);
		conn = DriverManager.getConnection(url, id, pwd);
	}catch(ClassNotFoundException e){
        out.println("Where is your mysql jdbc driver?");
        e.printStackTrace();
        return;
    }
	out.println("mysql jdbc Driver registered!!");
	
	//Connection conn = DriverManager.getConnection(url,id,pwd);
    out.println("DB연결성공!!");
    
    String sql = "select * from test "; // sql 쿼리
    pstmt = conn.prepareStatement(sql); // prepareStatement에서 해당 sql을 미리 컴파일한다. 
    //pstmt.setString(1, "11916"); 
    rs = pstmt.executeQuery(); // 쿼리를 실행하고 결과를 ResultSet 객체에 담는다. 
    while (rs.next()) { // 결과를 한 행씩 돌아가면서 가져온다. 
    	id_ = rs.getString("id"); 
    //String pw = rs.getString("pw"); 
    	name_ = rs.getString("name"); 
    //Timestamp register = rs.getTimestamp("reg_date");
    }
	
  out.println(id_);
  out.println(name_);
    
    conn.close();
%>
</body>
</html>