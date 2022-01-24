<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Code</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<!-- window.top.location.href 아이프레임에서 부모창 변경시 -->
<style>
	.btn.important{
		border: 1px solid #9B59B6;
	    background: #9B59B6;
	    color: #fff;
	}
	.grid-container{
		width:970px;
		height:500px;
		margin-top:5%;
		display:grid;
		grid-template-columns:1fr 1fr 1fr 1fr 1fr 1fr;
		grid-template-rows: 1fr 1fr 1fr 1fr 1fr ;
	}
/* 	.grid-container div{border :1px solid black;} */
	.content h2{
		margin-left:300px;
	}
	.grid-container div:nth-child(1) {
		text-align: center; 
		grid-column-start :1;
		grid-column-end:3;
	}
	.grid-container div:nth-child(2) {
		text-align: center; 
		grid-column-start :3;
		grid-column-end:4;
	}
	.grid-container div:nth-child(2) div:nth-child(1){
		margin-top : 20px;
	}
	.grid-container div:nth-child(2) div:nth-child(2){
		margin-top : 20px;
	}
	.grid-container div:nth-child(3) {
		text-align: center; 
		grid-column-start :4;
		grid-column-end:7;
	}
	.grid-container div:nth-child(3) div:nth-child(1){
		margin-top : 20px;
	}
	.grid-container div:nth-child(3) div:nth-child(2){
		margin-top : 20px;
		padding-left:10px;
	}
	.grid-container div:nth-child(4) {
		padding-top:20px;
		text-align: center; 
		grid-column-start :1;
		grid-column-end:2;
	}
	.grid-container div:nth-child(5) {
		padding-top:20px;
		text-align: center; 
		grid-column-start :2;
		grid-column-end:3;
	}
	.grid-container div:nth-child(6) {
		grid-column-start :3;
		grid-column-end:7;
	}
	.grid-container div:nth-child(7) {
		line-height: center;
		text-align: center; 
		grid-column-start :1;
		grid-column-end:2;
	}
	.grid-container div:nth-child(8) {
		line-height: center;
		text-align: center; 
		grid-column-start :2;
		grid-column-end:3;
	}
	.grid-container div:nth-child(9) {
		grid-column-start :3;
		grid-column-end:7;
	}
	.grid-container div:nth-child(10) {
		text-align: center; 
		grid-column-start :1;
		grid-column-end:7;
	}
	.fa.fa-star.checked {
	  color: orange;
	}
	.fa.fa-star{
		color:#7777;
	}
</style>
</head>
<body>
	<!-- main.jsp -->
	<div class="container"
		style="width: 1200px; position: absolute; top: 0px; left: 18vw;">
		<main class="main">
			<%@include file="/WEB-INF/views/inc/header.jsp"%>
			<%@ include file="/WEB-INF/views/inc/user/mynav.jsp"%>
			<section class="content">
				<h2>${userProfileData.id}   님의 프로필 입니다.</h2>
				<div class="grid-container">
				
					<div><img src="/goguma/files/profile/${userProfileData.path}" style="width: 130px"></div>
					<div>
						<div style="background-color:#EEECEC">NickName</div>
						<div style="background-color:#EEECEC">info </div>
					</div>
					<div>
						<div> ${userProfileData.nickName}</div>
						<div> ${userProfileData.intro}</div>
					</div>
					<div>
						<input type="button" value="구매 후기" class="btn important"
						onclick="location.href='/goguma/profile/purchaseReviewList.do'">
					</div>
					<div>
						<input type="button" value="판매 후기" class="btn important" 
						onclick="location.href='/goguma/profile/salesReviewList.do'">
					</div>
					<div></div>
					<div class="salesAvg">
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<!-- jquery 이횽해서 자식 위치 확인후  색을 지정  -->
						<c:if test="${score.salesCnt<=3}">
						<div>초보 고구마</div>
						</c:if>
						<c:if test="${score.salesCnt>3}">
						<div>중급 고구마</div>
						</c:if>
						<c:if test="${score.salesCnt>5}">
						<div>고급 고구마</div>
						</c:if>
					</div>
					<div class="purchaseAvg">
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<span class="fa fa-star"></span>
						<c:if test="${score.purchaseCnt<=3}">
						<div>초보 고구마</div>
						</c:if>
						<c:if test="${score.purchaseCnt>3}">
						<div>중급 고구마</div>
						</c:if>
						<c:if test="${score.purchaseCnt>5}">
						<div>고급 고구마</div>
						</c:if>
					</div>
					<div></div>
					<div>
						<input type="button" value="정보 수정" class="btn important" 
						onclick="location.href='/goguma/profile/profileedit.do'">
					</div>
					
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div> 
					
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div> 
					
					<div></div>
					<div></div>
					<div></div>
					<div></div>
					<div></div>
				
				</div>
			</section>
			<%-- <%@include file="/WEB-INF/views/inc/footer.jsp"%> --%>
		</main>
	</div>
	<script>
		if(${score.salesCnt}==0){
			$('.salesAvg span').addClass('checked');			
		}else{
			for(let i=1; i<=${score.salesAvg};i++){
				$('.salesAvg span:nth-child('+i+')').addClass('checked');
			}
		}
		if(${score.purchaseCnt}==0){
			$('.purchaseAvg span').addClass('checked');			
		}else{
			for(let i=1; i<=${score.purchaseAvg};i++){
				$('.purchaseAvg span:nth-child('+i+')').addClass('checked');
			}
		}
	</script>
</body>
</html>







