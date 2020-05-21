<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.util.Date, java.text.SimpleDateFormat"
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>500에러 발생 페이지</title>
</head>
<body>
	<%
		Date d = new Date();
		SimpleDateFormat f = new SimpleDateFormat("yyyy-MM-dd");
		String date = f.format(d);
		SimpleDateFormat t = new SimpleDateFormat("hh-mm-ss");
		String time = t.format(d);
	%>
	오늘의 날짜: <%=date %><br>
	지금의 시간: <%=Time %><br> <!-- 변수명 time을 고의로 Time으로 적어 에러를 발생시켰다. -->
</body>
</html>