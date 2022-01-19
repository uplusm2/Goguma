<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
	.left-nav {
		border:1px solid black;
		height: 75vh;
		width: 20vh;
		float: left;
	}
	
	.sidebar {
		height: 70%;
		float: left;
	}
	
	.sidebar:nth-child(0) {
		margin-top: 60%;
		margin-left: 28%
	}
	
	.sidebar:nth-child(1) {
		margin-top: 10%;
		margin-left: 28%
	}
	
	.sidebar_line {
		background-color: #9B59B6;
		margin-left:10%;
		height: 70%;
		width: 3px;
		float: left;
	}
	
	.left-nav:after {
		clear: both;
	}
	
	.content {
		margin-top: 5%;
		margin-left: 20%;
	}
</style>
<body>

	<nav class="left-nav">
		<div class="sidebar">
			<div>
				Profile <i class="bi bi-arrow-down-circle"></i>
			</div>
			<div>
				작성글 내역
			</div>
		</div>
		
		<div class="sidebar_line">
		</div>
	</nav>

	<script>
		$(".profile")
	</script>
</body>
</html>