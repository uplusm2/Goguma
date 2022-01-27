<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.center-search{
		/* border : 1px solid black; */
		background-color : #9B59B6;
		height : 100px;
		width : 1150px;
		margin-left : auto;
		margin-right : auto;
	}
	.center-search .word {
		border-radius : 10px;
		width : 500px;
		margin-left : 50px;
		font-size : 15px;
		padding : 5px;
		border : 1px solid white;
		vertical-align : middle;
		
	}
	.center-search .title-form{
		padding-top : 25px;
	}
	
	.center-search .sub{
		margin-left : 50px;
		margin-top : 5px;
		vertical-align : middle;
	}
	
	.center-subtitle{
		border-bottom : 1px solid #9B59B6;
		width : 1150px;
		margin-left : auto;
		margin-right : auto;
		height : 80px;
		
	}
	
	.center-subtitle .center-menu li{
		float : left;
		text-align : center;
		vertical-align : middle;
		width : 150px;
		margin-top : 25px;
		margin-left : 20px;
		cursor : pointer;
	}
	
	.center-subtitle .center-menu li:hover{
		color : #9B59B6;
	}
	
	.title-form .mag{
		color : white;
		cursor : pointer;
		vertical-align : middle;
		margin-left : 15px;
		font-size : 20px;
	}
	
	
</style>
</head>
<body>
	<div class = "center-search">
		<div class = "title-form">
			<form method="GET" action="/goguma/center/noticelist.do">
				<span class="sub" style= "color : white; font-size : 30px;">고객센터</span>
			</form>
		</div>
	</div>
	<div class = "center-subtitle">
		<ul class = "center-menu">
			<li onclick = "location.href = '/goguma/center/faq.do?page=1&search=1'" id="li1">자주묻는질문</li>
			<li onclick = "location.href = '/goguma/center/noticelist.do'" id="li2">공지사항</li>
			<li onclick = "location.href = '/goguma/center/questionlist.do?page=1&search=1'" id="li3">문의사항</li>
		</ul>
	</div>
	
	<script>
	</script>
</body>
</html>


