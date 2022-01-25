<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">

<!-- nav -->
<nav class="leftside">

	<div class="menu">

		<ul>
			<li>
				<div class="mainmenu1">| Profile</div>
				<ul class="sub sub1">
					<li><a href="#">· Profile 관리</a></li>
					<li><a href="#">· 구매 후기</a></li>
					<li><a href="#">· 판매 후기</a></li>
				</ul>
			</li>
			<li>
				<div class="mainmenu2">| 작성글 내역</div>
				<ul class="sub sub2">
					<li><a href="#">· 커뮤니티 게시글</a></li>
					<li><a href="#">· 거래글 목록</a></li>
				</ul>
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
			$(".mainmenu1").next().slideDown(200);
			
			$(".mainmenu2").next().slideUp(200);
		});
		$(".mainmenu2").click(()=>{
			$(".mainmenu2").next().slideDown(200);
			
			$(".mainmenu1").next().slideUp(200);
		});
		$(".mainmenu3").click(()=>{
			$(".mainmenu1").next().slideUp(200);
			$(".mainmenu2").next().slideUp(200);
		});
		$(".mainmenu4").click(()=>{
			$(".mainmenu1").next().slideUp(200);
			$(".mainmenu2").next().slideUp(200);
		});
		$(".mainmenu5").click(()=>{
			$(".mainmenu1").next().slideUp(200);
			$(".mainmenu2").next().slideUp(200);
		});
		$(".mainmenu6").click(()=>{
			$(".mainmenu1").next().slideUp(200);
			$(".mainmenu2").next().slideUp(200);
		});
		$(".mainmenu7").click(()=>{
			$(".mainmenu1").next().slideUp(200);
			$(".mainmenu2").next().slideUp(200);
		});
	});
	
	$(".mainmenu1").click(()=>{
		/* $(".frame").attr("src","/goguma/profile/userprofile.do?userId=${userId}"); */
	});
	$(".sub1").children().eq(0).click(()=>{
		/* $(".frame").attr("src","/goguma/profile/salesReviewList.do?userId=${userId}"); */
		location.href = "/goguma/profile/mypage.do";
	});
	$(".sub1").children().eq(1).click(()=>{
		/* $(".frame").attr("src","/goguma/profile/purchaseReviewList.do?userId=${userId}"); */
		location.href = "/goguma/profile/purchaseReviewList.do";
	});
	$(".sub1").children().eq(2).click(()=>{
		/* $(".frame").attr("src","/goguma/profile/purchaseReviewList.do?userId=${userId}"); */
		location.href = "/goguma/profile/salesReviewList.do";
	});
	$(".mainmenu2").click(()=>{
		$(".frame").attr("src","/goguma/profile/postlist.do?userid=${userId}"); // 나중에 세션으로 사용할것
	});
	$(".sub2").children().eq(0).click(()=>{
		/* $(".frame").attr("src","/goguma/profile/salesReviewList.do?userId=${userId}"); */
		location.href = "/goguma/profile/mycommunitylist.do";
	});
	$(".sub2").children().eq(1).click(()=>{
		/* $(".frame").attr("src","/goguma/profile/purchaseReviewList.do?userId=${userId}"); */
		/* location.href = "/goguma/profile/purchaseReviewList.do"; */
	});
	$(".mainmenu3").click(()=>{
		$(".frame").attr("src","/goguma/profile/memberdata.do?id=${userId}"); // 나중에 세션으로 사용할것
	});
	$(".mainmenu4").click(()=>{
		location.href = "/goguma/profile/purchaserecord.do";
	});
	$(".mainmenu5").click(()=>{
		location.href = "/goguma/profile/salesrecord.do";
	});
	$(".mainmenu6").click(()=>{
		location.href = "/goguma/profile/myquestionlist.do";
	});
</script>