<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductList</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>

.pagebar {
	transform: translateY(20px); 
	width: 510px;
	text-align: center;
	margin: 0 auto;
}
.pagebar .pagination a{
	border: 0px;
	margin: 0px 3px;
	color: #181818;
}
.pagebar .pagination a:hover{
	background: #fff;
	color: #F4BF35;
}
.pagebar .pagination .active a{
	background: #fff;
	font-weight: 700;
	color: #9B59B6;
}
.pagebar .pagination span {
	transform: translateY(2px);
	color: #757575;
}
.pagebar .pagination .next a:hover span,
.pagebar .pagination .previous a:hover span {
	color: #F4BF35;
}


.dropdown{
	height: 50px;
	
}

select{
	margin-right: 10px;
	border: 1px solid;
	border-radius: 10px;
	border-color: DB37D6;
}

div.container{
    overflow: hidden;
    padding-right: 100px;
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
    width: 175px;
    height: 180px;
    object-fit: cover;
    border-radius: 15px;
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
    width: calc(100% / 5);
    height: calc(100% / 5);
}

.list > ul > li {
    padding: 0 10px;
}
.list > ul {
    margin: 0 -10px;
}

.list > ul > li .product-name {
    text-align: right;
    font-weight: bold;
    padding-right: 10px;
}
.list > ul > li:hover .product-name {
    text-decoration: underline;
}
.list > ul > li .product-price {
    text-align: right;
    font-weight: bold;
    font-size: 1.8rem;
    padding-right: 10px;
}
.list > ul > li .product-price::after {
    content: "원";
    font-size: 1.6rem;
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
			<div class="title" onclick="location.href='/goguma/product/productList.do';">
				<h2 style="margin-left: 35px; ">판매중인 상품</h2>
			</div>
			
			<nav class="dropdown" align="right">
				<div class="container">
				<form method="GET" action="/goguma/product/productList.do">
					<select name="is_auction">
					    <option value="">거래유형</option>
					    <option value="n">일반거래</option>
					    <option value="y">경매</option>
					</select>
					<select name="address_seq">
					    <option value="">거래지역</option>
					    <c:forEach items="${addresslist}" var="add">
					    <option value="${add.address_seq}">${add.sido} ${add.sgg} ${add.emd}</option>
					    </c:forEach>
					</select>
					<select name="product_type_seq">
					    <option value="">카테고리</option>
					    <c:forEach items="${categorylist}" var="cate">
					    <option value="${cate.product_type_seq}">${cate.name}</option>
					    </c:forEach>
					   
					</select>
					 <input type="submit" value="검색" class="btn">
				</form>
					
				</div>
	    	</nav>
	    	<div class="list con">
	    	<ul class="row">
		
				<c:forEach items="${list}" var="dto">
					
					<li class="cell">
						<div class="img-box"><a href="/goguma/product/Ismyproduct.do?seq=${dto.seq}"><img src="/goguma/files/product/${dto.main_img}" 
						onerror="this.src='/goguma/files/product/defaultimg.jpg';" alt=""></a></div>
		           		<div class="product-name"><a href="/goguma/product/Ismyproduct.do?seq=${dto.seq}">${dto.name}</a></div>
		           		<div class="product-price">${dto.price}</div>
		        	</li>
				</c:forEach>
			</ul>
			</div>
				<c:if test="${list.size() == 0}">
					<h2>게시물이 없습니다.</h2>
				</c:if>
			
					
    	
		<c:if test="${not empty id}">
			<div class="button">
				<button type="button" class="btn btn-primary" id="product-regi-btn"
					onclick="location.href='/goguma/product/productRegistration.do';">
					상품등록
				</button>
			</div>
		</c:if>
		<c:if test="${totalPage > 1}">
			<div class="pagebar">${pagebar}</div>
		</c:if>
		
		

			
	</section>
	</main>
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script>
		<c:if test="${map.searchmode == 'y'}">
		$('select[name=column]').val('${map.column}');
		$('input[name=word]').val('${map.word}');
		</c:if>
        
    </script>
</body>
</html>