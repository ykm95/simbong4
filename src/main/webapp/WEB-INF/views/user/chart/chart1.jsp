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
					['구분', '단위(명)', {role: "style"} ],
					['서울',  224076,      "#b87333"],
					['부산',  67287,      "#b87333"],
					['대구',  53758,      "#b87333"],
					['인천',  52853,      "#b87333"],
					['광주',  57611,      "#b87333"],
					['대전',  45777,      "#b87333"],
					['울산',  44869,      "#b87333"],
					['세종',  3588,      "#b87333"],
					['경기',  171138,      "#b87333"],
					['강원',  33781,      "#b87333"],
					['충북',  24756,      "#b87333"],
					['충남',  62418,      "#b87333"],
					['전북',  36147,      "#b87333"],
					['전남',  68805,      "#b87333"],
					['경북',  62500,      "#b87333"],
					['경남',  91890,      "#b87333"],
					['제주',  26105,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "number",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(지역별)",
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
<button id="btn11" class="btn btn-sm btn-warning">지역별</button>
<button id="btn12" class="btn btn-sm">직업별</button>
<button id="btn13" class="btn btn-sm">시설종별</button>
<button id="btn14" class="btn btn-sm">평균시간</button>
<button id="btn15" class="btn btn-sm">평균횟수</button>
<button id="btn16" class="btn btn-sm">총시간</button>
<button id="btn17" class="btn btn-sm">총횟수</button>
<br><br>
<h1>활동현황(지역별)</h1>
<br><br>
<ol>
<li>자원봉사자 관련 통계를 보실 수 있습니다.</li>

<li>기준 본 통계는 [사회복지 자원봉사 통계연보] 자료를 기준으로 함.</li>

<li>기준 금년도 통계는 전일까지 입력된 자료를 기준으로 함.</li>
</ol>

<div id="chart_div" style="width:1000px; height: 500px;"></div>

총계:47,278 <span style="float:right;">단위:명</span>
<table class="table table-bordered" >
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">서울</td>
		<td>224,076</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">부산</td>
		<td>67,287</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">대구</td>
		<td>53,758</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">인천</td>
		<td>52,853</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">광주</td>
		<td>57,611</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">대전</td>
		<td>45,777</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">울산</td>
		<td>44,869</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">세종</td>
		<td>3,588</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">경기</td>
		<td>171,138</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">강원</td>
		<td>33,781</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">충북</td>
		<td>24,756</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">충남</td>
		<td>62,418</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">전북</td>
		<td>36,147</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">전남</td>
		<td>68,805</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">경북</td>
		<td>62,500</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">경남</td>
		<td>91,890</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">제주</td>
		<td>26,105</td>
	</tr>
	

</table>


</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />