<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() { 
			var data = google.visualization.arrayToDataTable([
				['구분', '수', {role: "style"} ],
				['아동시설',  109838,      "#b87333"],
				['노인시설',  295080,      "#b87333"],
				['장애인시설',  222353,      "#b87333"],
				['여성시설',  6715,      "#b87333"],
				['부랑인시설',  12786,      "#b87333"],
				['정신요양시설',  13744,      "#b87333"],
				['복지관',  173931,      "#b87333"],
				['사회복지분야 법인/단체',  126980,      "#b87333"],
				['보건의료',  64416,      "#b87333"],
				['청소년복지시설',  0,      "#b87333"],
				['기타',  202878,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "number",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(시설종별)",
		        width: 1110,
		        height: 400,
		        bar: {groupWidth: "7%"},
		        legend: { position: "none" },
		      };
			var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
	</script>
	
	<script type="text/javascript">
	$(document).ready(function() {

		$("#btn1").click(function() {
			$(location).attr("href", "/user/chart/chart1");	

		});

		$("#btn2").click(function() {
			$(location).attr("href", "/user/chart/chart8");	

		});
		
		$("#btn3").click(function() {
			$(location).attr("href", "/user/chart/chart9");	

		});
		
		$("#btn4").click(function() {
			$(location).attr("href", "/user/chart/chart10");

		});
		$("#btn11").click(function() {
			$(location).attr("href", "/user/chart/chart1");

		});
		$("#btn12").click(function() {
			$(location).attr("href", "/user/chart/chart2");

		});
		$("#btn13").click(function() {
			$(location).attr("href", "/user/chart/chart3");

		});
		$("#btn14").click(function() {
			$(location).attr("href", "/user/chart/chart4");

		});
		$("#btn15").click(function() {
			$(location).attr("href", "/user/chart/chart5");

		});
		$("#btn16").click(function() {
			$(location).attr("href", "/user/chart/chart6");

		});
		$("#btn17").click(function() {
			$(location).attr("href", "/user/chart/chart7");

		});
	});
	
	</script>
	
	
<div class="container">
<br>
<button id="btn1" class="btn btn-lg btn-warning">활동현황</button>
<button id="btn2" class="btn btn-lg">관리센터현황</button>
<button id="btn3" class="btn btn-lg">인증요원현황</button>
<button id="btn4" class="btn btn-lg">지역사회봉사단현황</button><br><br>
<button id="btn11" class="btn btn-sm">지역별</button>
<button id="btn12" class="btn btn-sm ">직업별</button>
<button id="btn13" class="btn btn-sm btn-warning">시설종별</button>
<button id="btn14" class="btn btn-sm">평균시간</button>
<button id="btn15" class="btn btn-sm">평균횟수</button>
<button id="btn16" class="btn btn-sm">총시간</button>
<button id="btn17" class="btn btn-sm">총횟수</button>
<br><br>
<h1>활동현황(시설종별)</h1>
<br><br>
<ol>
<li>자원봉사자 관련 통계를 보실 수 있습니다.</li>

<li>기준 본 통계는 [사회복지 자원봉사 통계연보] 자료를 기준으로 함.</li>

<li>기준 금년도 통계는 전일까지 입력된 자료를 기준으로 함.</li>
</ol>

<div id="chart_div" style="width:1000px; height: 500px;"></div>

총계:1,228,721 <span style="float:right;">단위:명</span>
<table class="table table-bordered" >
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">아동시설</td>
		<td>109,838</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">노인시설</td>
		<td>295,080</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">장애인시설</td>
		<td>222,353</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">여성시설</td>
		<td>6,715</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">부랑인시설</td>
		<td>12,786</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">정신요양시설</td>
		<td>13,744</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">복지관</td>
		<td>173,931</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">사회복지분야 법인/단체</td>
		<td>126,980</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">보건의료</td>
		<td>64,416</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">청소년복지시설</td>
		<td>0</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">기타</td>
		<td>202,878</td>
	</tr>
	
	
</table>


</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />