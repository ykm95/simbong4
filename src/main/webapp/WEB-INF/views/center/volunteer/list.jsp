<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<script type="text/javascript">

	$(document).ready(function(){
		
		$('.tr').mouseover(function(){
			
			$(this).css('background-color', '#ddd');
		});
		
		$('.tr').mouseleave(function(){
			
			$(this).css('background-color', '#FFF');
		});
		


		// 초기화 버튼
		$("#resetForm").click(function() {
			$("#searchForm").each(function() {
				this.reset();
			});
		});

		$("select[name='srcArea']").change(function() {
			
			if ($(this).val() == '1') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0101'>서울특별시 종로구</option><option value='0102'>서울특별시 중구</option><option value='0103'>서울특별시 용산구</option><option value='0104'>서울특별시 성동구</option><option value='0105'>서울특별시 광진구</option><option value='0106'>서울특별시 동대문구</option><option value='0107'>서울특별시 중랑구</option><option value='0108'>서울특별시 성북구</option><option value='0109'>서울특별시 강북구</option><option value='0110'>서울특별시 도봉구</option><option value='0111'>서울특별시 노원구</option><option value='0112'>서울특별시 은평구</option><option value='0113'>서울특별시 서대문구</option><option value='0114'>서울특별시 마포구</option><option value='015'>서울특별시 양천구</option><option value='0116'>서울특별시 강서구</option><option value='0117'>서울특별시 구로구</option><option value='0118'>서울특별시 금천구</option><option value='0119'>서울특별시 영등포구</option><option value='0120'>서울특별시 동작구</option><option value='0121'>서울특별시 관악구</option><option value='0122'>서울특별시 서초구</option><option value='0123'>서울특별시 강남구</option><option value='0124'>서울특별시 송파구</option><option value='0125'>서울특별시 강동구</option>");
			} else if ($(this).val() == '2') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0201'>부산광역시 중구</option><option value='0202'>부산광역시 서구</option><option value='0203'>부산광역시 동구</option><option value='0204'>부산광역시 영도구</option><option value='0205'>부산광역시 부산진구</option><option value='0206'>부산광역시 동래구</option><option value='0207'>부산광역시 남구</option><option value='0208'>부산광역시 북구</option><option value='0209'>부산광역시 해운대구</option><option value='0210'>부산광역시 사하구</option><option value='0211'>부산광역시 금정구</option><option value='0212'>부산광역시 강서구</option><option value='0213'>부산광역시 연제구</option><option value='0214'>부산광역시 수영구</option><option value='0215'>부산광역시 사상구</option><option value='0216'>부산광역시 기장군</option>");
			} else if ($(this).val() == '3') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0301'>대구광역시 중구</option><option value='0302'>대구광역시 동구</option><option value='0303'>대구광역시 서구</option><option value='0304'>대구광역시 남구</option><option value='0305'>대구광역시 북구</option><option value='0306'>대구광역시 수성구</option><option value='0307'>대구광역시 달서구</option><option value='0308'>대구광역시 달성군</option>");
			} else if ($(this).val() == '4') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0401'>인천광역시 중구</option><option value='0402'>인천광역시 동구</option><option value='0403'>인천광역시 미추홀구</option><option value='0404'>인천광역시 연수구</option><option value='0405'>인천광역시 남동구</option><option value='0406'>인천광역시 부평구</option><option value='0407'>인천광역시 계양구</option><option value='0408'>인천광역시 서구</option><option value='0409'>인천광역시 강화군</option><option value='0410'>인천광역시 옹진군</option>");
			} else if ($(this).val() == '5') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0501'>광주광역시 동구</option><option value='0502'>광주광역시 서구</option><option value='0503'>광주광역시 남구</option><option value='0504'>광주광역시 북구</option><option value='0505'>광주광역시 광산구</option>");
			} else if ($(this).val() == '6') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0601'>대전광역시 동구</option><option value='0602'>대전광역시 중구</option><option value='0603'>대전광역시 서구</option><option value='0604'>대전광역시 유성구</option><option value='0605'>대전광역시 대덕구</option>");
			} else if ($(this).val() == '7') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0701'>울산광역시 중구</option><option value='0702'>울산광역시 남구</option><option value='0703'>울산광역시 동구</option><option value='0704'>울산광역시 북구</option><option value='0705'>울산광역시 울주군</option>");
			} else if ($(this).val() == '8') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0801'>세종특별자치시 연기면</option><option value='0802'>세종특별자치시 연동면</option><option value='0803'>세종특별자치시 부강면</option><option value='0804'>세종특별자치시 금남면</option><option value='0805'>세종특별자치시 장군면</option><option value='0806'>세종특별자치시 연서면</option><option value='0807'>세종특별자치시 전의면</option><option value='0808'>세종특별자치시 전동면</option><option value='0809'>세종특별자치시 소정면</option>");
			} else if ($(this).val() == '9') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='0901'>경기도 수원시 장안구</option><option value='0902'>경기도 수원시 권선구</option><option value='0903'>경기도 수원시 팔달구</option><option value='0904'>경기도 수원시 영통구</option><option value='0905'>경기도 성남시 수정구</option><option value='0906'>경기도 성남시 중원구</option><option value='0907'>경기도 성남시 분당구</option><option value='0908'>경기도 의정부시</option><option value='0909'>경기도 안양시 만안구</option><option value='0910'>경기도 안양시 동안구</option><option value='0911'>경기도 부천시</option><option value='0912'>경기도 광명시</option><option value='0913'>경기도 평택시</option><option value='0914'>경기도 동두천시</option><option value='0915'>경기도 안산시 상록구</option><option value='0916'>경기도 안산시 단원구</option><option value='0917'>경기도 고양시 덕양구</option><option value='0918'>경기도 고양시 일산동구</option><option value='0919'>경기도 고양시 일산서구</option><option value='0920'>경기도 과천시</option><option value='0921'>경기도 구리시</option><option value='0922'>경기도 남양주시</option><option value='0923'>경기도 오산시</option><option value='0924'>경기도 시흥시</option><option value='0925'>경기도 군포시</option><option value='0926'>경기도 의왕시</option><option value='0927'>경기도 하남시</option><option value='0928'>경기도 용인시 처인구</option><option value='0929'>경기도 용인시 기흥구</option><option value='0930'>경기도 용인시 수지구</option><option value='0931'>경기도 파주시</option><option value='0932'>경기도 이천시</option><option value='0933'>경기도 안성시</option><option value='0934'>경기도 김포시</option><option value='0935'>경기도 화성시</option><option value='0936'>경기도 광주시</option><option value='0937'>경기도 양주시</option><option value='0938'>경기도 포천시</option><option value='0939'>경기도 여주시</option><option value='0940'>경기도 연천군</option><option value='0941'>경기도 가평군</option><option value='0942'>경기도 양평군</option>");
			} else if ($(this).val() == '10') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1001'>강원도 춘천시</option><option value='1002'>강원도 원주시</option><option value='1003'>강원도 강릉시</option><option value='1004'>강원도 동해시</option><option value='1005'>강원도 태백시</option><option value='1006'>강원도 속초시</option><option value='1007'>강원도 삼척시</option><option value='1008'>강원도 홍천군</option><option value='1009'>강원도 횡성군</option><option value='1010'>강원도 영월군</option><option value='1011'>강원도 평창군</option><option value='1012'>강원도 정선군</option><option value='1013'>강원도 철원군</option><option value='1014'>강원도 화천군</option><option value='1015'>강원도 양구군</option><option value='1016'>강원도 인제군</option><option value='1017'>강원도 고성군</option><option value='1018'>강원도 양양군</option>");
			} else if ($(this).val() == '11') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1101'>충청북도 청주시 상당구</option><option value='1102'>충청북도 청주시 서원구</option><option value='1103'>충청북도 청주시 흥덕구</option><option value='1104'>충청북도 청주시 청원구</option><option value='1105'>충청북도 충주시</option><option value='1106'>충청북도 제천시</option><option value='1107'>충청북도 보은군</option><option value='1108'>충청북도 옥천군</option><option value='1109'>충청북도 영동군</option><option value='1110'>충청북도 증평군</option><option value='1111'>충청북도 진천군</option><option value='1112'>충청북도 괴산군</option><option value='1113'>충청북도 음성군</option><option value='1114'>충청북도 단양군</option>");
			} else if ($(this).val() == '12') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1201'>충청남도 천안시</option><option value='1202'>충청남도 공주시</option><option value='1203'>충청남도 보령시</option><option value='1204'>충청남도 아산시</option><option value='1205'>충청남도 서산시</option><option value='1206'>충청남도 논산시</option><option value='1207'>충청남도 계룡시</option><option value='1208'>충청남도 당진시</option><option value='1209'>충청남도 금산군</option><option value='1210'>충청남도 부여군</option><option value='1211'>충청남도 서천군</option><option value='1212'>충청남도 청양군</option><option value='1213'>충청남도 홍성군</option><option value='1214'>충청남도 예산군</option><option value='1215'>충청남도 태안군</option>");
			} else if ($(this).val() == '13') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1301'>전라북도 전주시 완산구</option><option value='1302'>전라북도 전주시 덕진구</option><option value='1303'>전라북도 군산시</option><option value='1304'>전라북도 익산시</option><option value='1305'>전라북도 정읍시</option><option value='1306'>전라북도 남원시</option><option value='1307'>전라북도 김제시</option><option value='1308'>전라북도 완주군</option><option value='1309'>전라북도 진안군</option><option value='1310'>전라북도 무주군</option><option value='1311'>전라북도 장수군</option><option value='1312'>전라북도 임실군</option><option value='1313'>전라북도 순창군</option><option value='1314'>전라북도 고창군</option><option value='1315'>전라북도 부안군</option>");
			} else if ($(this).val() == '14') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1401'>전라남도 목포시</option><option value='1402'>전라남도 여수시</option><option value='1403'>전라남도 순천시</option><option value='1404'>전라남도 나주시</option><option value='1405'>전라남도 광양시</option><option value='1406'>전라남도 담양군</option><option value='1407'>전라남도 곡성군</option><option value='1408'>전라남도 구례군</option><option value='1409'>전라남도 고흥군</option><option value='1410'>전라남도 보성군</option><option value='1411'>전라남도 화순군</option><option value='1412'>전라남도 장흥군</option><option value='1413'>전라남도 강진군</option><option value='1414'>전라남도 해남군</option><option value='1415'>전라남도 영암군</option><option value='1416'>전라남도 무안군</option><option value='1417'>전라남도 함평군</option><option value='1418'>전라남도 영광군</option><option value='1419'>전라남도 장성군</option><option value='1420'>전라남도 완도군</option><option value='1421'>전라남도 진도군</option><option value='1422'>전라남도 신안군</option>");
			} else if ($(this).val() == '15') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1501'>경상북도 포항시 남구</option><option value='1502'>경상북도 포항시 북구</option><option value='1503'>경상북도 경주시</option><option value='1504'>경상북도 김천시</option><option value='1505'>경상북도 안동시</option><option value='1506'>경상북도 구미시</option><option value='1507'>경상북도 영주시</option><option value='1508'>경상북도 영천시</option><option value='1509'>경상북도 상주시</option><option value='1510'>경상북도 문경시</option><option value='1511'>경상북도 경산시</option><option value='1512'>경상북도 군위군</option><option value='1513'>경상북도 의성군</option><option value='1514'>경상북도 청송군</option><option value='1515'>경상북도 영양군</option><option value='1516'>경상북도 영덕군</option><option value='1517'>경상북도 청도군</option><option value='1518'>경상북도 고령군</option><option value='1518'>경상북도 성주군</option><option value='1519'>경상북도 칠곡군</option><option value='1520'>경상북도 예천군</option><option value='1521'>경상북도 봉화군</option><option value='1522'>경상북도 울진군</option><option value='1523'>경상북도 울릉군</option>");
			} else if ($(this).val() == '16') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1601'>경상남도 창원시</option><option value='1602'>경상남도 진주시</option><option value='1603'>경상남도 통영시</option><option value='1604'>경상남도 사천시</option><option value='1605'>경상남도 김해시</option><option value='1606'>경상남도 밀양시</option><option value='1607'>경상남도 거제시</option><option value='1608'>경상남도 양산시</option><option value='1609'>경상남도 의령군</option><option value='1610'>경상남도 함안군</option><option value='1611'>경상남도 창녕군</option><option value='1612'>경상남도 고성군</option><option value='1613'>경상남도 남해군</option><option value='1614'>경상남도 하동군</option><option value='1615'>경상남도 산청군</option><option value='1616'>경상남도 함양군</option><option value='1617'>경상남도 거창군</option><option value='1618'>경상남도 합천군</option>");
			} else if ($(this).val() == '17') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option><option value='1701'>제주특별자치도 제주시</option><option value='1702'>제주특별자치도 서귀포시</option>");
			} else if ($(this).val() == '') {
				$("#vol_area")
						.html(
								"<option value='0'>선택</option>");
			}
			$("#vol_area").removeAttr("disabled");
		});

		//종료시점 변경시 시작시점과 비교
	    var s = $('#vol_sterm');
	    var e = $('#vol_eterm');
	    
	    e.change(function(){
	       if( s.val() == ""){
	          
	          alert('시작 시점을 먼저 선택해주세요')
	          e.val("");
	          
	       } else {
	          
	          if( e.val() < s.val() ){
	             
	              alert('종료 시점은 시작 시점보다 빠를 수 없습니다')
	              e.val("");
	          } 
	       }
       
	    });
	    
	    //시작지점 변경시 종료시점과 비교
	    s.change(function(){
	    	if( e.val() != ""){
	          if( e.val() < s.val() ){
	             
	              alert('종료 시점은 시작 시점보다 빠를 수 없습니다')
	              s.val("");
	           
	       }
	    	}
	    });

	    // 시작지점 선택하고 종료지점 선택 안했을 때
	    $("#searchForm").submit(
	    		function() {
	    	if( s.val() != "") {
	    		
		    	if( e.val() == "" ) {
	    	
	    		alert('종료 지점을 선택해주세요')
	    		return false;
		    	}
	    		
	    	}
	    	
	   });
	    
	    // 종료지점 선택하고 시작지점 선택 안했을 때
	    $("#searchForm").submit(
	    		function() {
	    	if( e.val() != "") {
	    		
		    	if( s.val() == "" ) {
	    	
	    		alert('시작 지점을 선택해주세요')
	    		return false;
		    	}
	    		
	    	}
	    	
	   }); 

	});
		
		
