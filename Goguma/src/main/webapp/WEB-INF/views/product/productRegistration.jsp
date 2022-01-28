<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>ProductRegistration</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<script>
  		(function(){
  			if(${empty id}){
  				alert("please login");
  				location.href="/goguma/user/login.do";
  			}
  		})();
        
</script>
<style>
#main-hr {
	margin-left: 50px;
}

.product-name {
	margin-left: 50px;
	margin-top: 15px;
	padding: 6px 10px;
	width: 1020px;
}

.product-price {
	margin-left: 50px;
	margin-top: 10px;
	padding: 6px 10px;
	width: 300px;
}

.container {
	margin-top: 15px;
	margin-left: 40px;
}

select {
	margin-right: 20px;
	border: 2px solid;
	border-radius: 5px;
	border-color: gray;
}

#product-img {
	margin-left: 50px;
	margin-top: 20px;
	width: 400px;
	height: 300px;
}

.box1 {
	overflow: hidden;
}

#img-box {
	float: left;
}

#text-box {
	margin-top: 20px;
	float: left;
}

.product-text {
	margin-left: 20px;
	width: 600px;
	height: 300px;
}

#img-box2 {
	background-color: #ffffff;
	opacity: 0.3;
	height: 60px;
	width: 400px;
	position: absolute;
	margin-left: 50px;
	margin-top: 260px;
}

.slider {
	width: 400px;
	margin-top: 22px;
	margin-bottom: 0px;
	margin-left: 50px;
	height: 300px;
	padding:0px;
}
.slider {
	border: 1px solid black;
}
.write{
	transform:translate(700px, -10px);
}
.fileList{
	transform:translate(90px, 20px);
}
.slick-next.slick-arrow{
	color: black;
}
.slick-prev {
  position: absolute;
  z-index: 99;
  top:300px;
  left: -20px;
   color: black;
}
.slick-next {
  position: absolute;
  z-index: 99;
  top:300px;
  right: -5px;
}
.slick-arrow{
	color:black;
}
</style>
</head>
<body>
	<!-- main.jsp -->
	<main class="main">

		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section>
			<div class="title">
				<h2>상품등록</h2>
			</div>
			<form method="POST" action="/goguma/product/productRegistrationok.do"
				enctype="multipart/form-data">
				<hr id="main-hr" width="1100px">
				<input type="text" class="text product-name" placeholder="상품명" name="productName">
				<input type=number class="text product-price" placeholder="희망가격" name ="price">
				<div class="dropdown">
					<div class="container">
					
						<select id="trade" name="type">
							<option value="">거래유형</option>
							<option value="n">일반거래</option>
							<option value="y">경매</option>
						</select> 
						
						<select id="category" name = "category">
							<option value="">카테고리</option>
							<option value="1">디지털기기</option>
							<option value="2">생활가전</option>
							<option value="3">가구/인테리어</option>
							<option value="4">유아동</option>
							<option value="5">생활/가공식품</option>
							<option value="6">유아도서</option>
							<option value="7">스포츠/레저</option>
							<option value="8">여성잡화</option>
							<option value="9">여성의류</option>
							<option value="10">남성패션/잡화</option>
							<option value="11">게임/취미</option>
							<option value="12">뷰티/미용</option>
							<option value="13">반려동물용품</option>
							<option value="14">도서/티켓/음반</option>
							<option value="15">식물</option>
							<option value="16">기타 중고물품</option>
						</select> 
						
						<span style="color: black; background-color: #7777; text-align: center; margin-right: 10px;">
							거래 지역 </span> 
							
							<select id="sido" name="sido">
							<option value="서울" selected="selected">서울</option>
							<option value="부산">부산</option>
							<option value="대구">대구</option>
							<option value="대전">대전</option>
						</select> <select id="sgg" name="sgg">
							<option value="송파구" selected="selected">송파구</option>
							<option value="강서구">강서구</option>
							<option value="강북구">강북구</option>
							<option value="서대문구">서대문구</option>
							<option value="광진구">광진구</option>
							<option value="마포구">마포구</option>
							<option value="동작구">동작구</option>
							<option value="종로구">종로구</option>
						</select> <select id="emd" name="emd">
							<option value="1" selected="selected">풍납동</option>
							<option value="2">석촌동</option>
							<option value="3">성내동</option>
							<option value="4">삼전동</option>
							<option value="5">화곡동</option>
							<option value="6">오쇠동</option>
							<option value="7">등촌동</option>
							<option value="8">마곡동</option>
							<option value="9">우장산동</option>
							<option value="10">개화동</option>
							<option value="11">방화동</option>
						</select>
					</div>
				</div>


				<div id="img-box">
					<!--  초기 업로드시 해당 객체 제거 -->
					<div class="slider">
					
					</div>
				</div>


				<div id="text-box">
					<textarea class="text product-text" placeholder="상세내용을 입력해주세요" name = "content"></textarea>
				</div>		
<!--  multiple  -->	
				
				<div class = "button_file">
				<input type="file" id="f_1" name="file1"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" >
				<input type="file" id="f_2" name="file2"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				<input type="file" id="f_3" name="file3"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				<input type="file" id="f_4" name="file4"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				<input type="file" id="f_5" name="file5"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
			                           
				<input type="file" id="f_6" name="file6"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				<input type="file" id="f_7" name="file7"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				<input type="file" id="f_8" name="file8"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				<input type="file" id="f_9" name="file9"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				<input type="file" id="f_10" name="file10"  onchange="setDetailImage(event);" class="fileList btn btn-primary" value="상품이미지첨부" style="display : none">
				</div>
				
				<input class="write" type="submit" class="btn btn-primary" id="commit-btn" value="작성완료">

			</form>
		</section>

	</main>

	<%@include file="/WEB-INF/views/inc/footer.jsp"%>
<script>

	let seq = 1;
	let id = "f_"+seq;
	
	$( document ).ready( function() {
	    $( '.slider' ).slick( {
	      autoplay: true,
	      autoplaySpeed: 1000,
	    } );
	  } );
	
	
	function setDetailImage(event){
		for(var image of event.target.files){
			var reader = new FileReader();
			reader.onload = function(event){
					
					var img = document.createElement("img");
					var div = document.createElement("div");
					img.setAttribute("src", event.target.result);
					img.setAttribute("class", "col-lg-6");
					img.setAttribute("object-fit", "scale-down");
					img.setAttribute("width", "100%");
					img.setAttribute("height", "100%");
					
					div.setAttribute("width", "100%");
					div.setAttribute("height", "500px");
					div.setAttribute("padding-left", "30px");
					
					div.appendChild(img);
					$('.slider').slick("slickAdd", div);
					$(".slider").slick('unslick');
					$('.slider').slick('refresh');
					change();
			};
			reader.readAsDataURL(image);
		}
	}
	
	let change  = function(){
		if(id>9){
			alert("사진은 10개만 업로드 가능합니다.");
		}else{
			document.getElementById(id).style.display = "none";
			seq++;
			id = "f_"+seq;
			document.getElementById(id).style.display = "";
		}
	}
	
</script>

</body>
</html>