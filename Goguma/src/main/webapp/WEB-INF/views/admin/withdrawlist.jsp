<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">
<style>
.article {
	padding-top: 0;
}

.article .title {
	margin: 0;
	margin-bottom: 20px;
}
</style>
</head>
<body>
	<!-- withdrawlist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		
		<section class="content">
			
			<div class="container">
				
				<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>
				
				<div class="article">
					
					<!-- 게시판 제목 -->
					<div class="title" onclick="location.href='/goguma/admin/userlist.do';">
						<h2>탈퇴 회원 관리</h2>
					</div>
					
					<!-- 게시판 -->
					<div class="userlist">
						<table class="table">
							<tr>
								<th>아이디</th>
								<th>이름</th>
								<th>탈퇴날짜</th>
								<th>탈퇴유형</th>
								<th>처리</th>
							</tr>
							<c:forEach items="${list}" var="dto">
								<tr>
									<td><a href="/goguma/admin/viewuser.do?id=${dto.id}">${dto.id}</a>
									</td>
									<td>${dto.name}</td>
									<td>${dto.regDate}</td>
									<td>${dto.type}</td>
									<td><input type="button" value="차단"
										class="btn btn-default btn-withdraw" data-id="${dto.id}"></td>
								</tr>
							</c:forEach>

							<c:if test="${list.size() == 0 }">
								<tr>
									<td colspan="6">일치하는 회원이 없습니다.</td>
								</tr>
							</c:if>
						</table>
						
						<!-- 페이지바 -->
						<div class="pagebar">${pagebar}</div>
						
						<!-- 검색 -->
						<div class="search">
							<form method="GET" action="/goguma/admin/blocklist.do">
								<select name="column" class="text">
									<option value="id">아이디</option>
									<option value="name">이름</option>
								</select> 
								<input type="text" name="word" placeholder="검색어를 입력하세요." required class="text"> 
								<input type="image" src="/goguma/asset/img/search.png" class="search-img">
							</form>
						</div>
						
					</div>
				</div>
			</div>
		</section>

		<%@include file="/WEB-INF/views/inc/footer.jsp" %>

	</main>

	<script>
		
		<c:if test="${map.searchmode == 'y'}">
			$('select[name=column]').val('${map.column}');
			$('input[name=word]').val('${map.word}');
		</c:if>

		$(document).on("click", ".btn-withdraw", function () {
		    
			var id = $(this).attr("data-id");
			
			if (confirm("선택한 회원을 차단시키겠습니까?")) {
		    	
				$.ajax({
		            url: '/goguma/admin/block.do',
		            type: "POST",
		            data: {id: id},
		            dataType: "text",
		            success: function (result) { 
		                if (result != 0){
		                	window.alert("차단되었습니다."); 
		                    document.location.reload(true);                     	
		                } else {
		                	window.alert("차단 실패했습니다."); 
		                }
		            },
		        })
		    }
		})
		
	</script>
</body>
</html>