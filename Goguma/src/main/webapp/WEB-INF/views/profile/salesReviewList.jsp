<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	}
	#tbl{
		margin-top:100px;
		width: 80%;
	}
	#tbl td:nth-child(1) {
		width:5%; 
		vertical-align: middle;
	}
	#tbl td:nth-child(2) {
		width:70%; 
	}
	#tbl td:nth-child(3) {
		width: 10%; 
		vertical-align: middle;
	}
	#tbl td:nth-child(4) {
		width: 25%; 
		vertical-align: middle;
	}
</style>
</head>
<body>
	<div class="container"
		style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="community">
				<div class="grid-container">
					<div class="title">
						<h2>판매 후기</h2>
					</div>
					<table class="table" id ="tbl">
						<tr>
							<th>No.</th>
							<th>내용</th>
							<th>점수</th>
							<th>날짜</th>
						</tr>
						<%int i=1; %>
						<c:forEach items="${list}" var="dto" >
						<tr>
							<td><%=i++ %></td>
							<td>
								${dto.productcontent}<br>
								<i class="bi bi-arrow-return-right"></i>
								${dto.buyId} : ${dto.reviewcontent}
							</td>
							<td>${dto.score}</td>
							<td>${dto.regdate}</td>
						</tr>
						</c:forEach>
						</table>
					<div class="search">
						<form method="GET" action="#!">
							<select name="column" class="text">
								<option value="subject">제목</option>
								<option value="content">내용</option>
							</select> 
							<input type="text" name="word" placeholder="검색어를 입력하세요." required class="text"> 
							<input type="image" src="/goguma/asset/img/search.png" class="search-img">
						</form>
					</div>
					<div class="pagebar">${pagebar}</div>
				</div>
			</section>
		</main>
	</div>
	
	<script>
	
	</script>
</body>
</html>







