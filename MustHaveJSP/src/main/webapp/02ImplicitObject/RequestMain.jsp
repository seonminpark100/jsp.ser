<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장객체</title>
</head>
<body>
	<h2>1. 클라이언트 서버의 환경정보 읽기</h2>
	<a href="./RequestWebInfo.jsp?eng=Hello&han=안녕">get방식전송</a>
	<form action="RequestWebInfo.jsp" method="post" accept-charset="utf-8">
	영어:<input type="text" name="eng" value="Bye"><br>
	한글:<input type="text" name="han" value="잘가"><br>
	<input type="submit" value="post방식전송">
	</form>
	<h2>2. 클라이언트 요청 매개변수 읽기</h2>
	<form method = "post" action="RequestParameter.jsp">
	아이디:<input type="text" name="id" value="" /><br>
	성별:
	<input type="radio" name="sex" value="man" />남자
	<input type="radio" name="sex" value="woman" checked = "checked" />여자
	<br>
	관심사항:
	<input type="checkbox" name="favo" value="eco" />경제
	<input type="checkbox" name="favo" value="pol" checked="checked" />정치
	<input type="checkbox" name="favo" value="ent" />연예<br>
	자기소개:
	<textarea name="intro" rows="4" cols="30"></textarea>
	<br>
	<input type="submit" value="전송하기" >
	</form>
	<h2>3. 요청헤더 정보 읽기</h2>
	<a href="RequestHeader.jsp">헤더요청정보 읽기</a>
	
	
</body>
</html>