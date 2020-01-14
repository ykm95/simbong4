<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

<meta charset="UTF-8">
<title>Insert title here</title>


<script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>
<script type="text/javascript">
		google.charts.load('current', {'packages':['corechart']});
		google.charts.setOnLoadCallback(drawVisualization);
	
		function drawVisualization() { 
			var data = google.visualization.arrayToDataTable([
					['구분', '수', {role: "style"} ],
					['서울',  4630022,      "#b87333"],
					['부산',  1645199,      "#b87333"],
					['대구',  1282814,      "#b87333"],
					['인천',  1300444,      "#b87333"],
					['광주',  1103831,      "#b87333"],
					['대전',  916614,      "#b87333"],
					['울산',  1001407,      "#b87333"],
					['세종',  56485,      "#b87333"],
					['경기',  3557311,      "#b87333"],
					['강원',  712367,      "#b87333"],
					['충북',  564404,      "#b87333"],
					['충남',  1091138,      "#b87333"],
					['전북',  644982,      "#b87333"],
					['전남',  1281323,      "#b87333"],
					['경북',  1301999,      "#b87333"],
					['경남',  1737049,      "#b87333"],
					['제주',  408826,      "#b87333"],
				]);
		      var view = new google.visualization.DataView(data);
		      view.setColumns([0, 1,
		                       { calc: "stringify",
		                         sourceColumn: 1,
		                         type: "string",
		                         role: "annotation" },
		                       2]);

		      var options = {
		        title: "2019년도 활동현황(총시간)",
		        width: 1200,
		        height: 400,
		        bar: {groupWidth: "5%"},
		        legend: { position: "none" },
		      };
			var chart = new google.visualization.ColumnChart(document.getElementById('chart_div'));
			chart.draw(data, options);
		}
	</script>

</head>
<body>

<div id="chart_div" style="width:1200px; height: 500px;"></div>

</body>
</html>