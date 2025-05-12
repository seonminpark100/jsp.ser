<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    <c:set var="scopeVar" value="Page Value" />
    <c:set var="scopeVar" value="Request Value" scope="request" />
    <c:set var="scopeVar" value="session Value" scope="session" />
    <c:set var="scopeVar" value="Application Value" scope="Application" />   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSTL - remove</title>
</head>
<body>
	<h4>출력하기</h4>
	<ul>
		<li>scopeVar : ${ scopeVar }</li>
	
	</ul>
	
	c:
</body>
</html>