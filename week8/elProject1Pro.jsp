<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%	request.setCharacterEncoding("utf-8");
%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 입력확인</title>
	<style>
		table {border:1px solid gray; border-collapse:collapse;}
		td {border:1px solid gray; width:150px;}
	</style>
</head>
<body>
	<jsp:useBean id="m" class="ch10.pj01" scope="page">
		<jsp:setProperty name="m" property="*"/>
	</jsp:useBean>
	<h2>학생정보</h2>
	<hr>
	<table>
		<tr>
			<td>학번</td>
			<td>${m.num }</td>			
		</tr>
		<tr>
			<td>이름</td>
			<td>${m.name }</td>			
		</tr>
		<tr>
			<td>학년</td>
			<td>${m.grade }</td>			
		</tr>
		<tr>
			<td>선택과목</td>
			<td>${m.subject }</td>			
		</tr>
		<tr>
			<td>취미</td>
			<td>
			<%
				String[] hobby = m.getHobby();
				for(int i=0; i<hobby.length; i++){
					out.println(hobby[i] + " ");
				}
			%>
			</td>			
		</tr>	
	</table>
</body>
</html>