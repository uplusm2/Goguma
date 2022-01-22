<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">

<!-- nav -->
<nav class="leftside">

	<div class="menu">

		<ul>
			<li>
				<div class="mainmenu1">| Profile</div>
				<ul class="sub">
					<li><a href="#">· 구매 후기</a></li>
					<li><a href="#">· 판매 후기</a></li>
				</ul>
			</li>
			<li>
				<div class="mainmenu2">| 작성글 내역</div>
			</li>
			<li>
				<div class="mainmenu3">| 회원 정보</div>
			</li>
			<li>
				<div class="mainmenu4">| 구매 내역</div>
			</li>
			<li>
				<div class="mainmenu5">| 판매 내역</div>
			</li>
			<li>
				<div class="mainmenu6">| 문의 내역</div>
			</li>
			<li>
				<div class="mainmenu7">| 회원탈퇴</div>
			</li>
		</ul>
		
	</div>

</nav>
<script>
	/* 메뉴 효과 스크립트 */
	$(function() {
		$(".sub").hide();
		$(".mainmenu1").click(function() {
			$(this).next().slideDown(200);
		});
		$(".mainmenu2").click(()=>{
			$(".mainmenu1").next().slideUp(200);
		});
	});
</script>