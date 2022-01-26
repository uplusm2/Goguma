<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- inc/header.jsp -->
<header>
	<div class="inner-header">
		<h1 class="logo" onclick="location.href='/goguma/main.do';">
			<img src="/goguma/asset/img/logo_goguma.png" class="img">
			<img src="/goguma/asset/img/logo_txt.png" class="txt">
		</h1>
		<form method="GET" action="">
			<input class="search" type="text" placeholder="찾고 싶은 상품을 검색해보세요!">
			<input class="search-img" type="image" src="/goguma/asset/img/search.png" alt="">
			<ul class="popular-keyword">
	            <p>TOP 10</p>
	            <c:if test="${searchList.size() != 0}">
				<li><span>1</span> ${searchList[1].keyword}</li>
				<li><span>2</span> ${searchList[2].keyword}</li>
				<li><span>3</span> ${searchList[3].keyword}</li>
				<li><span>4</span> ${searchList[4].keyword}</li>
				<li><span>5</span> ${searchList[5].keyword}</li>
				<li><span>6</span> ${searchList[6].keyword}</li>
				<li><span>7</span> ${searchList[7].keyword}</li>
				<li><span>8</span> ${searchList[8].keyword}</li>
				<li><span>9</span> ${searchList[9].keyword}</li>
				<li><span>10</span> ${searchList[10].keyword}</li>
				</c:if>
         	</ul>
		</form>
		<ul class="menu-option">
			<c:if test="${empty id}">
			<li><a href="/goguma/user/login.do">로그인</a></li>
			<li><a href="/goguma/user/userregister.do">회원가입</a></li>
			</c:if>
			
			<c:if test="${not empty id}">
			<li onclick="location.href='/goguma/message/inBox.do';" class="message-img"><span class="glyphicon glyphicon-envelope"></span></li>
			<c:if test="${newMessage > 0}">
			<li class="message-count"><span>${newMessage}</span></li>
			</c:if>
			<c:if test="${not empty nickname && lv==1}">
			<li onclick="location.href='/goguma/profile/mypage.do';">${nickname}님</li>
			</c:if>
			<c:if test="${empty nickname && lv==1}">
			<li onclick="location.href='/goguma/profile/mypage.do';">${id}님</li>
			</c:if>
			<c:if test="${lv==2}">
			<li onclick="location.href='/goguma/admin/dashboard.do';">${id}님</li>
			</c:if>
			<li><a href="/goguma/user/logoutok.do">로그아웃</a></li>
			</c:if>
		</ul>
		<ul class="menu">
			<li onclick="location.href='/goguma/product/productList.do';"><p><img src="/goguma/asset/img/menu1.png">중고거래</p></li>
			<li onclick="location.href='/goguma/community/communityList.do';"><p><img src="/goguma/asset/img/menu2.png">커뮤니티</p></li>
			<li onclick="location.href='/goguma/center/faq.do?search=1&page=1';"><p><img src="/goguma/asset/img/menu3.png">고객센터</p></li>
		</ul>
	</div>
</header>

<script>
	$(function() {
		$(".popular-keyword").hide();
		$(".search").click(function() {
			$(".popular-keyword").slideToggle(200);
		});
	});
</script>




