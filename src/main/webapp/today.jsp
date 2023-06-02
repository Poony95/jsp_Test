
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
	Date today = new Date();
	int year = today.getYear() + 1900;
	int month = today.getMonth()+1;
	int date = today.getDate();
	int hours = today.getHours();
	int minutes = today.getMinutes();
	int seconds = today.getSeconds();
%>
<h2><%=year %>년 <%=month %>월 <%=date %>일 <%=hours %>:<%=minutes %>:<%=seconds %></h2>
</body>
</html>
















