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

select{
	margin-right: 10px;
	border: 2px solid;
	border-radius: 5px;
	border-color: gray;
}

div.container{
    overflow: hidden;
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
					    <c:forEach items="${addresslist}" var="add">
					    <option value="${add.sido} ${add.sgg} ${add.emd}">${add.sido} ${add.sgg} ${add.emd}</option>
					    </c:forEach>
					</select>
					<select name="category">
					    <option value="">카테고리</option>
					    <c:forEach items="${categorylist}" var="cate">
					    <option value="${cate.name}">${cate.name}</option>
					    </c:forEach>
					   
					</select>
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
	<%@include file="/WEB-INF/views/inc/footer.jsp" %>
	<script>
        
        
    </script>
</body>
</html>