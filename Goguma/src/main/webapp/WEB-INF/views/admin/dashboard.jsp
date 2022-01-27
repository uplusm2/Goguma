<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마장터 대시보드</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<script src="/goguma/asset/js/highcharts.js"></script>
<script src="/goguma/asset/js/series-label.js"></script>
<link rel="stylesheet"
	href="https://use.fontawesome.com/releases/v5.6.1/css/all.css"
	integrity="sha384-gfdkjb5BdAXd+lj+gudLWI+BXq4IuLW5IT+brZEZsLFm++aCMlF1V92rMkPaX4PP"
	crossorigin="anonymous">
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">
<style>
</style>
</head>
<body>
	<!-- dashboard.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
			<div class="container">

				<!-- 왼쪽 네비게이션바 -->
				<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>

				<!-- 본문 -->
				<div class="article dashboard">

					<!-- 제목 -->
					<div class="subtitle">
						<h2>대시보드</h2>
					</div>

					<!-- 박스들 -->
					<div class="card">

						<div class="item" id="moneyBtn">
							<div class="item-icon">
								<i class="fas fa-money-bill-wave"></i>
							</div>
							<div class="item-text">
								<span class="item-num">5,495,000</span><br>
								<span class="item-info">오늘 거래금액</span>
							</div>
						</div>

						<div class="item" id="productBtn">
							<div class="item-icon">
								<i class="fas fa-shopping-cart"></i></i>
							</div>
							<div class="item-text">
								<span class="item-num">126</span><br>
								<span class="item-info">업데이트된 상품</span>
							</div>
						</div>

						<div class="item" id="visitBtn">
							<div class="item-icon">
								<i class="fas fa-user"></i>
							</div>
							<div class="item-text">
								<span class="item-num">1,270</span><br>
								<span class="item-info">오늘 방문자수</span>
							</div>
						</div>

					</div>

					<!--<input type="button" id="visitBtn" style="width: 100px;">-->
					<div class="chart-container">
						<div id="visitChart"></div>
					</div>

					<div class="chart-container">
						<div id="daliyVisitChart"></div>
					</div>

				</div>
			</div>
		</section>

		<%-- <%@include file="/WEB-INF/views/inc/footer.jsp" %> --%>

	</main>

	<script>
	
	$('#btn1').click(function() {
		Highcharts.chart('visitChart', {

		    title: {
		        text: '월별 홈페이지 방문자 수'
		    },

		    yAxis: {
		        title: {
		            text: '방문자 수(명)'
		        }
		    },

		    xAxis: {
		        accessibility: {
		            rangeDescription: 'Range: 202102 to 202201'
		        }
		    },

		    legend: {
		        layout: 'vertical',
		        align: 'right',
		        verticalAlign: 'middle'
		    },

		    plotOptions: {
		        series: {
		            label: {
		                connectorAllowed: false
		            },
		            pointStart: 202102
		        }
		    },

		    series: [{
		        name: '최근 12개월 방문자 수',
		        data: [ <c:forEach items="${list}" var="dto">${dto.count}, </c:forEach> ]
		    }, {
		        name: '연간 평균 방문자 수',
		        data: [ <c:forEach items="${avglist}" var="dto">${dto.count}, </c:forEach>]
		    }],

		    responsive: {
		        rules: [{
		            condition: {
		                maxWidth: 500
		            },
		            chartOptions: {
		                legend: {
		                    layout: 'horizontal',
		                    align: 'center',
		                    verticalAlign: 'bottom'
		                }
		            }
		        }]
		    }

		});
	});
	
	$('#visitBtn').click(function() {
		
	});
	
	Highcharts.chart('visitChart', {

	    title: {
	        text: '일별 홈페이지 방문자 수'
	    },

	    yAxis: {
	        title: {
	            text: '방문자 수(명)'
	        }
	    },

	    xAxis:{

	    	   labels:{rotaton:-45}   //라벨 기울이기

	    	   ,categories:['19','20','21','22', '23', '24', '25']   //x축 표시값 직접지정

	    },
		

	    legend: {
	        layout: 'vertical',
	        align: 'right',
	        verticalAlign: 'middle'
	    },

	    plotOptions: {
	        series: {
	            label: {
	                connectorAllowed: false
	            }
	        }
	    },

	    series: [{
	        name: '최근 일주일 방문자 수',
	        data: [ <c:forEach items="${daliyList}" var="dto">${dto.count}, </c:forEach> ]
	    }],

	    responsive: {
	        rules: [{
	            condition: {
	                maxWidth: 500
	            },
	            chartOptions: {
	                legend: {
	                    layout: 'horizontal',
	                    align: 'center',
	                    verticalAlign: 'bottom'
	                }
	            }
	        }]
	    }

	});
	
	</script>
</body>
</html>
