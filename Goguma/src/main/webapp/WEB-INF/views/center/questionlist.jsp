<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.subcategory{
		margin-top : 20px;
		width : 1150px;
		height : 60px;
		margin-left : auto;
		margin-right : auto;
	}
	
	.subcategory .menu li{
		float : left;
		text-align : center;
		cursor : pointer;
		height : 60px;
		padding : 15px;
		width : 200px;
		border : 1px solid #9B59B6;
		
	}
	.subcategory .menu li:hover{
		border-bottom : 8px solid #9B59B6;
		font-weight : bold;
		color : #9B59B6;
	}
	
	.subcategory .menu{
		
		margin-left : 70px;
	}

	#li3{
    	color : orange;
	}
</style>
</head>
<body>
	<!-- noticelist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<%@include file="/WEB-INF/views/center/title.jsp" %>
		<div class = "subcategory">
		<form method="GET" action="/goguma/center/faq.do">
			<ul class = "menu">
				<li onclick = "location.href='/goguma/center/questionlist.do?search=1&page=1'" id = "menu1">계정/인증</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=2&page=1'" id = "menu2">구매/판매</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=3&page=1'" id = "menu3">운영정책</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=4&page=1'" id = "menu4">서비스이용</li>
				<li onclick = "location.href='/goguma/center/questionlist.do?search=5&page=1'" id = "menu5">기타</li>
			</ul>
		</form>
		</div>
			<section class="center">
			<table class="table table-bordered list">
				<tr>
					<th></th>
					<th>제목</th>
					<th>작성자</th>
					<th>날짜</th>
				</tr>
				<c:forEach items="${list}" var="dto">
				
				<tr>
					<td>${dto.rnum}</td>
					<td>
						<a href="/goguma/center/questionview.do?seq=${dto.seq}&page=${nowPage}%search=${search}">${dto.title}</a>
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
				<form method="GET" action="/goguma/center/questionlist.do">
					<table style="width:500px;margin:20px auto;">
						<tr>
							<td>
								<select name="column" class="form-control">
									<option value="title">제목</option>
									<option value="content">내용</option>
									<option value="id">이름</option>
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
			
			<div class="list-btn">
				<c:if test="${not empty id && $lv.equals('1')}">
				<input type="button" value="글쓰기"
					class="btn btn-primary"
					onclick="location.href='/goguma/center/questionadd.do';">
				</c:if>
				
			</div>
		</section>
		
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
		title = "#menu"+${search};
		
		$(title).css({
			"border-bottom" : "8px solid #9B59B6",
			"font-weight" : "bold",
			"color" : "#9B59B6"
		});
		
		<c:if test="${map.searchmode == 'y'}">
		//검색 상태를 유지
		$('input[name=word]').val('${map.word}');
		</c:if>
		
	</script>
</body>
</html>