</script>

<div class="container" style="background-color: #FFF">
	
	<form action="/center/volunteer/list" method="get" id="searchForm" style="margin:40px 0 40px; padding: 50px; background-color: #ddd">
	
		활동기간
		<div class="row">
			<div class="col">
		<input name="vol_sterm" title="시작일" id="vol_sterm"
		type="date" value="" class="form-control"></div>
		~ 
		<div class="col">
		<input
		name="vol_eterm" title="종료일" id="vol_eterm"
		type="date" value=""  class="form-control">
		</div></div><br>
				
						
		활동시간
		<div class="row">
			<div class="col">
		<input name="stime" title="시작시간" id="stime" class="form-control" type="time" value=""></div> 
		~
		<div class="col"> 
		<input name="etime" title="종료시간" id="etime" class="form-control" type="time" value=""></div>
				</div><br>	
		
		활동분야
		<div class="row">
			<div class="col">
		<select id="department" name="department" title="활동영역" class="form-control">
								<option value="0">선택</option>

								<option value="1">시설봉사</option>

								<option value="2">재가봉사</option>

								<option value="3">전문봉사</option>

								<option value="4">지역사회봉사</option>

								<option value="5">금.물품봉사</option>
		</select> </div>
			</div>
		<br>

		봉사지역
		<div class="row">
			<div class="col">

		<select class="form-control" title="시도" name="srcArea" id="srcArea" >
			<option value="">전체</option>
			<option value="1">서울특별시</option>
			<option value="2">부산광역시</option>
			<option value="3">대구광역시</option>
			<option value="4">인천광역시</option>
			<option value="5">광주광역시</option>
			<option value="6">대전광역시</option>
			<option value="7">울산광역시</option>
			<option value="8">세종특별자치시</option>
			<option value="9">경기도</option>
			<option value="10">강원도</option>
			<option value="11">충청북도</option>
			<option value="12">충청남도</option>
			<option value="13">전라북도</option>
			<option value="14">전라남도</option>
			<option value="15">경상북도</option>
			<option value="16">경상남도</option>
			<option value="17">제주특별자치도</option>
		</select> </div>
			<div class="col">
		<select class="form-control" name="vol_area" id="vol_area" title="시군구" disabled="disabled" >
			<option value="">선택</option>
		</select>
			</div>
		</div><br>
						

		<div>
		상태 &nbsp; &nbsp; &nbsp; &nbsp;
		<input name="vol_process" title="전체" id="processAll" type="radio" value="0" checked="checked">&nbsp;
		<label for="processAll">전체</label> &nbsp; 
		
		<input name="vol_process" title="모집중" id="process1" type="radio" value="1">&nbsp;
		<label for="process1">모집중</label>&nbsp; 
		
		<input name="vol_process" title="모집완료" id="process2" type="radio" value="2">&nbsp;
		<label for="process2">모집완료</label>&nbsp;<br>
		</div><br>
				
		제목
		<div>
			<input name="search" title="활동 명" id="search"
					type="text" value="" class="form-control">
		</div><br>

			<div>
				<button class="btn btn-danger"  style="float:right;" id="resetForm" type="button">초기화</button>&nbsp;&nbsp;
				<button class="btn btn-secondary" style="float:right;" type="submit">검색</button>&nbsp;&nbsp;
			</div>
			
	</form>

	<div style="border-top: 1px solid; border-bottom: 1px solid;">

		<c:forEach items="${list }" var="i">
			<div class="container tr" onclick="location.href='/center/volunteer/view?volunteerno=${i.volunteerno }';"
			style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc">
				<div class="row">
					<div class="col-1">${i.volunteerno }</div>
					<div class="col-9"><h3>${i.vol_title }</h3></div>
					<div class="col-2"><small>${i.aname }</small></div>
				</div>
				<div class="row">
					<div class="col-2"><small style="color: blue;">필요/신청인원 : </small><small>${i.npeople } / ${i.apeople }</small></div>
					<div class="col-4"><small style="color: blue;">봉사기간 : </small><small>${i.vol_sterm } ~ ${i.vol_eterm }</small></div>
					<div class="col-3"><small style="color: blue;">모집센터 : </small><small>${i.cname }</small></div>
				</div>
			</div>
		</c:forEach>
	
	</div>

</div>

<jsp:include page="/WEB-INF/views/center/volunteer/paging.jsp"></jsp:include>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>