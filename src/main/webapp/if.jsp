<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%
	request.setCharacterEncoding("utf-8");
	String name = request.getParameter("name");
	String color = request.getParameter("color");
	String color_kor = "";
	if(color.equals("yellow")){
		color_kor = "노란색";
	}else if(color.equals("green")){
		color_kor = "초록색";
	}else if(color.equals("blue")){
		color_kor = "파란색";
	}else{
		color_kor = "분홍색";
	}
	
%>
<body bgcolor="<%=color%>">

<h1>If-else Example</h1>
<%= name %>님이 좋아하는 색깔은 <b><%= color_kor %></b>입니다.
</body>
</html>










