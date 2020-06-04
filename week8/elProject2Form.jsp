<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	table, th, td{
		border: 1px solid black;
		border-collapse: collapse;
	}
	table, th, td{
		padding: 10px;
	}
	a{
		text-decoration:none 
	}
</style>
<head>
	<meta charset="UTF-8">
	<title>글쓰기</title>
</head>
<body>
	<h1>글쓰기</h1>
	<form action="elProject2Pro.jsp" method="post">
		<table>
			<tr>
				<td colspan="2"><a href="">글목록</a></td>
			</tr>
			<tr>
				<th>이름</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>제목</th>
				<td><input type="text" name="title"></td>
			</tr>
			<tr>
				<th>이메일</th>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<th>내용</th>
				<td><textarea name="textarear" rows="10" cols="30"></textarea></td>
			</tr>
			<tr>
				<th>비밀번호</th>
				<td><input type="password" name="pwd"></td>
			</tr>
			<tr>
				<td colspan="2" id="btn">
					<input type="submit" value="글쓰기">
					<input type="reset" value="다시작성">
					<input type="button" value="목록보기">
				</td>
			</tr>
		</table>
	</form>
</body>
</html>