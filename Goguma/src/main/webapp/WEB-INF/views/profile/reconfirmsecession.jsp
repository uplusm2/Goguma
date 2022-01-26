<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
</head>
<style>
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	}
	.grid-container{
		width:970px;
		height:500px;
		margin-top:5%;
		display:grid;
		grid-template-columns:1fr 1fr 1fr 1fr 1fr;
		grid-template-rows: 1fr 1fr 1fr 1fr 1fr ;
	}
	.grid-container div{
		border:1px solid black;
	}
</style>
<body>
	<div class="container"
			style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
			<main class="main">
				<%@include file="/WEB-INF/views/inc/header.jsp"%>
				<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
				<section class="content">
					<h2>${userProfileData.id}   님의 회원 정보 입니다.</h2>
					<div class="grid-container">

						<div></div>
						<div></div>
						<div></div>
						<div></div>
						<div></div> 
						
						<div></div>
						<div></div>
						<div></div>
						<div></div>
						<div></div> 
						
						<div></div>
						<div></div>
						<div></div>
						<div></div>
						<div></div> 
						
						<div></div>
						<div></div>
						<div></div>
						<div></div>
						<div></div> 
						
						<div></div>
						<div></div>
						<div></div>
						<div></div>
						<div></div> 
						
					</div>
				</section>
			</main>
		</div>
</body>
</html>