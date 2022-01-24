
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@ include file="../inc/asset.jsp" %>
<style>
	.container{
		background : #9B59B6;
		width : 100%;
		height : 100px;
		padding-left : 15%;
	}
	.menu li{
	    cursor: pointer;
	    float: left;
	    font-weight: 500;
	    padding-left : 10px;
    }
    .menu li:after{
	    content: '';
	    position: absolute;
	    top: 6px;
	    left: 133px;
	    border-left: 1px solid #757575;
	    border-right: 1px solid #757575;
	    width: 124px;
	    height: 15px;
	    z-index: 1;
	}
	.menu li:hover{
		cursur : pointer;
	}
	.container-text{
		
	}
	.ddd{
		background : #FAF7FB;
		height : 100px;
		padding-left : 15%;
		border-right : 1px solid #9B59B6;
    	
}
</style>
</head>
<body>
	<div class = "center-search">
		<form method="GET" action="">
			<span style= "color : white">공지사항</span>
			<input class="search" type="text" placeholder="찾고 싶은 글을 검색해보세요!">
			<input class="search-img" type="image" src="/goguma/asset/img/search.png" alt="">
		</form>
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


