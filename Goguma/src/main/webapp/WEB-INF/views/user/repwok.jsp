<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

	<meta http-equiv="Content-Type" content="text/html charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="css/bootstrap.css">
	<link rel="stylesheet" href="css/custom.css">
<title> 회원가입 </title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
	<script src="js/bootstrap.js"></script>
	<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.table {
		width:500px;
		margin: auto;
	}
	
	#welcome {
		margin-top: 60px;
		font-size: 40px
	}
	
	#container {
		margin-top: 70px;
	}
	
	#picture {
		margin-top: 70px;
	}
	
	#back{
		margin-top: 100px;
	}
	
</style>
</head>
<body>

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<div id="container" align="center">

			<h1 align="center" id="welcome">비밀번호 변경이 완료되었습니다!</h1>
			
			<div id="picture" align="center">
				<img src="/goguma/asset/img/userregister.png" style="width: 130px">
			</div>
			
			<div id="back" align="center">
				<button class="margin-auto" type ="button" onclick="location.href='/goguma/main.do'">메인으로 돌아가기</button>
			</div>
		

		</div>
		
		<% 
		 session.invalidate();
		%>
		

	</main>
</body>
</html>




