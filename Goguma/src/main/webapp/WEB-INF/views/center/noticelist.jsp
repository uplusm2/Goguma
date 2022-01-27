<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
.content .orange {
	position: relative;
	top: -2px; left: 5px;
	color: #fff;
	font-size: 12px;
}
.content .orange:before {
	content: '';
	position: absolute;
	height: 15px;
	width: 15px;
	background: orange;
	border-radius: 50%;
	z-index: -1;
	transform: translateX(-3px) translateY(8px);
}
</style>
</head>
<body>
	<!-- noticelist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<%@include file="/WEB-INF/views/center/title.jsp" %>
		<section class="center">
			<table class="table table-bordered list">
				<tr>
					<th></th>
					<th>제목</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				
				<tr>
					<td>${dto.seq}</td>
					<td>
						<a href="/goguma/center/noticeview.do?seq=${dto.seq}&page=${nowPage}">${dto.title}</a>
						<c:if test="${dto.isNew == 1}">
						<span class="orange">N</span>
						</c:if>
					</td>
					<td>${dto.regdate}</td>
				</tr>
				</c:forEach>
				<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="3">게시물이 없습니다.</td>
				</tr>
				</c:if>
			</table>
			
			<div class="pagebar">${pagebar}</div>
			
			<c:if test="${not empty id && lv.equals('2')}">
			<div class="list-btn">
				<input type="button" value="글쓰기"
					class="btn btn-primary"
					onclick="location.href='/goguma/center/noticeadd.do';">
			</div>
			</c:if>
		</section>
			
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
		<c:if test="${map.searchmode == 'y'}">
		//검색 상태를 유지
		$('input[name=word]').val('${map.word}');
		</c:if>
	</script>
</body>
</html>

