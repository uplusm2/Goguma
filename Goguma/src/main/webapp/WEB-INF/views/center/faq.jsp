
<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
	.faqlist .pagebar {
		transform: translateY(20px); 
		width: 510px;
		text-align: center;
		margin: 0 auto;
	}
	.faqlist .pagebar .pagination a{
		border: 0px;
		margin: 0px 3px;
		color: #181818;
	}
	.faqlist .pagebar .pagination a:hover{
		background: #fff;
		color: orange;
	}
	.faqlist .pagebar .pagination .active a{
		background: #fff;
		font-weight: 700;
		color: #9B59B6;
	}
	.faqlist .pagebar .pagination span {
		transform: translateY(2px);
		color: #757575;
	}
	.faqlist .pagebar .pagination .next a:hover span,
	.faqlist .pagebar .pagination .previous a:hover span {
		color: orange;
	}
		
	
	
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
		background-color: #FAF7FB;
	}
	
	
	.subcategory .menu{
		margin-left : 70px;
	}

	.answer{
		display : none;
	}
	.pagebar{
		text-align : center;
	}
	
	.faqlist{
		width : 1150px;
		
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
		
		<section class="faqlist">
		<table class="table table-bordered list">
			<c:forEach items="${list}" var="dto">
				<tr id = "q_${dto.seq}" onClick = "showcon(this.id)" class = "question">
					<td>Q . ${dto.title}</td>
				</tr>
				<tr class = "answer" id = "a_${dto.seq}" >
					<td style="padding-left : 30px;">A . ${dto.content}
					<c:if test="${not empty id && lv.equals('2')}">
					<input type="button" class = "btn btn-default" value="수정" onclick = "location.href='/goguma/center/faqedit.do?seq=${dto.seq}'">
					<input type="button" class = "btn btn-default" value="삭제" onclick = "location.href='/goguma/center/faqdel.do?seq=${dto.seq}'">
					</c:if>
					</td>
					
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

			<c:if test="${not empty id && lv.equals('2')}">
			<input type="button" value="글쓰기"
				class="btn btn-primary"
				onclick="location.href='/goguma/center/faqadd.do';">
			</c:if>
			
		</div>
		</section>
		<%--<%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
	</main>
	
	<script>
	
 		function showcon(id){
			
 			id = id.replace("q","#a");
 			
			$(".answer").css({
				"display" : "none"
			});
			
			$(id).css({
				"display" : "block"
			});
			
		}
		
		/* function showid(id){
			alert(id);
		} */
		
	</script>
</body>
</html>

