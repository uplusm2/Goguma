<%@page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마</title>
<%@ include file="/WEB-INF/views/inc/asset.jsp"%>
<script src="/goguma/asset/js/highcharts.js"></script>
<link rel="stylesheet" type="text/css" href="/goguma/asset/css/admin.css">
<style>
	.leftside {
		min-height: 1000px;
	}
</style>
</head>
<body>
	<!-- connstatis.jsp -->
	<main class="main">
		<%@include file="/WEB-INF/views/inc/header.jsp"%>
		<section class="content">
			<div class="container">

				<!-- 왼쪽 네비게이션바 -->
				<%@ include file="/WEB-INF/views/inc/admin/nav.jsp"%>

				<!-- 본문 -->
				<div class="article dashboard">

					<!-- 제목 -->
					<div class="subtitle"><h2>접속 통계</h2></div>
					
					<div class="chart-container">
						<div id="daliyChart"></div>
					</div>

					<div class="chart-container">
						<div id="monthlyChart"></div>
					</div>


				</div>
			</div>
		</section>

		<%@include file="/WEB-INF/views/inc/footer.jsp" %>

	</main>

	<script >
	
	Highcharts.chart('daliyChart', {

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

	    	   ,categories:['20','21','22', '23', '24', '25', '26', '27']   //x축 표시값 직접지정

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
	
	Highcharts.chart('monthlyChart', {

	    title: {
	        text: '월별 홈페이지 방문자 수'
	    },

	    yAxis: {
	        title: {
	            text: '방문자 수(명)'
	        }
	    },

	    xAxis:{

	    	   labels:{rotaton:-45},   //라벨 기울이기
	    	   categories: ['202102','202103','202104', '202105', '202106', '202107', '202108', '202109', '202110', '202111', '202112', '202201']   //x축 표시값 직접지정

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
	        name: '최근 12개월 방문자 수',
	        data: [ <c:forEach items="${monthList}" var="dto">${dto.count}, </c:forEach> ]
	    }, {
	        name: '연간 평균 방문자 수',
	        data: [ <c:forEach items="${avgMonthList}" var="dto">${dto.count}, </c:forEach>]
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







