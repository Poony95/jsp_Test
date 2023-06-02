<%@page import="com.sist.vo.DeptVO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.sist.dao.DeptDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<form action="deptTest.jsp" method="post">
	부서번호 : <input type="text" name="dno"><br>
	부서이름 : <input type="text" name="dname"><br>
	부서위치 : <input type="text" name="dloc"><br>
	<input type="submit" value="등록">	
</form>


<%
	DeptDAO dao = new DeptDAO();
	String method = request.getMethod();
	if(method.equals("POST")){
		request.setCharacterEncoding("utf-8");
		int dno = Integer.parseInt(request.getParameter("dno"));
		String dname = request.getParameter("dname");
		String dloc = request.getParameter("dloc");
		DeptVO d = new DeptVO();
		d.setDno(dno);
		d.setDname(dname);
		d.setDloc(dloc);
		dao.insertDept(d);
	}
	ArrayList<DeptVO> list = dao.findAll();	
%>
<table border="1">
	<tr>
		<td>부서번호</td>
		<td>부서명</td>
		<td>부서위치</td>
	</tr>
	<%
		for(int i=0; i<list.size(); i++){
			DeptVO d= list.get(i);
			%>
				<tr>
					<td><%= d.getDno() %></td>
					<td><%= d.getDname() %></td>
					<td><%= d.getDloc() %></td>
				</tr>
			<%
		}
	%>
	
</table>
</body>
</html>













