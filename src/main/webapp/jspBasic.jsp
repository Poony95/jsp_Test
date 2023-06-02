<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%-- 이것은 jsp의 주석입니다. --%>
<!-- 이것은 html의 주석입니다. -->

<%!
	//이것은 자바문법주석입니다.
	String title = "웹프로그래밍";	
%>

<h2>JSP 문장 구성요소 </h2>
<hr>
<%
	//이것도 자바문법 주석입니다.
	int  year = 2023;
	if(year == 2023){
		title = title + year;
	}
%>

title : <%= title %><br>
year : <%= year %><br>

</body>
</html>












