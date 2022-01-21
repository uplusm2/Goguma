<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">

<!-- nav -->
<nav class="leftside">

	<div class="menu">

		<ul>
			<li>
				<div class="mainmenu">
					| 대시보드
				</div>
			</li>
			<li>
				<div class="mainmenu">| 회원 관리</div>
				<ul class="sub">
					<li><a href="/goguma/admin/userlist.do">· 전체 회원 관리</a></li>
					<li><a href="#">· 차단 회원 관리</a></li>
					<li><a href="#">· 탈퇴 회원 관리</a></li>
				</ul>
			</li>
			<li>
				<div class="mainmenu">| 홈페이지 통계</div>
				<ul class="sub">
					<li><a href="#">· 접속 통계</a></li>
					<li><a href="#">· 거래 통계</a></li>
					<li><a href="#">· 회원 통계</a></li>
				</ul>
			</li>
		</ul>
		
		<!-- 
		<div class="sidebar-line"></div>
		-->
	</div>

</nav>
<script>
	/* 메뉴 효과 스크립트 */
	$(function() {
		$(".sub").hide();
		$(".mainmenu").click(function() {
			var mainmenu = $(this).next().css("display");
			if (mainmenu == "none") {
				$(this).next().slideUp(200);
			}

			$(this).next().slideToggle(200);

		});
	});
</script>