
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../inc/asset.jsp" %>
<style>
	.center-search{
		/* border : 1px solid black; */
		background-color : #9B59B6;
		height : 100px;
		width : 1150px;
		margin-left : auto;
		margin-right : auto;
	}
	.center-search .search {
		border-radius : 10px;
		width : 500px;
		margin-left : 50px;
		font-size : 15px;
		padding : 5px;
		border : 1px solid white;
		
	}
	.center-search .title-form{
		border : 1px solid black;
		vertical-align : middle;
	}
	
	.center-search .sub{
		margin-left : 50px;
		margin-top : 5px;
	}
	
	.center-subtitle{
		border : 1px solid black;
		width : 1150px;
		margin-left : auto;
		margin-right : auto;
		height : 100px;
		
	}
	
	.center-subtitle .center-menu li{
		float : left;
		text-align : center;
		vertical-align : middle;
		width : 150px;
		margin-top : 10px;
		cursor : pointer;
		margin-top : 35px;
	}
	

	
	.center-subtitle .center-menu li:hover{
		font-style : #9B59B6;
	}
</style>
</head>
<body>
	<div class = "center-search">
		<div class = "title-form">
		<form method="GET" action="">
			<span class="sub" style= "color : white; font-size : 30px;">공지사항</span>
			<input class="search" type="text" placeholder="찾고 싶은 글을 검색해보세요!">
			<!-- <input class="search-img" type="image" src="/goguma/asset/img/search.png" alt=""> -->
		</form>
		</div>
	</div>
	<div class = "center-subtitle">
		<ul class = "center-menu">
			<li onclick = "location.href = '/goguma/center/faq.do?page=1&search=1'">자주묻는질문</li>
			<li onclick = "location.href = '/goguma/center/noticelist.do'">공지사항</li>
			<li onclick = "location.href = '/goguma/center/questionlist.do?page=1&search=1'">문의사항</li>
		</ul>
	</div>
	
	<script>
	
	</script>
</body>
</html>


