<%@page import="java.util.TimeZone"%>
<%@page import="java.util.Date"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
 <%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:set var="today" value="<%= new Date() %>" />
		
		full : <fmt:formatDate value="${ today }" type="date" dateStyle="full"/><br>
		short : <fmt:formatDate value="${ today }" type="date" dateStyle="short"/><br>
		long : <fmt:formatDate value="${ today }" type="date" dateStyle="long"/><br>
		default : <fmt:formatDate value="${ today }" type="date" dateStyle="default"/><br>
		
		full : <fmt:formatDate value="${ today }" type="time" timeStyle="full"/><br>
		short : <fmt:formatDate value="${ today }" type="time" timeStyle="short"/><br>
		long : <fmt:formatDate value="${ today }" type="time" timeStyle="long"/><br>
		default : <fmt:formatDate value="${ today }" type="time" timeStyle="default"/><br>
		
		<fmt:formatDate value="${ today }" type="both" dateStyle="full" timeStyle="full"/><br>
		<fmt:formatDate value="${ today }" type="both" pattern="yyyy-MM-dd hh:mm:ss"/><br>
		
		<fmt:timeZone value="GMT">
			<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br>
		</fmt:timeZone>
		<fmt:timeZone value="America/Chicago">
			<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br>
		</fmt:timeZone>
		
		<fmt:timeZone value="GMT+9">
			<fmt:formatDate value="${today }" type="both" dateStyle="full" timeStyle="full"/><br>
		</fmt:timeZone>
		
		<c:forEach var="ids" items="<%= java.util.TimeZone.getAvailableIDs() %>">
		${ids}<br>
		</c:forEach>
		
	</body>
</html>