<%@page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!-- inc/header.jsp -->
<header>
	<div class="innerHeader">
		<h1 class="logo">
			<img src="/goguma/asset/img/logo.png"><span>고구마장터</span>
		</h1>
		<form method="GET" action="">
			<input class="search" type="text" placeholder="찾고 싶은 상품을 검색해보세요!">
			<input class="searchImg" type="image" src="/goguma/asset/img/search.png" alt="">
		</form>
		<ul class="menuOption">
			<c:if test="${empty id}">
			<li>로그인</li>
			<li>회원가입</li>
			</c:if>
			<c:if test="${not empty id}">
			<li><img src="/goguma/asset/img/message.png"></li>
			<li>고구마님</li>
			<!-- <li>${dto.nickname}님</li> -->
			<li>로그아웃</li>
			</c:if>
		</ul>
		<ul class="menu">
			<li><img src="/goguma/asset/img/menu1.png">중고거래</li>
			<li><img src="/goguma/asset/img/menu2.png">커뮤니티</li>
			<li><img src="/goguma/asset/img/menu3.png">고객센터</li>
		</ul>
	</div>
</header>





