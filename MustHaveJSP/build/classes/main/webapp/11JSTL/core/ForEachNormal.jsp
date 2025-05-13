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
		<c:forEach begin="1" end="3" step="1" var="i">
			<p>반복 ${i}입니다.</p>
		</c:forEach>
		<table border="1">
		<c:forEach begin="3" end="5" var="i" varStatus="loop">
		<tr>
			<td>count : ${ loop.count }</td>
			<td>index : ${ loop.index }</td>
			<td>current : ${ loop.current }</td>
			<td>first : ${ loop.first }</td>
			<td>last : ${ loop.last}</td>
		</tr>
		</c:forEach>
		</table>
		
		<c:forEach begin="1" end="100" var="j">
		<c:if test="${ j mod 2 ne 0 }">
			<c:set var="sum" value="${sum+j}" />
		</c:if>
		</c:forEach>
		1~100 사이의 정수 중 홀수의 합은? ${ sum }
		
		<h4>연습문제01</h4>
    <!-- 
    	연습문제] 아래모양을 출력하시오. 단 JSTL의 foreach문과 if문을
    	활용하시오.
    	1 0 0 0 0
    	0 1 0 0 0
    	0 0 1 0 0 
    	0 0 0 1 0
    	0 0 0 0 1
     -->
     <c:forEach begin="1" end="5" step="1" var="i">
     	<c:forEach begin="1" end="5" step="1" var="j">
     		<c:if test="${ i eq j }" var="result">
     			1&nbsp;
     		</c:if>
     		<c:if test="${ not result }" var="result">
     			0&nbsp;
     		</c:if>
     	</c:forEach>
     </c:forEach>
	<h4>연습문제02</h4>
   	<!-- 앞의 문제를 choose~when~otherwise문으로 변경하시오
   			0 0 0 0 1
	    	0 0 0 1 0
	    	0 0 1 0 0
	    	0 1 0 0 0
	    	1 0 0 0 0-->
		c:
		
		
	</body>
</html>