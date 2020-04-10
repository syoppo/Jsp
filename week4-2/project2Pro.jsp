<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%
		String url = request.getParameter("url");
	
		switch(Integer.parseInt(url)){	//value값을 받을 땐 문자열 숫자로 변환시키기
		case 1:
			response.sendRedirect("http://www.oracle.com");
			break;
		case 2:
			response.sendRedirect("http://apache.org");
			break;
		case 3:
			response.sendRedirect("http://eclipse.org");
			break;
		}
	%>
</body>
</html>