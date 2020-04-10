<%@page import="java.util.Enumeration"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
	table, th, td{
		border: 1px solid black;
		border-collapse: collapse;
		padding: 10px;
	}
	th{
		background-color: purple;
		color: yellow;
	}
	 input[type="submit"]{
		margin:10px;
		margin-left: 35%;
	}
</style>
<head>
	<meta charset="UTF-8">
	<title>과제1</title>
</head>
<body>
	<h2>개인면담 카드</h2>
	<hr>
	<form action="project1Pro.jsp" method="post">
			<table>
			<tr>
				<th>소속</th>
				<td><input type="text" name="dept"></td>
			</tr>
			<tr>
				<th>성명</th>
				<td><input type="text" name="name"></td>
			</tr>
			<tr>
				<th>현주소</th>
				<td><input type="text" name="addr"></td>
			</tr>
			<tr>
				<th>입사년월일</th>
				<td><input type="date" name="startDate" size="20""></td>
			</tr>
			<tr>
				<th>최종학력</th>
				<td>
					<input type="radio" name="academicBackground" value="중졸">중졸
					<input type="radio" name="academicBackground" value="고졸">고졸
					<input type="radio" name="academicBackground" value="전문대졸">전문대졸
					<input type="radio" name="academicBackground" value="대졸">대졸
				</td>
			</tr>
			<tr>
				<td colspan="2">
					<fieldset>
						<legend>자격증</legend>
							<input type="checkbox" name="certificate" value="자동차2종">자동차2종
							<input type="checkbox" name="certificate" value="정보처리산업기사">정보처리산업기사
							<input type="checkbox" name="certificate" value="컴퓨터활용">컴퓨터활용
							<input type="checkbox" name="certificate" value="기타">기타
					</fieldset>
				</td>
			</tr>	
			<tr>
				<th>상담내용</th>
				<td><textarea name="content" rows="15" cols="50" placeholder="상담내역 입력하기"></textarea>
			</tr>
			<tr>
				<td colspan="2"><input type="submit" value="입력완료"><input type="reset" value="다시입력"></td>
			</tr>
		</table>
	</form>
</body>
</html>