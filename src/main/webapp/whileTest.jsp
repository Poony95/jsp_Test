<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>While Example</h2>
<%
	String method = request.getMethod();
	if(method.equals("GET")){
		%>
			<form action="whileTest.jsp" method="post">
				반복하고 싶은 문구 : <input type="text" name="msg"><br>
				반복하고 싶은 횟수 : <input type="text" name="count"><br>
				<input type="submit" value="보내기">
			</form>
		<%	
		
	}else{
		request.setCharacterEncoding("utf-8");
		String msg = request.getParameter("msg");
		int count = Integer.parseInt(request.getParameter("count"));
		int i = 1;
		while(i<=count){
			%>
			<%=msg %><br>
			<%
			i++;
		}
	}
%>

</body>
</html>









