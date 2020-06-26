<%@page import="java.sql.PreparedStatement"%>
<%@page import="javax.naming.InitialContext"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="javax.sql.DataSource"%>
<%@page import="javax.naming.Context"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%
	request.setCharacterEncoding("utf-8");

	//1. Context 객체 얻기
	Context initCtx = new InitialContext();

	//2. "java:comp/env" 에 해당하는 객체를 찾아서 envCtx에 삽입
	Context envCtx = (Context) initCtx.lookup("java:comp/env");

	//3. "jdbc/animal"에 해당하는 개체를 찾아서 ds에 삽입
	DataSource ds = (DataSource) envCtx.lookup("jdbc/animal");
	
	//4. 커넥션 풀로 부터 커넥션 객체를 얻어냄
	Connection conn = ds.getConnection();
	
	String sql = "UPDATE WRITER SET U_PW=?, U_NAME=? WHERE U_ID=?";
	PreparedStatement pst = conn.prepareStatement(sql);
	pst.setString(1, request.getParameter("pwd"));
	pst.setString(2, request.getParameter("name"));
	pst.setString(3, request.getParameter("id"));
	
	int i = pst.executeUpdate();
	
	pst.close();
	conn.close();
	
	response.sendRedirect("adminMain.jsp");

%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	
</body>
</html>