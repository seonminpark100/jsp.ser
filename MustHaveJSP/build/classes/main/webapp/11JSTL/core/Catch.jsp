<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<%
			int num1 = 100;
		%>
		<c:catch var="eMessage">
		<%
			int result = num1 /0;
		%>
		</c:catch>
		예외 내용 : ${eMessage }
		<c:set var="num2" value="200" />
		
		<c:catch var="eMessage">
		${"일" + num2 }
		</c:catch>
		예외 내용 : ${ eMessage }
	</body>
</html>