<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>액션태그 useBean</title>
</head>
<body>
	<h2>useBean 액션태그</h2>
	<h3>자바빈즈 생성하기</h3>
	<jsp:useBean id="person" class="common.Person" scope="request" />
	<h3>setproperty 액션 태그로 자바빈즈 속성 지정하기</h3>
	<jsp:setProperty name="person" property="name" value="임꺽정">
	<jsp:setProperty name="person" property="age" value="41">
	
	
	<ul>
		<li>이름 : <jsp:getProperty name="person" property="name" /></li>
		<li>나이 : <jsp:getProperty name="person" property="age" /></li>
	</ul>
</body>
</html>