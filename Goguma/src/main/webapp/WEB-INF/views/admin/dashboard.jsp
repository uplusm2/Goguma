<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>고구마</title>
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

						<div class="item" id="dealBtn">
							<div class="item-icon">
								<i class="fas fa-money-bill-wave" style="color: #A8E3B3;"></i>
							</div>
							<div class="item-text">
								<span class="item-num">2,495,000원</span><br>
								<span class="item-info">오늘 거래금액</span>
							</div>
						</div>

						<div class="item" id="productBtn">
							<div class="item-icon">
								<i class="fas fa-shopping-cart" style="color: #E0BBE4;"></i></i>
							</div>
							<div class="item-text">
								<span class="item-num">325개</span><br>
								<span class="item-info">업데이트된 상품</span>
							</div>
						</div>

						<div class="item" id="visitBtn">
							<div class="item-icon">
								<i class="fas fa-user" style="color: #FFF0BA;"></i>
							</div>
							<div class="item-text">
								<span class="item-num">2,264명</span><br>
								<span class="item-info">오늘 방문자수</span>
							</div>
						</div>

					</div>


					<div class="chart-container">
						<div id="dealChart"></div>
					</div>

				</div>
			</div>
		</section>

		<%@include file="/WEB-INF/views/inc/footer.jsp" %>

	</main>

	<script>
	
	function showDeal() {
		Highcharts.chart('dealChart', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: '최근 일주일 인기 카테고리 거래 금액'
		    },
		    xAxis: {
		        categories: ['22', '23', '24', '25', '26', '27', '28'],
		        crosshair: true
		    },
		    yAxis: {
		        min: 0,
		        title: {
		            text: '거래금액(만원)'
		        }
		    },
		    tooltip: {
		        headerFormat: '<span style="font-size:10px">{point.key}</span><table>',
		        pointFormat: '<tr><td style="color:{series.color};padding:0">{series.name}: </td>' +
		            '<td style="padding:0"><b>{point.y:.0f}만원</b></td></tr>',
		        footerFormat: '</table>',
		        shared: true,
		        useHTML: true
		    },
		    plotOptions: {
		        column: {
		            pointPadding: 0.2,
		            borderWidth: 0
		        }
		    },
		    series: [{
		        name: '디지털기기',
		        data: [50, 44, 47, 45, 58, 67, 47]
		    }, {
		        name: '뷰티/미용',
		        data: [48, 43, 41, 45, 46, 51, 39]

		    }, {
		        name: '게임/취미',
		        data: [29, 32, 40, 31, 35, 26, 17]

		    }, {
		        name: '도서/티켓/음반',
		        data: [32, 19, 11, 20, 34, 21, 24]

		    }]
		});
	}
	
	function showProduct(){
		Highcharts.chart('productChart', {
		    chart: {
		        type: 'column'
		    },
		    title: {
		        text: '한 달 동안 업데이트된 상품 수'
		    },
		    accessibility: {
		        announceNewData: {
		            enabled: true
		        }
		    },
		    xAxis: {
		        type: 'category'
		    },
		    yAxis: {
		        title: {
		            text: '상품 수'
		        }
		    },
		    legend: {
		        enabled: false
		    },
		    plotOptions: {
		        series: {
		            borderWidth: 0,
		            dataLabels: {
		                enabled: true,
		                format: '{point.y:.0f}개'
		            }
		        }
		    },
		    series: [
		        {
		            colorByPoint: true,
		            data: [
		                {
		                    name: "여성의류",
		                    y: 82
		                },
		                {
		                    name: "남성패션/잡화",
		                    y: 60
		                },
		                {
		                    name: "디지털기기",
		                    y: 58
		                },
		                {
		                    name: "유아도서",
		                    y: 55
		                },
		                {
		                    name: "게임/취미",
		                    y: 40
		                },
		                {
		                    name: "생활가전",
		                    y: 19
		                },
		                {
		                    name: "기타",
		                    y: 11
		                }
		            ]
		         }
		     ]
		});
	}
	
	function showVisit(){
		Highcharts.chart('visitChart', {

		    title: {
		        text: '최근 일주일 홈페이지 방문자 수'
		    },

		    yAxis: {
		        title: {
		            text: '방문자 수(명)'
		        }
		    },

		    xAxis:{
		    	   labels:{rotaton:-45},
		    	   categories:['22', '23', '24', '25', '26', '27', '28'] 
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
		        name: '방문자 수',
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
	}
	
	showDeal();
	
	$('#dealBtn').click(function(){
		$('.chart-container').empty();
		$('.chart-container').append('<div id="dealChart"></div>');
		showDeal();
	})
	
	$('#productBtn').click(function(){
		$('.chart-container').empty();
		$('.chart-container').append('<div id="productChart"></div>');
		showProduct();
	});
	
	$('#visitBtn').click(function() {
		$('.chart-container').empty();
		$('.chart-container').append('<div id="visitChart"></div>');
		showVisit();
	});
	
	
	
	</script>
</body>
</html>
