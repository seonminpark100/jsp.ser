<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" errorPage = "isErrorPage.jsp"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
		<% int myAge = Integer.parseInt(request.getParameter("age"))+ 10;
		out.println("10년후 당신의 나이는" + myAge + "입니다");
	
	
		out.println("예외 발생 : 매개변수 age가 null 입니다");
		%>
</body>
</html>