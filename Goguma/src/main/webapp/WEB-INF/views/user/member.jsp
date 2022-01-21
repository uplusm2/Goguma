<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

	.panel {
		width: 200px;
		margin: 0 auto; 
		margin-top: 150px;
		text-align: center;
	}
	
	.info {
		margin-bottom: 10px;
	}

</style>
</head>
<body>
	<!-- member/member.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section class="content">
			
			<!--  
				1. 로그인 링크
				2. 로그아웃 링크
				3. 회원가입 링크
				4. 회원탈퇴 링크
				5. 로그인 정보
			-->
			
			<div class="panel panel-default">
				<div class="panel-heading">회원</div>
				<div class="panel-body">
								
					<c:if test="${not empty id}">
					<div class="info">
						<div><span class="label label-primary">lv${lv}</span> ${id}(${name})</div>
						<div style="margin-top:10px;">작성한 게시물수: ${count}개</div>
						<div>작성한 댓글수: 0개</div>
					</div>
					
					<input type="button" value="로그아웃"
						class="btn btn-default"
						onclick="location.href='/logoutok.do';">
					</c:if>
					
					<c:if test="${empty id}">
					<input type="button" value="로그인"
						class="btn btn-default"
						onclick="location.href='/login.do';">
						
					<hr>
					
					<form method="POST" action="/loginok.do">
						<input type="hidden" name="id" value="hong">
						<input type="hidden" name="pw" value="1111">
						<input type="submit" value="따라라라랄" class="btn btn-default">
					</form>
					
					<form method="POST" action="/loginok.do">
						<input type="hidden" name="id" value="test">
						<input type="hidden" name="pw" value="1111">
						<input type="submit" value="테스트" class="btn btn-default">
					</form>
					
					<form method="POST" action="/loginok.do">
						<input type="hidden" name="id" value="admin">
						<input type="hidden" name="pw" value="1111">
						<input type="submit" value="관리자" class="btn btn-default">
					</form>
					
					</c:if>
				</div>
			</div>
			
			
		</section>
		<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	</main>
	
	<script>
	
	</script>
</body>
</html>







