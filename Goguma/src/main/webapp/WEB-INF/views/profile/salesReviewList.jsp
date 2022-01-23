<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<style>
	.grid-container{
		padding-left:50px;
		padding-right:50px;
		width:970px;
		height:500px;
		margin-top:5%;
		display:grid;
		grid-template-columns:1fr;
		grid-template-rows: 1fr;
	}
</style>
</head>
<body>
	<div class="container"
		style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="content">
				<div class="grid-container">
					<table class="table">
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
								>${dto.buyId} : ${dto.reviewcontent}
							</td>
							<td>${dto.score}</td>
							<td>${dto.regdate}</td>
						</tr>
						</c:forEach>
					</table>
					<div class="pagebar">${pagebar}</div>
				</div>
			</section>
		</main>
	</div>
	
	<script>
	
	</script>
</body>
</html>







