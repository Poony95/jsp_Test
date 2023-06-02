<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h2>무료 암검진 대상자 확인</h2>
	<hr>
	<form action="freeCancer.jsp" method="post">
		이름 : <input type="text" name="name"><br>
		출생년도 : <input type="text" name="year"><br>
		<input type="submit" value="확인"> 
	</form>
	
	<%
		String method = request.getMethod();
		String str = "";
		if(method.equals("POST")){
			request.setCharacterEncoding("UTF-8");
			String name = request.getParameter("name");
			int year = Integer.parseInt(request.getParameter("year"));
			Date today = new Date();
			int thisYear = today.getYear()+1900;
			int age = thisYear-year;
			str = name+"님, 무료암검진 대상자 입니다.";
			if(age < 40){
				str = name +"님, 무료암검진 대상자가 아닙니다.";
			}
		}		
	%>
	<%= str %>
	
</body>
</html>



















