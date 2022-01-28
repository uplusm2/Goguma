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
			width: 70%;
		}
		#tbl td:nth-child(2) {
			width:60%; 
		}
		#tbl td:nth-child(3) {
			width: 20%; 
		}
		#tbl td:nth-child(4) {
			width: 10%; 
		}
		#tbl td:nth-child(5) {
			width: 10%; 
		}
		.btn.important.write{
			position: absolute;
			left:380px;
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
						<h2>커뮤니티</h2>
					</div>
					
					<table class="table" id ="tbl">
						<tr>
							<th colspan="2">제목</th>
							<!--전체 width 줄이고 td:nth-child(2)를 감소시키면  -->
							<th>작성자</th>
							<th>작성일</th>
							<th>조회</th>
						</tr>
						<c:forEach items="${list}" var="dto">
						<tr>
							<td>${dto.seq}</td>
							<td>
								<a href="/goguma/community/communityDetail.do?seq=${dto.seq}&page=${nowPage}">${dto.title}</a>
								<c:if test="${dto.commentCount > 0}">
								<span class="cnt">[${dto.commentCount}]</span>
								</c:if>
								<c:if test="${dto.isNew <= 1}">
								<span class="orange">N</span>
								</c:if>
							</td>
							<td>${dto.nickname}</td>
							<td>${dto.regDate}</td>
							<td>${dto.readcount}</td>
						</tr>
						</c:forEach>
						
					</table>
					<div class="button">
						<button type="button" class="btn important write"
							onclick="location.href='/goguma/community/communityForm.do';">
							글쓰기 <span class="glyphicon glyphicon-pencil" aria-hidden="true"></span>
						</button>
					</div>
					<div class="pagebar">${pagebar}</div>
		
					<div class="search">
						<form method="GET" action="#!">
							<select name="column" class="text">
								<option value="title">제목</option>
								<option value="content">내용</option>
							</select> 
							<input type="text" name="word" placeholder="검색어를 입력하세요."class="text"> 
							<input type="image" src="/goguma/asset/img/search.png" class="search-img">
						</form>
					</div>
				</div>
			</section>
		</main>
	</div>
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script>
		<c:if test="${map.searchmode == 'y'}">
		//검색 상태를 유지
		$('select[name=column]').val('${map.column}');
		$('input[name=word]').val('${map.word}');
		</c:if>
	</script>
</body>
</html>
