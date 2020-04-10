<%@page import="java.util.Enumeration"%>
<%@page import="com.sun.xml.internal.ws.api.pipe.NextAction"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<style>
		table {border:1px solid gray; border-collapse:collapse; height: 350px;}
		td {border:1px solid gray; width:500px;}
		th {border:1px solid gray;}
		
</style>
<head>
	<meta charset="UTF-8">
	<title>과제1</title>
</head>
<body>
	<h2>사용자 입력 확인</h2>
	<%
		request.setCharacterEncoding("utf-8");
		String dept = request.getParameter("dept");
		session.setAttribute("dept", dept);
		String name = request.getParameter("name");
		session.setAttribute("name", name);
		String addr = request.getParameter("addr");
		session.setAttribute("addr", addr);
		String startDate = request.getParameter("startDate");
		session.setAttribute("startDate", startDate);
		String academicBackground = request.getParameter("academicBackground");
		session.setAttribute("academicBackground", academicBackground);
		String[] certificate = request.getParameterValues("certificate");
		session.setAttribute("certificate", certificate);
		String content = request.getParameter("content");
		session.setAttribute("content", content);
	%>
	
	<table>
		<tr>
			<th>컨트롤 요소</th>
			<th>입력값</th>	
		</tr>
		<tr>
			<th>소속</th>
			<td><%=dept %></td>
		</tr>
		<tr>
			<th>성명</th>
			<td><%=name %></td>
		</tr>
		<tr>
			<th>현주소</th>
			<td><%=addr %></td>
		</tr>
		<tr>
			<th>입사년월일</th>
			<td><%=startDate %></td>
		</tr>
		<tr>
			<th>학력</th>
			<td><%=academicBackground %></td>
		</tr>
		<tr>
			<th>자격증</th>
			<td>
				<%
						for(int i=0; i<certificate.length; i++){
							out.println(certificate[i] + " ");
						}				
				%>
			</td>
		</tr>
		<tr>
			<th>상담내용</th>
			<td><%=content %></td>
		</tr>
		<tr>
			<th>각 폼 컨트롤의 이름들</th>
			<td>
				<%
				Enumeration en = session.getAttributeNames();
				
					while(en.hasMoreElements()){
						String formName = (String)en.nextElement();
						out.println(formName);
					}
				%>
			</td>
		</tr>
	</table>
</body>
</html>