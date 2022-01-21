<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<style>
	.left-nav { /* 사이드 바가 차지하는 전체 공간 */
		padding-top: 3%;
		padding-bottom: 3%;
		height: 75vh;
		width: 20vh;
		float: left;
	}
	
	.sidebar { /* 메뉴가 들어가는 공간 */
		height: 100%;
		width: 95%;
		padding-top: 30%;
		padding-left: 30%;
		float: left;
	}
	
	.sidebar div:nth-child(n+1) { /* 각각의 메뉴 */
		margin-top: 15%;
		cursor: pointer;
	}
	
	.sidebar div:nth-child(n+1):hover { /* 각각의 메뉴 호버 */
		color: #9B59B6;
	}
	
	.sidebar div:nth-child(2) {
		display: none;
	}
	
	.sidebar div:nth-child(3) {
		display: none;
	}
	
	.sidebar_line { /* 보라색 라인 */
		background-color: #9B59B6;
		height: 100%;
		width: 3px;
		float: left;
	}
	
	.left-nav:after { /* float 처리 */
		clear: both;
	}
</style>
<nav class="left-nav">
	<div class="sidebar">
		<!-- 메뉴를 div로 하나씩 추가하면됨. -->
		<div>
			Profile<i class="bi bi-arrow-down-circle" style="margin-left:10%"></i>
		</div>
		<div style="margin-left: 15%">판매후기</div>
		<div style="margin-left: 15%">구매후기</div>
		<div>작성글 내역</div>
	</div>
	<div class="sidebar_line">
		<!-- 보라색 라인  -->
	</div>
</nav>

<script>
	$(".sidebar").children().eq(0).click(()=>{
		$(".sidebar").children().eq(1).toggle();
		$(".sidebar").children().eq(2).toggle();
	});
	$(".sidebar").children().eq(1).click(()=>{
		
	});
</script>