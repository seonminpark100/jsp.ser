<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<% %>
ArrayList<String> lists = new ArrayList<String>();
lists.add("리스트");
lists.add("컬렉션");
session.setAttribute("lists", lists);
%>
<html>
<head>
<meta charset="UTF-8">
<title>세션 영역</title>
</head>
<body>
	<h2>페이지 이동 후 session 영역의 속성 읽기</h2>
	
	%>
</body>
</html>