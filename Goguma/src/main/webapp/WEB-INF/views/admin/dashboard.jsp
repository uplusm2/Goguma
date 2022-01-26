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
		<div class="container">
			
			<!-- 왼쪽 네비게이션바 -->
			<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>
			
			<!-- 본문 -->
			<div class="article dashboard">

				<!-- 제목 -->
				<div class="subtitle"><h2>대시보드</h2></div>

				<!-- 박스들 -->
				<div class="card">

					<div class="item">
						<div class="item-icon"><i class="fas fa-won-sign" style="font-size:2.5em;"></i></div>
						<div class="itme-"><span>오늘 거래금액</span><br>
						 	<span>₩5,495,000</span></div>
					</div>
					<div class="item">
						<div class="item-icon"><i class="fas fa-won-sign" style="font-size:2.5em;"></i></div>
						<div class="itme-"><span>오늘 거래금액</span><br>
						 	<span>₩5,495,000</span></div>
					</div>
					<div class="item">
						<div class="item-icon"><i class="fas fa-won-sign" style="font-size:2.5em;"></i></div>
						<div class="itme-"><span>오늘 거래금액</span><br>
						 	<span>₩5,495,000</span></div>
					</div>
					<div class="item">
						<div class="item-icon"><i class="fas fa-won-sign" style="font-size:2.5em;"></i></div>
						<div class="itme-"><span>오늘 거래금액</span><br>
						 	<span>₩5,495,000</span></div>
					</div>
				</div>
				<input type="button" id="btn1" style="width:100px;">
				<input type="button" id="btn2" style="width:100px;">
				
				<div class="chart-container">
					<div id="visitChart"></div>
				</div>
				
				<div class="chart-container">
					<div id="daliyVisitChart"></div>
				</div>
				
			</div>
		</div>

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
	
	$('#btn2').click(function() {
		Highcharts.chart('visitChart', {

		    title: {
		        text: '일별 홈페이지 방문자 수'
		    },

		    yAxis: {
		        title: {
		            text: '방문자 수(명)'
		        }
		    },

		    xAxis: {
		        type: 'datetime',
		        dateTimeLabelFormats: {
		           day: '%e. %b.'    //ex- 01 Jan 2016
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
	});
	
	</script>
</body>
</html>
