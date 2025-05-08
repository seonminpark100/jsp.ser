<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    SimpleDateFormat dataFormat = new SimpleDateFormat("HH:mm:ss"); //날짜형식
    
    long creationTime = session.getCreationTime();
    String creationTimeStr = dataFormat.format(new Date(creationTime));
    
    long lastTime = session.getLastAccessedTime();
    String lastTimeStr = dataFormat.format(new Date(lastTime));
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Session</title>
</head>
<body>
	<h2>session 설정 확인</h2>
	<ul>
		<li>세션 유지 시간 : <%= session.getMaxInactiveInterval() %></li>
		<li>세션 아이디 : <%= session.getId() %></li>
		<li>최초 요청 시간 : <%= creationTimeStr %></li>
		<li>마지막 요청 시간 : <%= lastTimeStr %></li>
	</ul>
</body>
</html>