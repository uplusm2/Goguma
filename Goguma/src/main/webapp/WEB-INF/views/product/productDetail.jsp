<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.util.Calendar" %>


      
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
	font-size: 19px;
	 text-align: right;
}
.product-price{
	font-size: 17px;
	 text-align: right;
}
.main-img-box>img{
  width: 500px;
  height: 500px;
  object-fit: cover;
  border-radius: 20px;
  
}
.main-img-box{
  width: 530px;
  height: 500px;
  float: left;
  border-radius: 20px;
}
.red-btn{
	font-size: 15px;
	background-color: red;
	border-color: red;
	color: white;
	padding: 1px 5px;
	margin: 30px 0px 0px 0px;
	border-radius: 5px;
}

.gray-btn{
	font-size: 15px;
	background-color: gray;
	border-color: gray;
	color: black;
	padding: 1px 5px;
	margin: 30px 0px 0px 0px;
	border-radius: 5px;
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
	padding: 10px 6px;
	background-color: #9B59B6; 
	border-color: #9B59B6;
	border-radius: 10px;
	color: white;
}
.mid-btn2{
	font-size: 30px;
	margin: 15px 310px 15px 5px;
	padding: 10px 6px;
	background-color: orange;
	border-color:orange;
	border-radius: 10px;
	color: white;
}
.mid-btn3{
	font-size: 30px;
	margin: 15px 5px;
	padding: 10px 6px;
	background-color: gray;
	border-color: gray;
	border-radius: 10px;
	color: white;
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
    width: 150px;
    height: 150px;
    object-fit: cover;
    margin-left:20px;
}

.main-product-price::after {
    content: "원";
    font-size: 3rem;
    font-weight:normal;
}

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
.img-box  img {
    display: block;
    width: 180px;
    height: 180px;
    object-fit: cover;
    border-radius: 8px;
}
/*커스텀*/
html,
body {
    overflow-x: hidden;
}
.con {
    max-width: 1000px;
}


.list > ul > li {
    padding: 0 10px;
}
.list > ul {
    margin: 0 -10px;
}

.list > ul > li .product-name {
    text-align: Center;
    font-weight: bold;
}
.list > ul > li:hover .product-name {
    text-decoration: underline;
}
.list > ul > li .product-price {
    text-align: center;
    font-weight: bold;
    font-size: 1.5rem;
}
.list > ul > li .product-price::after {
    content: "원";
    font-size: 1.3rem;
    font-weight:normal;
}

.product-h2{
	font-size: 2rem;
	font-weight: bold;
	margin-left: 30px;
}

</style>
</head>
<body>
<!-- main.jsp -->
	<main class="main">
	
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		
		<section>
		<div id="main-box">
			<div class="main-img-box"><img src="/goguma/files/product/${dto.main_img}" 
					onerror="this.src='/goguma/files/product/defaultimg.jpg';" alt=""></div>
			<div id="main-right">
				<div class="main-product-name">${dto.name}</div>
				<div id="price-tab">
				<div class="main-product-price">${dto.price}</div>
				 
				<c:if test="${dto.is_completion == 'y'}">
					<button type="button" class="gray-btn">
						판매완료
					</button>
				</c:if>
				<c:if test="${dto.is_completion == 'n'}">
					<c:choose>
					<c:when test="${dto.is_auction == 'y'}">
						   <button type="button" class="red-btn">
									경매중
						</button>
					</c:when>
					<c:when test="${dto.is_auction == 'n'}">
						        <button type="button" class="red-btn">
									판매중
								</button>
				 	</c:when>
					</c:choose>
				</c:if>
			
				
				<input type="image" src="/goguma/asset/img/heart_black.png" class="heart-img">
				
				</div>
				<div class="product-address">${adto.sido} ${adto.sgg} ${adto.emd} / ${tdto.name}</div>

				<div style="overflow:auto; width:500px; height:300px; padding-top: 15px">
				
				<p class="main-text">
				${dto.content}</p>
				</div>
				
				
				
				<button type="button" class="view-more">
					더보기
				</button>
			</div>
			<div id="bottom-box">
			
				<c:if test="${dto.is_completion eq 'y'}">
					<button type="button" class="mid-btn1" style="visibility: hidden;">
						연락하기
					</button>
					<button type="button" class="mid-btn3" style="visibility: hidden;">
						판매자정보
					</button>
					<button type="button" class="mid-btn2" style="visibility: hidden;">
						입찰하기
					</button>
				</c:if>
				<c:if test="${dto.is_completion eq 'n'}">
					
					
					<c:if test="${dto.is_auction eq 'y'}">
						<input type="button" class="mid-btn1" value="연락하기">
						<button type="button" class="mid-btn3" >
							판매자정보
						</button>
						<button type="button" class="mid-btn2" onclick="location.href='/goguma/product/bidadd.do?seq=${dto.seq}';">
							입찰하기
						</button>
					</c:if>
					<c:if test="${dto.is_auction eq 'n'}">
						<input type="button" class="mid-btn1" value="연락하기">

						<button type="button" class="mid-btn3" >
							판매자정보
						</button>
						<button type="button" class="mid-btn2" style="visibility: hidden;">
							입찰하기
						</button>
					</c:if>
				</c:if>
			
			
				
				<input type="button" class="mid-btn4" value="댓글" style="visibility: hidden;">
				<input type="button" class="mid-btn5 btn primary-btn" value="입찰내역"  onclick="location.href='/goguma/product/bidList.do?seq=${dto.seq}';">

			</div>
			
		</div>
		<hr width="1100px">
 		<div class ="product-h2">비슷한 상품</div>
 		<br>
 		<div class="list con" style="margin-left: 30px;">
	    	<ul class="row">
		
				<c:forEach items="${list}" var="dto"> 
			
				<li class="cell">
					<div class="img-box"><a href="/goguma/product/productDetail.do?seq=${dto.seq}"><img src="/goguma/files/product/${dto.main_img}" 
					onerror="this.src='/goguma/files/product/defaultimg.jpg';" alt=""></a></div>
            		<div class="product-name"><a href="/goguma/product/productDetail.do?seq=${dto.seq}">${dto.name}</a></div>
            		<div class="product-price">${dto.price}</div>
        		</li>
				</c:forEach>
			</ul>
			</div>
				<c:if test="${list.size() == 0}">
					<h2>게시물이 없습니다.</h2>
				</c:if>
 		
		</section>
		
	</main>
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script>
  
        
    </script>
</body>
</html>