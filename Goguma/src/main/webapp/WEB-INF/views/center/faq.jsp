<<<<<<< HEAD

<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.subcategory{
		height : 100px;
		background-color : #9B59B6;
	}
	.center-content{
		position : relative;
		width : 1000px;
		margin-left : auto;
		margin-right : auto;
	}
	.question:hover{
		cursor : pointer;
	}
	.answer{
		display : none;
	}
	.pagebar{
		text-align : center;
	}

</style>
</head>
<body>
	<!-- main.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<%@include file="/WEB-INF/views/center/title.jsp" %>
		<div class = "subcategory">
		<form method="GET" action="/goguma/center/faq.do">
			<ul class = "menu">
				<li onclick = "location.href='/goguma/center/faq.do?search=1&page=1'">계정/인증</li>
				<li onclick = "location.href='/goguma/center/faq.do?search=2&page=1'">구매/판매</li>
				<li onclick = "location.href='/goguma/center/faq.do?search=3&page=1'">운영정책</li>
				<li onclick = "location.href='/goguma/center/faq.do?search=4&page=1'">서비스이용</li>
				<li onclick = "location.href='/goguma/center/faq.do?search=5&page=1'">기타</li>
			</ul>
		</form>
		</div>
		<section class="center-content">
		<table class="table table-bordered list">
			<c:forEach items="${list}" var="dto">
				<tr id = "q_${dto.seq}" onClick = "showid(this.id)" class = "question">
					<td>Q . ${dto.title}</td>
				</tr>
				<tr class = "answer" id = "a_${dto.seq}" >
					<td style="padding-left : 30px;">A . ${dto.content}</td>
				</tr>
			</c:forEach>
			<c:if test="${list.size() == 0}">
			<tr>
				<td colspan="5">게시물이 없습니다.</td>
			</tr>
			</c:if>
		</table>
		
		<div class="pagebar">${pagebar}</div>
			
		<div class="btns">

			<c:if test="${not empty id}">
			<input type="button" value="글쓰기"
				class="btn btn-primary"
				onclick="location.href='/code/board/add.do';">
			</c:if>
			
		</div>
		</section>
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
/* 		function showcontent(id){
			alert(id);
			int check = 0;
			var el = document.getElementByClass(obj);
			id = id.replace("q","a");
			
			
			if(check == 1){
				$(.answer).css({
					"display" : "none"
				})
			}
			
			$(#id).css({
				"display" : "block"
			})
			
			
		} */
		
		function showid(id){
			alert(id);
		}
		
	</script>
</body>
</html>

=======
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.subcategory{
		height : 100px;
		background-color : #9B59B6;
	}
	.content{
		position : relative;
		width : 1000px;
		margin-left : auto;
		margin-right : auto;
	}
	.question:hover{
		cursor : pointer;
	}
	.answer{
		display : none;
	}
</style>
</head>
<body>
	<!-- main.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<%@include file="/WEB-INF/views/center/title.jsp" %>
		<div class = "subcategory">
			
		</div>
		<section class="content">
		<table class="table table-bordered list">
			<c:forEach items="${list}" var="dto">
				<tr class = "question" id = "q_${dto.seq}" onClick = "showcontent(this.id)">
					<td>Q . ${dto.title}</td>
				</tr>
				<tr class = "answer" id = "a_${dto.seq}" >
					<td style="padding-left : 30px;">A . ${dto.content}</td>
				</tr>
			</c:forEach>
			<c:if test="${list.size() == 0}">
			<tr>
				<td colspan="5">게시물이 없습니다.</td>
			</tr>
			</c:if>
		</table>
		<div class="btns">

			<c:if test="${not empty id}">
			<input type="button" value="글쓰기"
				class="btn btn-primary"
				onclick="location.href='/code/board/add.do';">
			</c:if>
			
		</div>
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
		function showcontent(id){
			int check = 0;
			var el = document.getElementByClass(obj);
			id = id.replace("q","a");
			alert("id");
			
			if(check == 1){
				$(.answer).css({
					"display" : "none"
				})
			}
			
			$(#id).css({
				"display" : "block"
			})
			
			
		}
	</script>
</body>
</html>







>>>>>>> refs/remotes/origin/hyein
