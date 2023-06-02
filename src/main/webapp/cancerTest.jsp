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
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	int year = Integer.parseInt(request.getParameter("year"));
	
	Date today = new Date();
	int thisYear = today.getYear()+1900;
	int age = thisYear - year;
	String str = name+"님, 무료암검진 대상자 입니다.";
	if(age < 40){
		str = name+"님, 무료암검진 대상자가 아닙니다.";
	}
%>

<h2>무료 암검진 대상자 확인</h2>
<hr>
<%= str %>

</body>
</html>











