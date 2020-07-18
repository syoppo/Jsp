<%@page import="java.sql.Timestamp"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	//연결정보 설정
	String url = "jdbc:oracle:thin:@localhost:1521/xepdb1";
	String user = "JSP";
	String passwd = "1111";
	
	//1.드라이브 로드
	Class.forName("oracle.jdbc.driver.OracleDriver");

	//2.연결 객체 생성
	Connection con = DriverManager.getConnection(url, user, passwd);
	
	//3.sql 준비 및 실행
	String sql = "SELECT *FROM BOARD";
	Statement st = con.createStatement();
	
	//4.반환 객체
	ResultSet rs = st.executeQuery(sql);
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>게시글 보기</title>
	<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css" integrity="sha384-9aIt2nRpC12Uk9gS9baDl411NQApFmC26EwAOH8WgZl5MYYxFfc+NcPb1dKGj7Sk" crossorigin="anonymous">
	<script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
	<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js" integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo" crossorigin="anonymous"></script>
	<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js" integrity="sha384-OgVRvuATP1z7JjHLkuOU7Xw704+h835Lr+6QL9UvYjZE3Ipu6Tp75j7Bh/kR0JKI" crossorigin="anonymous"></script>
</head>
<body>
	<div class="container">
		<br>
		<h1 class="text-center font-weight-bold">게시글</h1>
		<table class="table table-hover">
			<tr>
				<th>ID</th>
				<th>제목</th>
				<th>내용</th>
				<th>글쓴이</th>
				<th>REGDATE</th>
				<th> </th>
			</tr>
			
			<%//5. 결과집합 처리
				while(rs.next()){
					String id = rs.getString("ID");
					String subject = rs.getString("SUBJECT");
					String content = rs.getString("CONTENT");
					String writer = rs.getString("WRITER");
					Timestamp regdate = rs.getTimestamp("REGDATE");
			%>
			
			<tr>
				<td><%=id %></td>
				<td><%=subject %></td>
				<td><%=content %></td>
				<td><%=writer %></td>
				<td><%=regdate %></td>
				<td><a href="updateForm.jsp?id=<%=id %>">수정/삭제</a></td>
			</tr>
			<% }
			//6. 객체 해지
			rs.close();
			st.close();
			con.close();
			%>
		</table>
		<br>
		<div class="text-center">
			<button type="button" class="btn btn-primary text-center" onclick="location.href='main.jsp'">메인화면</button>
		</div>
	</div>
</body>
</html>