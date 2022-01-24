<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터 전체 회원 관리</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
</style>
</head>
<body>
	<!-- userlist.jsp -->
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
								<td><a href="/goguma/admin/viewuser.do?id=${dto.id}">${dto.id}</a>
								</td>
								<td>${dto.name}</td>
								<td>${dto.since}</td>
								<td>${dto.score}</td>
								<td>${dto.state}</td>

								<c:if test="${dto.state == '정상'}">
									<td>
										<button type="button" class="btn btn-primary btn-lg"
											data-toggle="modal" data-target="#myModal" data-id="${dto.id}">차단</button>

										<div class="modal fade" id="myModal" tabindex="-1"
											role="dialog" aria-labelledby="myModalLabel"
											aria-hidden="true">
											<div class="modal-dialog">
												<div class="modal-content">
													<div class="modal-header">
														<button type="button" class="close" data-dismiss="modal"
															aria-label="Close">
															<span aria-hidden="true">&times;</span>
														</button>
														<h4 class="modal-title" id="myModalLabel">차단하기</h4>
													</div>
													<div class="modal-body">
														<form>
															<table class="table table-bordered">
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
																	<td><select name="blockType" class="form-control">
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
														<button type="button" id="blockBtn" class="btn btn-primary">차단</button>
														<button type="button" class="btn btn-default"
															data-dismiss="modal">취소</button>
													</div>
												</div>
											</div>
										</div>
									</td>

								</c:if>

								<c:if test="${dto.state == '탈퇴'}">
									<td><input type="button" value="차단" disabled="disabled"
										class="btn btn-default"></td>
								</c:if>

								<c:if test="${dto.state == '차단'}">
									<td><input type="button" value="차단해제"
										class="btn btn-default btn-unblock" data-id="${dto.id}"></td>
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

				<!-- Modal -->


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
		
		$('#myModal').on('show.bs.modal', function(event) {
						
			$(this).find("#blockBtn").click(() => {
				
				var id = $(this).find('input[name=id]').val();
				var blockTypeSeq = $(this).find('select[name=blockType]').val();

				
				$.ajax({
					url : '/goguma/admin/block2.do',
					type : "POST",
					async : true,
					data : $('#myModal').find('form').serialize(),
					data
					success : function(result) {
						//console.log(data);
						if (result.result != 0) {
							$('#myModal').modal("hide");
							window.alert("차단되었습니다.");
							document.location.reload(true);
						} else {
							window.alert("차단 실패했습니다.");
						}
					},
				})
				
			})
		
		});

		$(document).on("click", ".btn-unblock", function() {

			var id = $(this).attr("data-id");

			if (confirm("선택한 회원을 차단 해제하시겠습니까?")) {

				$.ajax({
					url : '/goguma/admin/unblock2.do',
					type : "POST",
					async : true,
					data : {
						id : id
					},
					dataType : "text",
					success : function(result) {
						//console.log(data);
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