<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
 <%@ taglib prefix="fmt" uri="jakarta.tags.fmt" %>
<!DOCTYPE html>
<html>
	<head>
	<meta charset="UTF-8">
		<title>Insert title here</title>
	</head>
	<body>
		<c:set var="number1" value="12345"/>
		
		콤마 O : <fmt:formatNumber value="${ number1 }" /><br>
		콤마 X : <fmt:formatNumber value="${ number1 }" groupingUsed="false" /><br>
		
		<fmt:formatNumber value="${ number1 }" type="currency" var="printNum1" />
		통화기호(원화로 표시) : ${ printNum1 }<br>
		<fmt:formatNumber value="${ number1 }" type="currency" var="printNum2" currencySymbol="$" />
		통화기호(달러로 표시) : ${ printNum2 }<br>
		<fmt:formatNumber value="0.03" type="percent" var="printNum3" />
		퍼센트 : ${ printNum3 }<br>
		
		<c:set var="number2" value="6,789.01" />
		<fmt:parseNumber value="${ number2 }" pattern="00,000.00" var="printNum3" />
		소수점까지 : ${printNum3}<br>
		<fmt:parseNumber value="${ number2 }" integerOnly="true" var="printNum4" />
		소수점까지 : ${printNum4}
	</body>
</html>