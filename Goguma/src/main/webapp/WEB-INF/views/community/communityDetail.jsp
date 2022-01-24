<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
</style>
</head>
<body>
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section class="community content">
			<div class="title" onclick="location.href='/goguma/community/communityList.do';">
				<h2>커뮤니티</h2>
			</div>
		
			<table class="detail">
				<tr>
					<td colspan="3">${dto.title}</td>
					<c:if test="${id == dto.id}">
					<td class="button">
						<input type="button" value=수정 class="btn edit"
							onclick="location.href='/goguma/community/communityForm.do?seq=${dto.seq}';">
					</td>
					<td class="button">
						<input type="button" value=삭제 class="btn important del"
							onclick="confirmDel();">
					</td>
					</c:if>
				</tr>
				<tr>
					<td rowspan="2"><img src="/goguma/asset/img/logo.png" alt=""></td>
					<td colspan="2">${dto.nickname}</td>
				</tr>
				<tr>
					<td>${dto.regDate}</td>
					<td>조회 ${dto.readcount}</td>
				</tr>
				<tr>
					<td colspan="3">${dto.content}</td>
				</tr>

			</table>
			
			<c:forEach items="${commentList}" var="cdto">
			<table class="comment">
				<tr>
					<td rowspan="2"><img src="/goguma/asset/img/logo.png" alt=""></td>
					<td>${cdto.nickname}</td>
					<td>&nbsp;&nbsp;${cdto.regDate}</td>
					<c:if test="${id == cdto.id}">
					<td class="button">
						<input type="button" value=삭제 class="btn del" id="${cdto.id}"
							onclick="location.href='/goguma/community/commentDel.do?seq=${dto.seq}&commentSeq=${cdto.seq}';">
					</td>
					</c:if>
				</tr>
				<tr>
					<td colspan="2">${cdto.content}</td>
				</tr>
			</table>
			</c:forEach>
			
			<form method="GET" action="/goguma/community/commentAdd.do" class="comment form">
				<textarea name="content" placeholder="내용을 입력하세요." class="content"></textarea>
				<input type="hidden" name="seq" value="${dto.seq}">
				<input type="submit" value="등록" class="btn important">
			</form>


			<div class="button common">
				<input type="button" value="목록" class="btn list"
					onclick="location.href='/goguma/community/communityList.do?page=${page}';">
				<input type="button" value="이전" class="btn list"
					onclick="location.href='/goguma/community/communityDetail.do?seq=${dto.seq-1}&page=${page}';">
				<input type="button" value="다음" class="btn list"
					onclick="location.href='/goguma/community/communityDetail.do?seq=${dto.seq+1}&page=${page}';">
			</div>
		</section>
	</main>
	
	<script>
		const commentId = $(#cdto.id)
		function confirmDel() {
			if(confirm("정말 삭제하시겠습니까?")){
				location.href='/goguma/community/communityDel.do?seq=${dto.seq}';
			}
		}
	</script>
</body>
</html>