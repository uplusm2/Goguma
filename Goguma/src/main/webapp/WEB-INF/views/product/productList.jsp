<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductList</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

.dropdown{
	height: 50px;
}

div.container{
    overflow: hidden;
}
/* div.title{
	height: 50px;
} */

body,
ul,
li {
    list-style: none;
    padding: 0;
    margin: 0;
}
a {
    text-decoration: none;
    color: inherit;
}

/*라이브러리*/

.con {
    margin-left: auto;
    margin-right: auto;
}

.cell {
    float: left;
    box-sizing: border-box;
    margin-bottom: 20px;
}
.row::after {
    content: "";
    display: block;
    clear: both;
}
.img-box > img {
    display: block;
    width: 100%;
    height: 80%;
}
/*커스텀*/
html,
body {
    overflow-x: hidden;
}
.con {
    max-width: 1000px;
}
.logo-bar {
    text-align: center;
    margin-bottom: 20px;
    margin-top: 20px;
}

.bn-box {
    margin-bottom: 20px;
    margin-top: 20px;
}
@media ( max-width:700px ) {
    .top-bn-box-1 {
        overflow-x:hidden;
    }

    .top-bn-box-1 > .img-box {
        margin-left:-50%;
    }
}

.menu-box {
    margin-bottom: 20px;
    margin-top: 20px;
}
.menu-box > ul > li {
    width: calc(100% / 7);
    height: calc(100% / 7);
}
@media (max-width: 800px) {
    .menu-box {
        display: none;
    }
}

.menu-box > ul > li > a {
    display: block;
    text-align: center;
    font-weight: bold;
    position: relative;
}
.menu-box > ul > li:hover > a {
    color: red;
    text-decoration: underline;
}
.menu-box > ul > li > a::before,
.menu-box > ul > li > a::after {
    content: "";
    width: 1px;
    height: 13px;
    background-color: black;
    position: absolute;
    top: 50%;
    transform: translatey(-50%);
    left: 0;
}
.menu-box > ul > li > a::after {
    left: auto;
    right: 0;
}
.menu-box > ul > li:first-child > a::before,
.menu-box > ul > li:last-child > a::after {
    width: 2px;
}
.list > ul > li {
    width: calc(100% / 5);
    height: calc(100% / 5);
}

.list > ul > li {
    padding: 0 10px;
}
.list > ul {
    margin: 0 -10px;
}

.list > ul > li > .product-name {
    text-align: Center;
    font-weight: bold;
}
.list > ul > li:hover > .product-name {
    text-decoration: underline;
}
.list > ul > li > .product-price {
    text-align: center;
    font-weight: bold;
    font-size: 1.5rem;
}
.list > ul > li > .product-price::after {
    content: "원";
    font-size: 1rem;
    font-weight:normal;
}

#product-regi-btn{
	float: right;
}

</style>
</head>
<body>
<!-- main.jsp -->
	<main class="main">
	
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section>
			<div class="title">
				<h2>판매중인 상품</h2>
			</div>
			<nav class="dropdown" align="right">
				<div class="container">
					<select name="trade">
					    <option value="">거래유형</option>
					    <option value="일반거래">일반거래</option>
					    <option value="경매">갱매</option>
					</select>
					<select name="address">
					    <option value="">거래지역</option>
					    <option value="서울">서울</option>
					    <option value="경기">경기</option>
					</select>
					<select name="category">
					    <option value="">카테고리</option>
					    <option value="카테고리1">카테고리1</option>
					    <option value="카테고리2">카테고리2</option>
					</select>
				</div>
	    	</nav>
    		<div class="list con">
    <ul class="row">
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_01_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800원</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_02_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800원</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_03_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800원</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_04_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800원</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_05_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800원</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_06_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</div>
            <div class="product-price">19800원</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_07_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_08_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_09_list.jpg" alt=""></div>
           <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_10_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_11_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_12_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명 </div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_13_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명 </div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_14_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명 </div>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_15_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</div>
            <div class="product-price">19800</div>
        </li>
    </ul>
	    <div class="wrap_paging" align="center">
		<a href="#none" class="first">맨처음</a>
		<a href="#none" class="prev">이전</a>
		<a href="#none" class="on view">1</a>
		<a href="#none" class="view">2</a>
		<a href="#none" class="view">3</a>
		<a href="#none">4</a>
		<a href="#none">5</a>
		<a href="#none">6</a>
		<a href="#none">7</a>
		<a href="#none">8</a>
		<a href="#none" class="next">다음</a>
		<a href="#none" class="last">마지막</a>
		</div>
		<input type="button" class="btn btn-primary" id="product-regi-btn" value="상품등록"
		onclick="location.href='/goguma/product/productRegistration.do'">
		</section>
		
	</main>
	
	<script>
        
        
    </script>
</body>
</html>