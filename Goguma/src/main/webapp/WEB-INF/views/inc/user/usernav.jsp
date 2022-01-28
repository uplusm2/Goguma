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
					<li><a href="#">· 구매 후기</a></li>
					<li><a href="#">· 판매 후기</a></li>
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
		location.href = "/goguma/profile/user.do?${userId}";
	});
	$(".sub1").children().eq(1).click(()=>{
		location.href = '/goguma/profile/purchaseReviewListUser.do?${userId}';
	});
	$(".sub1").children().eq(2).click(()=>{
		location.href = '/goguma/profile/salesReviewListUser.do?${userId}';
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

	
	
	
	
	
	
	
	
	
	
	
	
	
	
	
	