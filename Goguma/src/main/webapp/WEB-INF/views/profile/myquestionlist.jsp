<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	#tbl{
		width: 75%;
	}
	#tbl td:nth-child(1) {
		width:10%; 
		vertical-align: middle;
	}
	#tbl td:nth-child(2) {
		width:60%; 
	}
	#tbl td:nth-child(3) {
		width: 10%; 
		vertical-align: middle;
	}
	#tbl td:nth-child(4) {
		width: 25%; 
		vertical-align: middle;
	}
	.btns{
		position: absolute;
		right: 100px;
	}

	
</style>
</head>
<body>
	<!-- noticelist.jsp -->
	<div class="container"
		style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="community">
				<div class="title">
						<h2>문의 내역</h2>
				</div>
			<table class="table" id = "tbl">
				<tr>
					<th>번호</th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				
				<tr>
					<td>${dto.rnum}</td>
					<td>
						<a href="/goguma/center/questionview.do?seq=${dto.seq}&page=${nowPage}">${dto.title}</a>
						<c:if test="${dto.isNew == 1}">
						<span class="orange">N</span>
						</c:if>
					</td>
					<td>${dto.user}</td>
					<td>${dto.regdate}</td>
				</tr>
				</c:forEach>
				<c:if test="${list.size() == 0}">
				<tr>
					<td colspan="4">게시물이 없습니다.</td>
				</tr>
				</c:if>
			</table>
			
			<div class="pagebar">${pagebar}</div>
			
			<div class="search">
				<form method="GET" action="/goguma/profile/myquestionlist.do">
					<table style="width:500px;margin:20px auto;">
						<tr>
							<td>
								<select name="column" class="form-control">
									<option value="title">제목</option>
									<option value="content">내용</option>
								</select>
							</td>
							<td>
								<input type="text" name="word" class="form-control" required>
							</td>
							<td>
								<input type="submit" value="검색하기" class="btn btn-default">
							</td>
						</tr>
					</table>
					<input type="hidden" name="search" value="${search}">
				</form>
			</div>		
				<div class="btns">
				<c:if test="${not empty id}">
					<input type="button" value="글쓰기"
					class="btn btn-primary"
					onclick="location.href='/goguma/center/questionadd.do';">
				</c:if>
				
				</div>
			</section>
		</main>
	</div>
		
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	
	<script>
		<c:if test="${map.searchmode == 'y'}">
		//검색 상태를 유지
		$('select[name=column]').val('${map.column}');
		$('input[name=word]').val('${map.word}');
		</c:if>
		
	</script>
</body>
</html>

