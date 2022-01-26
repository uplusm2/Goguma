<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!-- nav -->
<nav class="leftside">

	<div class="menu">

		<ul>
			<li>
				<div class="mainmenu">
					<a href="/goguma/admin/dashboard.do">| 대시보드</a>
				</div>
			</li>
			<li>
				<div class="mainmenu">| 회원 관리</div>
				<ul class="sub">
					<li><a href="/goguma/admin/userlist.do">· 전체 회원 관리</a></li>
					<li><a href="/goguma/admin/blocklist.do">· 차단 회원 관리</a></li>
					<li><a href="/goguma/admin/withdrawlist.do">· 탈퇴 회원 관리</a></li>
				</ul>
			</li>
			<li>
				<div class="mainmenu">| 홈페이지 통계</div>
				<ul class="sub">
					<li><a href="/goguma/admin/connstatis.do">· 접속 통계</a></li>
					<li><a href="/goguma/admin/dealstatis.do">· 거래 통계</a></li>
					<li><a href="/goguma/admin/userstatis.do">· 회원 통계</a></li>
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