<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<link rel="stylesheet" type="text/css"
	href="/goguma/asset/css/admin.css">
<style>
.article {
	padding-top: 0;
}

.article .title {
	margin: 0;
	margin-bottom: 20px;
}

.content .btn {
	width: 80px;
}

#modalTable {
	width: 350px;
	margin: auto;
}

#modalTable th,
#modalTable td {
	text-align: left;
	width: 150px;
}

#modalTable td,
#modalTable input{
	text-align: center;
	width: 150px;
}

#modalTable select {
	margin-left:10px;
}


</style>
</head>
<body>
	<!-- userlist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">

			<div class="container">

				<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>

				<div class="article">
					<div class="title" onclick="location.href='/goguma/admin/userlist.do';">
						<h2>전체 회원 관리</h2>
					</div>
					<div class="userlist">
						<table class="table table-hover">
							<tr>
								<th>아이디</th>
								<th>이름</th>
								<th>가입일</th>
								<th>평점</th>
								<th>상태</th>
								<th>처리</th>
							</tr>
							<c:forEach items="${list}" var="dto">
								<tr>
									<td><a href="/goguma/admin/viewuser.do?id=${dto.id}">${dto.id}</a></td>
									<td>${dto.name}</td>
									<td>${dto.since}</td>
									<td>${dto.score}</td>
									<td>${dto.state}</td>

									<c:if test="${dto.state != '차단'}">
									<td>
										<input type="button" class="btn btn-default block" value="차단" 
											data-toggle="modal" data-target="#${dto.id}"
											data-id="${dto.id}">
											
										<div class="modal fade" id="${dto.id}" tabindex="-1"
											role="dialog" aria-labelledby="blockModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="blockModalLabel">차단하기</h4>
													</div>
													<div class="modal-body">
														<form id="blockForm">
															<table id="modalTable">
																<tr>
																	<th>차단할 회원</th>
																	<td>${dto.name}</td>
																</tr>
																<tr>
																	<th>차단할 아이디</th>
																	<td><input type="text" name="id" value="${dto.id}" readonly style="border: 0px"></td>
																</tr>
																<tr>
																	<th>차단 사유</th>
																	<td><select name="blockTypeSeq"
																		class="form-control">
																			<option value="1">사기</option>
																			<option value="2">잠수</option>
																			<option value="3">욕설</option>
																			<option value="4">타 사이트 광고</option>
																			<option value="5">불법</option>
																	</select></td>
																</tr>
															</table>
														</form>
													</div>
													<div class="modal-footer">
														<button type="button" id="blockBtn"
															class="btn btn-default">차단</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal">취소</button>
													</div>
												</div>
											</div>
										</div>
									</td>
								</c:if>

									<%-- <c:if test="${dto.state == '탈퇴'}">
										<td><input type="button" value="차단" disabled="disabled"
											class="btn btn-default"></td>
									</c:if> --%>
									
									<c:if test="${dto.state == '차단'}">
										<td><input type="button" value="차단해제"
											class="btn btn-default btn-unblock" data-id="${dto.id}"></td>
									</c:if>
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
							<form method="GET" action="/goguma/admin/userlist.do">
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
		
		//검색 유지
		<c:if test="${map.searchmode == 'y'}">
			$('select[name=column]').val('${map.column}');
			$('input[name=word]').val('${map.word}');
		</c:if>
		
		//차단
		$(document).on("click", "#blockBtn", function() {
			
			var n = $(this).parent().prev().find("#blockForm");
			var m = n.parent().parent().parent().parent().attr('id');
			
			$.ajax({
				url : '/goguma/admin/block.do',
				type : "POST",
				async : true,
				data : n.serialize(),
				success : function(result) {
					if (result.result != 0) {
						window.alert("차단되었습니다.");
						document.location.reload(true);
					} else {
						window.alert("차단 실패했습니다.");
					}
				}
			});
		})
		
		//차단해제
		$(document).on("click", ".btn-unblock", function() {

			var id = $(this).attr("data-id");

			if (confirm("선택한 회원을 차단 해제하시겠습니까?")) {

				$.ajax({
					url : '/goguma/admin/unblock.do',
					type : "POST",
					async : true,
					data : {
						id : id
					},
					dataType : "text",
					success : function(result) {
						if (result != 0) {
							window.alert("차단 해제되었습니다.");
							document.location.reload(true);
						} else {
							window.alert("차단 해제를 실패했습니다.");
						}
					},
				})
			}
		});
		
	</script>
</body>
</html>