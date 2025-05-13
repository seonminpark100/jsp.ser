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
		<c:url value="/11JSTL/inc/OtherPage.jsp" var="url">
			<c:param name="user_param1" value="must" />
			<c:param name="user_param2">Have</c:param>
		</c:url>
		<a href="${url}">otherPage.jsp 바로가기</a>
	</body>
</html>