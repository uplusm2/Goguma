<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<style>
</style>
</head>
<body>
	<!-- withdrawlist.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
			<%--<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"--%>
			<div>
				<table class="table table-bordered list">
					<tr>
						<th>아이디</th>
						<th>이름</th>
						<th>탈퇴날짜</th>
						<th>탈퇴유형</th>
						<th>처리</th>
					</tr>
					<tr>
						<c:forEach items="${list}" var="dto">
							<tr>
								<td><a href="/goguma/admin/viewuser.do?id=${dto.id}">${dto.id}</a>
								</td>
								<td>${dto.name}</td>
								<td>${dto.regDate}</td>
								<td>${dto.type}</td>
								<td><input type="button" value="영구탈퇴"
									class="btn btn-default btn-withdraw" data-id="${dto.id}"></td>
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
					<form method="GET" action="/goguma/admin/blocklist.do">
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
						onclick="location.href='/goguma/admin/withdrawlist.do';">

				</div>

			</div>
		</section>

		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>

	</main>

	<script>
		
		//영구 탈퇴 버튼 추가
		/* 
	    $(document).on("click", ".btn-withdraw", function () {
	        
	    	var id = $(this).attr("data-id");
	    	
	    	if (confirm("선택한 회원을 영구 탈퇴시키겠습니까?")) {
	        	
	    		$.ajax({
	                url: '/goguma/admin/withdraw.do',
	                type: "POST",
	                data: {id: id},
	                dataType: "text",
	                success: function (result) { 
	                    //console.log(data);
	                    if (result != 0){
		                	window.alert("차단 해제되었습니다."); 
	                        document.location.reload(true);                     	
	                    } else {
		                	window.alert("차단 실패했습니다."); 
	                    }
	                },
	            })
	        }
	    })
	 	*/
			
	</script>
</body>
</html>