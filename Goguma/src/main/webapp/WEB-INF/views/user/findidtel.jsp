<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>


	.content {
		margin-top: 130px;
		text-align: center;
	}
	
	#welcome {
		font-size: 40px;
		margin-top: 30px;
		align: center;
	}
	
	#back {
		margin-top: 130px;
		align: center;
	}
	
	#welcome2 {

		margin-top: 30px;
		align: center;
	}


</style>
</head>
<body>

	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="content">

				<div id="welcome">* 영차! 회원님의 아이디를 캐냈습니다~ *</div>
		
				<div id="welcome2"> 회원님의 아이디는 '${result}' 입니다!</div>

      		<div id="back" align="center">
				<button class="margin-auto" type ="button" onclick="location.href='/goguma/main.do'">메인으로 돌아가기</button>
			</div>

		</section>

	</main>
	
	
<script>

</script>
	
</body>
</html>







