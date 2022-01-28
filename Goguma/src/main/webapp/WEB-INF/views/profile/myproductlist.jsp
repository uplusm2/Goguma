<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
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
		#tbl{
			width: 80%;
		}
		#tbl tr td:nth-child(1) {
			width:10%; 
		}
		#tbl tr td:nth-child(2) {
			width:60%; 
		}
		#tbl tr td:nth-child(3) {
			width: 10%; 
		}
		#tbl td:nth-child(4) {
			width: 10%; 
		}
</style>
</head>
<body>
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
	<div class="container">
		<main class="main">
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="community">
				<div class=".grid-container">
					<div class="title">
						<h2>거래글 목록</h2>
					</div>

					<table class="table" id ="tbl">
						<tr>
							<th colspan="2">제목</th>
							<!--전체 width 줄이고 td:nth-child(2)를 감소시키면  -->
							<th>작성자</th>
							<th>작성일</th>
						</tr>
						<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.seq}</td>
							<td>
								<a href="/goguma/product/productDetail.do?seq=${dto.seq}">${dto.name} ${dto.content}</a>
							</td>
							<td>${dto.id}</td>
							<td>${dto.regdate}</td>
						</tr>
						</c:forEach>
						
					</table>
					
					<div class="pagebar">${pagebar}</div>
				</div>
			</section>
		</main>
	</div>
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script>
	</script>
</body>
</html>
