<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    String popupmode = "on";
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.7.1/jquery.min.js"></script>
<style>
div#popup{
	position: absolute; top: 100px; left: 100px; color: yellow;
	width: 300px; height: 100opx; background-color: gray;
}
div#popup>div{
	position: relative; background-color: #ffffff; top: 0px;
	border: 1px solid gray; padding: 10px; color: black;
}
</style>
<script>
$(funtion(){
	$('#closeBtn').click(funtion(){
	$('#popup').hide();
});
});
</script>
<title>쿠키를 이용한 팝업 관리</title>
</head>
<body>	
	<%
	for(int i=1' i<= 10 ; i++){
		out.println("현재 팝업창은 " + popupMode + " 상태입니다.<br/>");
	}
	if(popupMode.equals("on")){
		
		<div id="popup">
		</div>
	}
	%>
</body>
</html>