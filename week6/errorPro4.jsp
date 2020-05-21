<%@page import="java.util.Scanner"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>500에러 발생 페이지</title>
</head>
<body>
	<%
		String id = "abcd";
		String pwd = "efgh";
	%>
	
	입력하신 아이디는 <%=id %>, 비밀번호는 <%=Pwd %>입니다.	<!-- 비밀번호의 변수명인 pwd를 고의로 Pwd로 적어 에러를 만들었다. -->
</body>
</html>