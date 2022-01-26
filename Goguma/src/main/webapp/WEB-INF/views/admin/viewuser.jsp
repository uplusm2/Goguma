<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터</title>
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
	
	.table .user-img {
		text-align: center;
		vertical-align: middle;
	}
	
	.table .user-info p {
		margin-bottom: 3px;
	}
	
	.table .user-info .info-title {
		display: inline-block;
		width: 100px;
		margin-left: 50px;
		margin-right: 25px;
		background-color: #EEE;
		color: #333;
	}
	
	.table .user-info .info-title + span {
		color: #333;
	}
	
</style>
</head>
<body>
	<!-- viewuser.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
		<div class="container">
			
			<!-- 왼쪽 네비게이션바 -->
			<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>
			
			<!-- 본문 -->
			<div class="article">
			
				<!-- 제목 -->
				<div class="title">
					<h2>${dto.name}(${dto.id})님의회원정보</h2>
				</div>
	
				<!-- 회원 정보 -->
				<table class="table table-bordered">
					<tr>
						<td class="user-img"><img src="/goguma/asset/img/logo_goguma_.png" style="width: 130px"></td>
						<td class="user-info">
							<p>
								<span class="info-title">아이디</span><span>${dto.id}</span>
							</p>
							<p>
								<span class="info-title">이름</span><span>${dto.name}</span>
							</p>
							<p>
								<span class="info-title">닉네임</span><span>${dto.nickname}</span>
							</p>
							<p>
								<span class="info-title">전화번호</span><span>${dto.tel}</span>
							</p>
							<p>
								<span class="info-title">이메일</span><span>${dto.email}</span>
							</p>
							<p>
								<span class="info-title">주소</span><span>${dto.address}</span>
							</p>
							<p>
								<span class="info-title">생년월일</span><span>${dto.birth}</span>
							</p>
							<p>
								<span class="info-title">가입일</span><span>${dto.since}</span>
							</p>
							<p>
								<span class="info-title">평점</span><span>${dto.score}</span>
							</p>
							<p>
								<span class="info-title">상태</span><span>${dto.state}</span>
							</p>
						</td>
					</tr>
				</table>
				
				<!-- 회원 활동 내역 -->
				<div role="tabpanel">
	
					<!-- 회원 활동 내역 네비게이션바 -->
					<ul class="nav nav-pills" role="tablist">
						<li role="presentation" class="active">
							<a href="#sellRecord" aria-controls="sellRecord" role="tab" data-toggle="tab">판매내역</a>
						</li>
						<li role="presentation">
							<a href="#buyRecord" aria-controls="buyRecord" role="tab" data-toggle="tab">구매내역</a>
						</li>
						<li role="presentation">
							<a href="#communityRecord" aria-controls="communityRecord" role="tab" data-toggle="tab">작성글</a>
						</li>
						<li role="presentation">
							<a href="#comcommentRecord" aria-controls="comcommentRecord" role="tab" data-toggle="tab">작성댓글</a>
						</li>
						<li role="presentation">
							<a href="#questionRecord" aria-controls="questionRecord" role="tab" data-toggle="tab">문의내역</a>
						</li>
					</ul>
	
					<!-- 회원 활동 내역 테이블 -->
					<div class="tab-content">
						
						<!-- 판매 내역 -->
						<div role="tabpanel" class="tab-pane active" id="sellRecord">
							<table class="table table-bordered" id="sellTable">
								<thead>
									<tr>
										<th>번호</th>
										<th>상품명</th>
										<th>등록날짜</th>
										<th>판매날짜</th>
										<th>거래자 아이디</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
						
						<!-- 구매 내역 -->
						<div role="tabpanel" class="tab-pane" id="buyRecord">
							<table class="table table-bordered" id="buyTable">
								<thead>
									<tr>
										<th>번호</th>
										<th>상품명</th>
										<th>등록날짜</th>
										<th>구매날짜</th>
										<th>거래자 아이디</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
						
						<!-- 작성글 -->
						<div role="tabpanel" class="tab-pane" id="communityRecord">
							<table class="table table-bordered" id="communityTable">
								<thead>
									<tr>
										<th>번호</th>
										<th>제목</th>
										<th>작성날짜</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
						
						<!-- 작성댓글 -->
						<div role="tabpanel" class="tab-pane" id="comcommentRecord">
							<table class="table table-bordered" id="comcommentTable">
								<thead>
									<tr>
										<th>댓글번호</th>
										<th>글번호</th>
										<th>댓글내용</th>
										<th>작성날짜</th>
									</tr>
								</thead>
								<tbody>
								</tbody>
							</table>
						</div>
						
						<!-- 문의내역 -->
						<div role="tabpanel" class="tab-pane" id="questionRecord">
							<table class="table table-bordered" id="questionTable">
								<tr>
									<th>번호</th>
									<th>문의유형</th>
									<th>제목</th>
									<th>작성날짜</th>
									<th>상태</th>
								</tr>
							</table>
						</div>
					</div><!-- 회원 활동 내역 테이블 끝 -->
					
				</div><!-- 회원 활동 내역 끝-->
			
			</div><!-- 본문 끝 -->
			
		</div><!-- container 끝 -->

		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>
		</section>
	</main>

	<script>
		
		/* 판매내역 가져오는 함수 */
		function loadSellRecord() {
			$.ajax({
				type: 'GET',
				url: '/goguma/admin/sellrecord.do',
				data: 'id=${dto.id}',
				dataType: "json",
				success: function(list){
					$('#sellTable tbody').empty();
					list.forEach((item) => {
						$('#sellTable tbody').append('<tr>');
						$('#sellTable tbody').append(`<td>\${item.productSeq}</td>`);
 						$('#sellTable tbody').append(`<td>\${item.name}</td>`);
						$('#sellTable tbody').append(`<td>\${item.regDate}</td>`);
						$('#sellTable tbody').append(`<td>\${item.dealDate}</td>`);
						$('#sellTable tbody').append(`<td>\${item.dealerId}</td>`);
						$('#sellTable tbody').append('</tr>');
					});
				}
			});
		}
		
		/* 페이지 로드될 때 판매내역 불러오기 */
		$(document).ready(loadSellRecord);
		
		/* 판매내역 클릭하면 불러오기 */
		$("a[href$='#sellRecord']").click(loadSellRecord);
		
		/* 구매내역 클릭하면 불러오기 */
		$("a[href$='#buyRecord']").click(() => {
			$.ajax({
				type: 'GET',
				url: '/goguma/admin/buyrecord.do',
				data: 'id=${dto.id}',
				dataType: "json",
				success: function(list){
					$('#buyTable tbody').empty();
					list.forEach((item) => {
						$('#buyTable tbody').append('<tr>');
						$('#buyTable tbody').append(`<td>\${item.productSeq}</td>`);
 						$('#buyTable tbody').append(`<td>\${item.name}</td>`);
						$('#buyTable tbody').append(`<td>\${item.regDate}</td>`);
						$('#buyTable tbody').append(`<td>\${item.dealDate}</td>`);
						$('#buyTable tbody').append(`<td>\${item.dealerId}</td>`);
						$('#buyTable tbody').append('</tr>');
					});
				}
			});
		});
		
		/* 작성글 클릭하면 불러오기 */
		$("a[href$='#communityRecord']").click(() => {
			$.ajax({
				type: 'GET',
				url: '/goguma/admin/communityrecord.do',
				data: 'id=${dto.id}',
				dataType: "json",
				success: function(list){
					$('#communityTable tbody').empty();
					list.forEach((item) => {
						$('#communityTable tbody').append('<tr>');
						$('#communityTable tbody').append(`<td>\${item.seq}</td>`);
 						$('#communityTable tbody').append(`<td>\${item.title}</td>`);
						$('#communityTable tbody').append(`<td>\${item.regDate}</td>`);
						$('#communityTable tbody').append('</tr>');
					});
				}
			});
		});
		
		/* 작성댓글 클릭하면 불러오기 */
		$("a[href$='#comcommentRecord']").click(() => {
			$.ajax({
				type: 'GET',
				url: '/goguma/admin/comcommentrecord.do',
				data: 'id=${dto.id}',
				dataType: "json",
				success: function(list){
					$('#comcommentTable tbody').empty();
					list.forEach((item) => {
						$('#comcommentTable tbody').append('<tr>');
						$('#comcommentTable tbody').append(`<td>\${item.seq}</td>`);
 						$('#comcommentTable tbody').append(`<td>\${item.cseq}</td>`);
						$('#comcommentTable tbody').append(`<td>\${item.content}</td>`);
						$('#comcommentTable tbody').append(`<td>\${item.regDate}</td>`);
						$('#comcommentTable tbody').append('</tr>');
					});
				}
			});
		});
		
		/* 문의내역 클릭하면 불러오기 */
		$("a[href$='#questionRecord']").click(() => {
			$.ajax({
				type: 'GET',
				url: '/goguma/admin/questionrecord.do',
				data: 'id=${dto.id}',
				dataType: "json",
				success: function(list){
					$('#questionTable tbody').empty();
					list.forEach((item) => {
						$('#questionTable tbody').append('<tr>');
						$('#questionTable tbody').append(`<td>\${item.seq}</td>`);
						$('#questionTable tbody').append(`<td>\${item.type}</td>`);
 						$('#questionTable tbody').append(`<td>\${item.title}</td>`);
						$('#questionTable tbody').append(`<td>\${item.regDate}</td>`);
						$('#questionTable tbody').append(`<td>\${item.state}</td>`);
						$('#questionTable tbody').append('</tr>');
					});
				}
			});
		});
		
	</script>
</body>
</html>
