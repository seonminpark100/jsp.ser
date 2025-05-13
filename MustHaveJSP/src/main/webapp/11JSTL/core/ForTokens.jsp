<%@page import="java.util.StringTokenizer"%>
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
		String rgba = "Red, Green, Blue,Black";
		%>
		<c:forTokens items="<%= rgba %>" delims="," var="color">
		<span style="color:${color};">${color }</span><br>
		</c:forTokens>
		
		<%
		StringTokenizer tokens = new StringTokenizer(rgba, ",");
		out.println("토큰수" + tokens.countTokens() + "<br>");
		while(tokens.hasMoreTokens()){
			String token = tokens.nextToken();
			out.println(token + "<br>");
		}
		%>
		
		<%
		String[] colorArr = rgba.split(",");
		for(String s : colorArr){
			out.println( s + "<br>");
		}
		%>
		
	</body>
</html>