<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
    pageContext.setAttribute("scopeValue", "페이지영역");
	request.setAttribute("scopeValue", "리퀘스트영역");
	session.setAttribute("scopeValue", "세션 영역");
	application.setAttribute("scopeValue", "어플리케이션 영역");
 %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>표현언어(EL) - 내장객체</title>
</head>
<body>
	<h2>ImplicitObjMain 페이지</h2>
	<h3>각 영영게 저장된 속성 읽기</h3>
	<ul>
		<li>페이지 영역 : <%=  pageContext.getAttribute("scopeValue") %></li>
		<li>리퀘스트 영역 : <%=  request.getAttribute("scopeValue") %></li>
		<li>세션 영역 : <%=  session.getAttribute("scopeValue") %> </li>
		<li>어플리케이션 영역 : <%=  application.getAttribute("scopeValue") %> </li>
	</ul>
	<h3>각 영영게 저장된 속성 읽기</h3>
	<ul>
		<li>페이지 영역 : ${ pageScope.scopeValue}</li>
		<li>리퀘스트 영역 : ${ requestScope.scopeValue} </li>
		<li>세션 영역 : ${ sessionScope.scopeValue} </li>
		<li>어플리케이션 영역 : ${ applicationScope.scopeValue} </li>
	</ul>
	
	<h3>영역 지정 없이 속성 읽기</h3>
	<ul>
		<li>${scopeValue}</li>
	</ul>
	<jsp:forward page="ImplicitForwardResult.jsp"></jsp:forward>
</body>
</html>