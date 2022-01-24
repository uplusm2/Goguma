<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductRegistration</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp" %>
<style>
#main-hr{
	margin-left: 50px;
}
.product-name{
	margin-left: 50px;
	margin-top: 15px;
	padding: 6px 10px;
	width: 1020px;
}

.product-price{
	margin-left: 50px;
	margin-top: 10px;
	padding: 6px 10px;
	width: 300px;
}
.container{
	margin-top: 15px;
	margin-left: 40px;
}
select{
	margin-right: 20px;
	border: 2px solid;
	border-radius: 5px;
	border-color: gray;
}
#product-img{
	margin-left: 50px;
	margin-top: 20px;
	width: 400px;
	height: 300px;
}
.box1{
	overflow: hidden;
}
#img-box{
	float: left;
}
#text-box{

	margin-top: 20px;
	float: left;
}
.product-text{
	margin-left: 20px;
	width: 600px;
	height: 300px;
}
#img-box2{
	background-color: #ffffff;
        opacity: 0.3;
	height: 60px; 
	width:400px; 
	position: absolute;
	margin-left: 50px;
	margin-top: 260px;
}

#next-btn{
	margin-left: 80px;
}

#prev-btn{
	margin-left: 50px;
}

#registration-btn{
	margin-left: 80px;
}
#commit-btn{
	margin-left: 545px;
}

</style>
</head>
<body>
<!-- main.jsp -->
	<main class="main">
	
		<%@include file="/WEB-INF/views/inc/header.jsp" %>
		<section>
			<div class="title">
				<h2>상품등록</h2>
			</div>
			<hr id="main-hr" width="1100px">
			<input type="text" class="text product-name" placeholder="상품명">
			<input type="text" class="text product-price" placeholder="희망가격">
			<div class="dropdown">
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
	    	</div>
	    	<div class="box1">
		    	<div id="img-box">

			    	<img src="http://placehold.it/400x300" id="product-img">
			 

		    		
		    	</div>
		    	<div id="text-box">
		    		<textarea class="text product-text" placeholder="상세내용을 입력해주세요"></textarea>
		    	</div>
		    	
	    	</div>
	    	<input type="button" class="btn btn-primary" id="prev-btn" value="Prev">
	    	<input type="button" class="btn btn-primary" id="registration-btn" value="상품이미지첨부">
			<input type="button" class="btn btn-primary" id="next-btn" value="Next">
			<input type="button" class="btn btn-primary" id="commit-btn" value="작성완료">
	
		</section>
		
	</main>
	
	<script>
  
        
    </script>
</body>
</html>