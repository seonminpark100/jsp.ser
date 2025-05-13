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
			<c:set var="number" value="100"/>
			<c:set var="string" value="JSP"/>
			
			<c:if test="${number mod 2 eq 0 }" var="result">
			${ number }는 짝수입니다.<br>
			</c:if>
			result : ${ result }<br>
			<c:if test="${string eq 'java' }" var="result2">
			문자열은 java입니다.<br>
			</c:if>
			<c:if test="${not result2 }">
			 'java'가 아닙니다.
			</c:if>
			
			<c:if test="100" var="result3">
			EL이 아닌 정수를 지정하면 FALSE
			</c:if>
			result3 : ${ result3 }<br>
			<c:if test="tRue" var="result4">
				대소문자 구분없이 "tRue"인 경우 true<br>
			</c:if>
			<c:if test=" ${ true } " var="result5">
			EL 양쪽에 빈 공백이 있는 경우 FALSE<BR>
			</c:if>
			result5 : ${ result5 }<br>
			
			<h4>연습문제 : if 태그</h4>
	<!--  
    	아이디, 패스워드를 입력후 submit버튼을 누르면 EL식을 통해 파라미터를
    	받은 후 musthave/1234인 경우에는 'musthave님, 반갑습니다~'이라고 출력한다.
    	만약 틀렸다면 "아이디/비번을 확인하세요"라고 출력한다.
    	EL과 JSTL의 if태그만을 이용해서 구현하시오.
     -->
     <form method="get"">
     아이디 : <input type="text" name="user"><br>
     패스워드 : <input type="text" name="pass"><br>
     <input type="submit" value="로그인" />
     </form>
     <c:if test="${ not empty param.user }">
     	전송된 아이디 : ${ param.user }<br>
     	전송된 패스워드 : ${param.pass }<br>
     </c:if>
		<c:if test="${ param.user== 'musthave' and param.pass eq '1234' }" var="loginResult">
		${ param.user }님, 반갑습니다~'	<br>	
		</c:if>
		<c:if test="${ not loginResult }">
		"아이디/비번을 확인하세요"<br>
		</c:if>
				
</html>