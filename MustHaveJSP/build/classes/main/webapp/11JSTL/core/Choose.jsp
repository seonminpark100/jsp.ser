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
		<c:set var="number" value="100" />
		
		<c:choose>
		<c:when test="${ nuber mod 2 eq 0 }">
			${ number }는 짝수입니다.
		</c:when>
		<c:otherwise>
			${ number }는 홀수입니다.
		</c:otherwise>
		</c:choose>
		
		<form>
			국어 : <input type="text" name="kor"><br>
			양어 : <input type="text" name="eng"><br>
			수학 : <input type="text" name="math"><br>
			<input type="submit" value="학점 구하기">
		</form>
		
		<c:if test="${ not(empty param.kor or empty param.eng or empty param.math) }">
		<c:set var="avg" value="${ (param.kor + param.eng + param.math) / 3 }" />
		평균 점수는 ${avg}으로
			<c:choose>
				<c:when test="${ avg >= 90 }">A 학점</c:when>
				<c:when test="${ avg >= 80 }">B 학점</c:when>
				<c:when test="${ avg ge 70 }">C 학점</c:when>
				<c:when test="${ avg ge 60 }">D 학점</c:when>
				<c:otherwise>F 학점</c:otherwise>
			</c:choose>
			입니다.
		</c:if>
	</body>
</html>