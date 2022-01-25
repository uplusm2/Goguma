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
</style>
</head>
<body>

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<div>
		
			<h1 align="center">환영합니다!</h1>
			
			<div align="center">국내 최고의 중고거래 사이트 고구마 장터에 회원으로 가입되신것을 축하드립니다!</div>
			<div align="center">고구마장터에서 따듯하고 달콤한 중고거래 하세요!</div>
			
			<p><img src="/goguma/asset/img/userregister.png"></p>
			
			<button class="margin-auto" type ="button" onclick="/goguma/user/main.do">메인으로 돌아가기</button>
			
		
		</div>
		
		
		
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
</body>
</html>




