<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductDetail</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
#main-box{overflow:hidden;}
#main-right{
	
}
.main-product-name{
	font-size: 34px;
}
.main-product-price{
	font-size: 50px;
	float: left;
	width: 300px;
}
.product-name{
	font-size: 20px;
	margin-left:20px;
}
.product-price{
	font-size: 16px;
}
.main-img-box>img{
  width: 500px;
  height: 500px;
  object-fit: cover;
}
.main-img-box{
  width: 530px;
  height: 500px;
  float: left;
}
.red-btn{
	font-size: 15px;
	background-color: red;
	border-color: red;
	color: white;
	padding: 1px 5px;
	margin: 30px 0px 0px 0px;
}
#price-tab{
	overflow:hidden;
}
.product-address{
	font-size: 22px;
	margin: 15px auto;
}
.main-text{
	font-size: 16px;
	padding: 0px 50px 0px 0px;
	height:295px;
	text-overflow: ellipsis;
}
.view-more{
	font-size: 12px;
	background-color: gray;
	width: 500px;
	border-radius: 13px;
	color: white;
}
.mid-btn1{
	font-size: 30px;
	margin: 15px 5px 0px 0px;
	padding: 10px 3px;
	background-color: #9B59B6; 
	border-color: #9B59B6;
	border-radius: 10px;
}
.mid-btn2{
	font-size: 30px;
	margin: 15px 5px;
	padding: 10px 3px;
	background-color: orange;
	border-color:orange;
	border-radius: 10px;
}
.mid-btn3{
	font-size: 30px;
	margin: 15px 310px 15px 5px;
	padding: 10px 3px;
	background-color: gray;
	border-color: gray;
	border-radius: 10px;
}
.mid-btn4{
	font-size: 18px;
	margin: 5px 5px;
	padding: 1px 50px;
	background-color: orange;
	border-color: orange;
	border-radius: 18px;
}
.mid-btn5{
	font-size: 18px;
	margin: 5px 5px;
	padding: 1px 34px;
	background-color: orange;
	border-color: orange;
	border-radius: 18px;
}
#bottom-box{
	overflow: hidden;
}
.heart-img{
	width: 50px;
  	height: 50px;
  	object-fit: cover;
  	margin: 0px 0px 0px 40px;

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
    width: 200px;
    height: 200px;
    object-fit: cover;
    margin-left:20px;
}


</style>
</head>
<body>
<!-- main.jsp -->
	<main class="main">
	
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section>
		<div id="main-box">
			<div class="main-img-box"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_01_list.jpg" alt=""></div>
			<div id="main-right">
				<div class="main-product-name">코코 베이직핏 미니멀 셔츠</div>
				<div id="price-tab">
				<div class="main-product-price">17,800원</div>
				<button type="button" class="red-btn">
					경매마감 2일전
				</button>
				<input type="image" src="/goguma/asset/img/heart_black.png" class="heart-img">
				</div>
				<div class="product-address">서울 송파구 천호동 / 여성의류</div>
				<p class="main-text">
				여행가서 딱 한번입었습니다. <br>하자없이 깨끗해요. <br>산뜻한 바이올렛 컬러입니다. <br>봄, 가을에 입기 좋아요.<br> 
				사이즈는 44-66 추천합니당 <br>기장감 넉넉하게 나와서 바지에 넣어입었을때 <br>핏감이 예쁘게 잘떨어지구요 <br>단품으로도 루즈한 느낌살려서 입기좋아요.
				<br><br><br>*사이즈(단면, cm) - 어깨44 가슴57 암홀24 
				<br>소매단면20 소매길이53 총장71 <br>직거래 세곡동, 천호동 택배별도
				</p>
				<button type="button" class="view-more">
					더보기
				</button>
			</div>
			<div id="bottom-box">
				<button type="button" class="mid-btn1">
						삭제하기
				</button>
				<button type="button" class="mid-btn2">
						수정하기
				</button>
				<button type="button" class="mid-btn3">
						판매완료
				</button>
				<input type="button" class="mid-btn4" value="댓글">
				<input type="button" class="mid-btn5" value="입찰내역">

			</div>
			
		</div>
		<hr width="1100px">
 		<h2>비슷한 상품</h2>
 		<br>
 		<ul class="row">
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_01_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_02_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_03_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_04_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800</div>
        </li>
        <li class="cell">
            <div class="img-box" onclick = "location.href='/goguma/product/productDetail.do'"><img src="http://bnx.oa.gg/img/bnx_16fw_visual_05_list.jpg" alt=""></div>
            <div class="product-name" onclick = "location.href='/goguma/product/productDetail.do'">상품명</a>
            <div class="product-price">19800</div>
        </li>
        </ul>
		</section>
		
	</main>
	
	<script>
  
        
    </script>
</body>
</html>