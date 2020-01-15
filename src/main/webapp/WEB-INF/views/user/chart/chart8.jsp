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
				['서울',  1980,      "#b87333"],
				['부산',  828,      "#b87333"],
				['대구',  591,      "#b87333"],
				['인천',  703,      "#b87333"],
				['광주',  925,      "#b87333"],
				['대전',  700,      "#b87333"],
				['울산',  361,      "#b87333"],
				['세종',  49,      "#b87333"],
				['경기',  2007,      "#b87333"],
				['강원',  592,      "#b87333"],
				['충북',  517,      "#b87333"],
				['충남',  846,      "#b87333"],
				['전북',  589,      "#b87333"],
				['전남',  1020,      "#b87333"],
				['경북',  946,      "#b87333"],
				['경남',  889,      "#b87333"],
				['제주',  327,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "number",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 관리센터현황",
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
		
	});
	
	</script>
	
	
<div class="container">
<br>
<button id="btn1" class="btn btn-lg">활동현황</button>
<button id="btn2" class="btn btn-lg btn-warning">관리센터현황</button>
<button id="btn3" class="btn btn-lg">인증요원현황</button>
<button id="btn4" class="btn btn-lg">지역사회봉사단현황</button>
<br><br>
<h1>관리센터현황</h1>
<br><br>
<ol>
<li>자원봉사자 관련 통계를 보실 수 있습니다.</li>

<li>기준 본 통계는 [사회복지 자원봉사 통계연보] 자료를 기준으로 함.</li>

<li>기준 금년도 통계는 전일까지 입력된 자료를 기준으로 함.</li>
</ol>

<div id="chart_div" style="width:1000px; height: 500px;"></div>

총계:13,870 <span style="float:right;">단위:개수</span>
<table class="table table-bordered" >
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">서울</td>
		<td>1,980</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">부산</td>
		<td>828</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">대구</td>
		<td>591</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">인천</td>
		<td>703</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">광주</td>
		<td>925</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">대전</td>
		<td>700</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">울산</td>
		<td>361</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">세종</td>
		<td>49</td>
	</tr>
	<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">경기</td>
		<td>2,007</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">강원</td>
		<td>592</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">충북</td>
		<td>517</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">충남</td>
		<td>846</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">전북</td>
		<td>589</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">전남</td>
		<td>1,020</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">경북</td>
		<td>946</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">경남</td>
		<td>889</td>
	</tr>
		<tr>
		<td style="text-align:center; background-color:#9ec0c9; ">제주</td>
		<td>327</td>
	</tr>
	

</table>


</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />