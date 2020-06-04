<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	request.setCharacterEncoding("utf-8");%>
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
	<title>글쓰기 결과 화면 출력</title>
</head>
<body>
	<jsp:useBean id="w" class="ch10.pj02" scope="page">
		<jsp:setProperty name="w" property="*"/>
	</jsp:useBean>
	<h1>글쓰기</h1>
	<table>
		<tr>
			<td colspan="2"><a href="">글목록</a></td>
		</tr>
		<tr>
			<th>이름</th>
			<td>${w.name }</td>
		</tr>
		<tr>
			<th>제목</th>
			<td>${w.title }</td>
		</tr>
		<tr>
			<th>이메일</th>
			<td>${w.email }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${w.textarear }</td>
		</tr>
		<tr>
			<th>비밀번호</th>
			<td>${w.pwd }</td>
		</tr>	
		<tr>
		 <td colspan="2"><input type="button" value="돌아가기" onclick="location.href='elProject2Form.jsp'"></td>
	</table>
	<hr>
</body>
</html>