<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력 폼</title>
</head>
<body>
	<h2>학번, 이름, 학년, 선택과목을 입력하는 폼</h2>
	<form action="project1Pro.jsp" method="post">
		학번 : <input type="text" name="num"><br>
		이름 : <input type="text" name="name"><br>
		학년 : <input type="radio" name="grade" value="1">1학년 &nbsp;
					<input type="radio" name="grade" value="2">2학년<br>
		선택과목 : 
		<select name="subject">
			<option value="Java">Java
			<option value="JSP">JSP
			<option value="XML">XML
		</select><br>
		취미 : <input type="checkbox" name="hobby" value="축구">축구&nbsp;
		<input type="checkbox" name="hobby" value="야구">야구&nbsp;
		<input type="checkbox" name="hobby" value="농구">농구<br>
		<input type="submit" value="입력완료">
	</form>
</body>
</html>