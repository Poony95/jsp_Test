<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<h2>For Example</h2>
<form action="forTest.jsp" method="post">
	어디까지 더할가요? 
	<input type="text" name="end">
	<input type="submit" value="확인">
</form>

<%
	String method  = request.getMethod();	
	if(method.equals("POST"))
	{
		int end = Integer.parseInt(request.getParameter("end"));
%>

		1에서 <%=end %>까지의 합은?<br>
		<%
			int sum  = 0;
			String str = "";
			for(int i=1; i<=end; i++){
				str += i;
				if(i != end){
					str += "+";
				}
				sum += i;
			}
		%>
		<%=str %>=<%= sum %>

<%
	}
%>

</body>
</html>










