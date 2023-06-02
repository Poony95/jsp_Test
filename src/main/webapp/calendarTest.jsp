<%@page import="java.util.GregorianCalendar"%>
<%@page import="java.util.Calendar"%>
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
	int year = today.getYear();
	int month = today.getMonth();
	Date start = new Date(year, month, 1);
	int day = start.getDay();
	GregorianCalendar cal = new GregorianCalendar();
	int last = cal.getActualMaximum(Calendar.DAY_OF_MONTH);
%>
<h2><%=year+1900 %>년 <%=month+1 %>월</h2>
<table border="1">
<tr>
	<td>일</td>
	<td>월</td>
	<td>화</td>
	<td>수</td>
	<td>목</td>
	<td>금</td>
	<td>토</td>
</tr>

<tr>
	<%
		for(int j=1; j<=day;j++){
			%>
			<td>&nbsp;</td>
			<%			
		}
	
		for(int i=1; i<=last; i++)
		{
			%>
			<td><%=i %></td>
			<%
			if((i+day)% 7 == 0){
				%>
				</tr><tr>
				<%
			}
		}
	%>
</tr>
</table>
</body>
</html>







