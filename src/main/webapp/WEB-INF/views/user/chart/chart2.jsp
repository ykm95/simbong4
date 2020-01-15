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
				['공무원',  21094,      "#b87333"],
				['사무관리직',  41954,      "#b87333"],
				['전문직',  32446,      "#b87333"],
				['자영',  18330,      "#b87333"],
				['기술',  7366,      "#b87333"],
				['농수산업',  1450,      "#b87333"],
				['군인',  6025,      "#b87333"],
				['주부',  96231,      "#b87333"],
				['학생',  529198,      "#b87333"],
				['무직',  21340,      "#b87333"],
				['기타',  93915,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "number",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(직업별)",
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
	
	
<div class="container" style="background-color: #FFF">
<br>
<button id="btn1" class="btn btn-lg btn-warning">활동현황</button>
<button id="btn2" class="btn btn-lg">관리센터현황</button>
<button id="btn3" class="btn btn-lg">인증요원현황</button>
<button id="btn4" class="btn btn-lg">지역사회봉사단현황</button><br><br>
<button id="btn11" class="btn btn-sm">지역별</button>
<button id="btn12" class="btn btn-sm btn-warning">직업별</button>
<button id="btn13" class="btn btn-sm">시설종별</button>
<button id="btn14" class="btn btn-sm">평균시간</button>
<button id="btn15" class="btn btn-sm">평균횟수</button>
<button id="btn16" class="btn btn-sm">총시간</button>
<button id="btn17" class="btn btn-sm">총횟수</button>
<br><br>
<h1>활동현황(직업별)</h1>
<br><br>
<ol>
<li>자원봉사자 관련 통계를 보실 수 있습니다.</li>

<li>기준 본 통계는 [사회복지 자원봉사 통계연보] 자료를 기준으로 함.</li>

<li>기준 금년도 통계는 전일까지 입력된 자료를 기준으로 함.</li>
</ol>

<div id="chart_div" style="width:1000px; height: 500px;"></div>

총계:36,588 <span style="float:right;">단위:명</span>
<table class="table table-bordered" >
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">공무원</td>
		<td>21,094</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">사무관리직</td>
		<td>41,954</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">전문직</td>
		<td>32,446</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">자영</td>
		<td>18,330</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">기술</td>
		<td>7,366</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">농수산업</td>
		<td>1,450</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">군인</td>
		<td>6,025</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">주부</td>
		<td>96,231</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">학생</td>
		<td>529,198</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">무직</td>
		<td>21,340</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">기타</td>
		<td>93,915</td>
	</tr>
	
	
</table>


</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />