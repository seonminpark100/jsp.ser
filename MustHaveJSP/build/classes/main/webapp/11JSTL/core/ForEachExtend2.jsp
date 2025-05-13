<%@page import="java.util.Set"%>
<%@page import="java.util.HashMap"%>
<%@page import="java.util.Map"%>
<%@page import="common.Person"%>
<%@page import="java.util.LinkedList"%>
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
		LinkedList<Person> lists = new LinkedList<Person>();
		lists.add(new Person("맹사성",34));
		lists.add(new Person("장영실",44));
		lists.add(new Person("신숙주",54));
		%>
		<c:set var="lists" value="<%= lists %>" />
		<c:forEach items="${lists }" var="list">
		<li>
			이름 : ${ list.name }, 나이 : ${ list.age}
		</li>
		</c:forEach>
		
		<%
		Map<String,Person> maps = new HashMap<String,Person>();
		maps.put("1st", new Person("맹사성",34));
		maps.put("2st", new Person("장영실",44));
		maps.put("3st", new Person("신숙주",54));
		%>
		<c:set var="maps" value="<%= maps %>" />
		<c:forEach items="${maps }" var="map">
			<li>
			key => ${map.key }<br>
			value => 이름 : ${map.value.name }, 나이 : ${map.value.age }
			</li>
		</c:forEach>
		<%
		Set<String> keys = maps.keySet();
		for(String key: keys){
			Person p = maps.get(key);
			out.println("key=>" + key + "<br>");
			out.println("value=>" + p.getName() + "," + p.getAge() + "<br>");
		}
		%>
	</body>
</html>