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
	String []data = {"창억떡","바나나","오렌지","쾌변두유","밥풀떡"};
	String str = "";
	str += "<ul>";
	for(int i=0; i<data.length; i++){
		str += "<li>"+data[i]+"</li>";
	}
	str += "</ul>";
%>
<%= str %>
</body>
</html>









