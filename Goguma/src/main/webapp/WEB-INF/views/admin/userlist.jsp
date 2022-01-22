<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터 전체 회원 관리</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" href="/bangterior/css/main_admin.css">
<style>
</style>
</head>
<body>
	<!-- main.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
			<%--<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"--%>
			<div>
				<table class="table table-bordered list">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>가입일</th>
						<th>평점</th>
						<th>상태</th>
						<th>처리</th>
					</tr>
					<tr>
						<c:forEach items="${list}" var="dto">
							<tr>
								<td>${dto.id}</td>
								<td>${dto.name}</td>
								<td>${dto.since}</td>
								<td>${dto.score}</td>
								<td>${dto.state}</td>

								<c:if test="${dto.state == '정상'}">
									<td><input type="button" value="차단" id="blockBtn"
										class="btn important btn-block" data-name="${dto.name}"
										data-id="${dto.id}"></td>
								</c:if>

								<c:if test="${dto.state == '탈퇴'}">
									<td><input type="button" value="차단" disabled="disabled"
										class="btn btn-default"></td>
								</c:if>

								<c:if test="${dto.state == '차단'}">
									<td><input type="button" value="차단해제"
										class="btn btn-default"
										onclick="location.href='/goguma/admin/unblock.do?id=${dto.id}';">
									</td>
								</c:if>
							</tr>
						</c:forEach>
						<c:if test="${list.size() == 0 }">
							<tr>
								<td colspan="6">일치하는 회원이 없습니다.</td>
							</tr>
						</c:if>
					</tr>
				</table>

				<div class="pagebar">${pagebar}</div>

				<div class="search">
					<form method="GET" action="/goguma/admin/userlist.do">
						<table style="width: 500px; margin: 20px auto">
							<tr>
								<td><select name="column" class="form-control">
										<option value="id">아이디</option>
										<option value="name">이름</option>
								</select></td>
								<td><input type="text" name="word" class="form-control"
									required></td>
								<td><input type="submit" value="검색하기"
									class="btn btn-default"></td>
							</tr>
						</table>
					</form>
				</div>

				<div class="btns">

					<input type="button" value="목록보기" class="btn btn-default"
						onclick="location.href='/goguma/admin/userlist.do';">

				</div>

			</div>
		</section>

		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>

	</main>

	<script>
		
		/* 
		$('.btn-block').click(() => {
			
	        //var id = event.srcElement.dataset['id'];
	        var blockBtn = event.srcElement;
	        
			if (confirm(blockBtn.dataset['name'] + '(' + blockBtn.dataset['id'] + ')' + '님을 차단하시겠습니까?')) {
				
				
				$.ajax({
					type: 'GET',
					url: '/goguma/admin/block.do?id=' + blockBtn.dataset['id'],
					success: function(result) {
						if(result == 1) {
							alert(blockBtn.dataset['name'] + '(' + blockBtn.dataset['id'] + ')' + '님을 차단했습니다.');
							blockBtn.value = '차단해제';
							blockBtn.classList.remove('important');
							blockBtn.classList.add('btn-default');							
						} else {
							alert('차단을 실패했습니다.');
						}
					}
				});
				
	        
			} else {
	            alert('차단을 취소했습니다');
	        }
			
			
		})
		 */
		 
		$('.btn-block').click(() => {
			
			var id = event.srcElement.dataset['id'];
			var name = event.srcElement.dataset['name'];
	        
			if (confirm(name + '(' + id + ')' + '님을 차단하시겠습니까?')) {
				location.href = '/goguma/admin/block.do?id=' + id + '&name=' + name;
	        } 
			
		}) 
		
		//TODO
		//아이디로 클릭했을때는 하나만 클릭되고 클래스로 주면 여러개 클릭된다 왜....?
		//this로 했을 땐 안 되고 event.srcElement으로 했을땐 된다...? 
		/* 
		$('.btn-block').click(() => {
	        var id = event.srcElement.dataset['id'];
			//var id = $(this).data('id')
			if (confirm(id + '님을 차단하시겠습니까?')) {
				console.log(id);
				//$(this).val("차단해제");
				event.srcElement.value = '차단해제';
				//console.log($(this).data('id'))					//X
	            //console.log(event.srcElement.dataset['id']);		//O
	        } else {
	            console.log('취소');
	        }
		}) 
		*/
		
		/* 
		$(document).ready(function(){
			$('#blockBtn').click(() => {
		        //var id = event.srcElement.dataset['id'];
				var id = $(this).data('id')
				if (confirm(id + '님을 차단하시겠습니까?')) {
					console.log(id);					
		        } else {
		            console.log('취소');
		        }
			});			
		});
		*/
		
		
		
	</script>
</body>
</html>