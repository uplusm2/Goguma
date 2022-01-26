<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">

<!-- nav -->
<nav class="leftside" style="margin-right: 50px; margin-bottom: 50px;">

	<div class="menu">

		<ul>
			<li>
				<div class="mainmenu1">| 회원 정보</div>
				<ul class="sub sub1">
					<li><a href="#">· Profile 관리</a></li>
					<li><a href="#">· 회원 정보</a></li>
					<li><a href="#">· 구매 후기</a></li>
					<li><a href="#">· 판매 후기</a></li>
					<li><a href="#">· 회원탈퇴</a></li>
				</ul>
			</li>
			<li>
				<div class="mainmenu2">| 작성글 내역</div>
				<ul class="sub sub2">
					<li><a href="#">· 커뮤니티 <br>&nbsp;&nbsp;게시글</a></li>
					<li><a href="#">· 거래글 목록</a></li>
					<li><a href="#">· 문의 내역</a></li>
				</ul>
			</li>
			<li>
				<div class="mainmenu3">| 거래 내역</div>
				<ul class="sub sub3">
					<li><a href="#">· 구매 내역</a></li>
					<li><a href="#">· 판매 내역</a></li>
				</ul>
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
			$(".mainmenu3").next().slideUp(200);
		});
		$(".mainmenu2").click(()=>{
			$(".mainmenu2").next().slideDown(200);
			
			$(".mainmenu1").next().slideUp(200);
			$(".mainmenu3").next().slideUp(200);
		});
		$(".mainmenu3").click(()=>{
			$(".mainmenu3").next().slideDown(200);
			
			$(".mainmenu1").next().slideUp(200);
			$(".mainmenu2").next().slideUp(200);
		});
	});
	
	
	
	$(".sub1").children().eq(0).click(()=>{
		location.href = "/goguma/profile/mypage.do";
	});
	$(".sub1").children().eq(1).click(()=>{
		location.href = "/goguma/profile/memberdata.do";
	});
	$(".sub1").children().eq(2).click(()=>{
		location.href = "/goguma/profile/purchaseReviewList.do";
	});
	$(".sub1").children().eq(3).click(()=>{
		location.href = "/goguma/profile/salesReviewList.do";
	});
	$(".sub1").children().eq(4).click(()=>{
		location.href = "/goguma/profile/secession.do";
	});
	
	
	$(".sub2").children().eq(0).click(()=>{
		location.href = "/goguma/profile/mycommunitylist.do";
	});
	$(".sub2").children().eq(1).click(()=>{
		location.href = "/goguma//profile/myproductlist.do";
	});
	$(".sub2").children().eq(2).click(()=>{
		location.href = "/goguma/profile/myquestionlist.do";
	});
	
	
	$(".sub3").children().eq(0).click(()=>{
		location.href = "/goguma/profile/purchaserecord.do";
	});
	$(".sub3").children().eq(1).click(()=>{
		location.href = "/goguma/profile/salesrecord.do";
	});

</script>

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	