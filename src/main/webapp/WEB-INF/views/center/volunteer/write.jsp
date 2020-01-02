<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<script src="//cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
 	//지역 대분류 변경시에 소분류 변경
	$("select[name='area']").change(function() {
		
		if( $(this).val() == 1) {
			
			$('#area').html('<option value="0101">종로구</option><option value="0102">중구</option><option value="0103">용산구</option><option value="0104">성동구</option><option value="0105">광진구</option><option value="0106">동대문구</option><option value="0107">중랑구</option><option value="0108">성북구</option><option value="0109">강북구</option><option value="0110">도봉구</option><option value="0111">노원구</option><option value="0112">은평구</option><option value="0113">서대문구</option><option value="0114">마포구</option><option value="0115">양천구</option><option value="0116">강서구</option><option value="0117">구로구</option><option value="0118">금천구</option><option value="0119">영등포구</option><option value="0120">동작구</option><option value="0121">관악구</option><option value="0122">서초구</option><option value="0123">강남구</option><option value="0124">송파구</option><option value="0125">강동구</option>')
		
		} else if( $(this).val() == 2) {
			
			$('#area').html('<option value="0201">중구</option><option value="0202">서구</option><option value="0203">동구</option><option value="0204">영도구</option><option value="0205">부산진구</option><option value="0206">동래구</option><option value="0207">남구</option><option value="0208">북구</option><option value="0209">해운대구</option><option value="0210">사하구</option><option value="0211">금정구</option><option value="0212">강서구</option><option value="0213">연제구</option><option value="0214">수영구</option><option value="0215">사상구</option><option value="0216">기장군</option>');
			
		} else if( $(this).val() == 3) {
			
			$('#area').html('<option value="0301">중구</option><option value="0302">동구</option><option value="0303">서구</option><option value="0304">남구</option><option value="0305">북구</option><option value="0306">수성구</option><option value="0307">달서구</option><option value="0308">달성군</option>');
			
		} else if( $(this).val() == 4) {
			
			$('#area').html('<option value="0401">중구</option><option value="0402">동구</option><option value="0403">미추홀구</option><option value="0404">연수구</option><option value="0405">남동구</option><option value="0406">부평구</option><option value="0407">계양구</option><option value="0408">서구</option><option value="0409">강화군</option><option value="0410">옹진군</option>')
			
		} else if( $(this).val() == 5) {
			
			$('#area').html('<option value="0501">동구</option><option value="0502">서구</option><option value="0503">남구</option><option value="0504">북구</option><option value="0505">광산구</option>');
			
		} else if( $(this).val() == 6) {
			
			$('#area').html('<option value="0601">동구</option><option value="0602">중구</option><option value="0603">서구</option><option value="0604">유성구</option><option value="0605">대덕구</option>');
			
		} else if( $(this).val() == 7) {
			
			$('#area').html('<option value="0701">중구</option><option value="0702">남구</option><option value="0703">동구</option><option value="0704">북구</option><option value="0705">울주군</option>');
			
		} else if( $(this).val() == 8) {
			
			$('#area').html('<option value="0801">연기면</option><option value="0802">연동면</option><option value="0803">부강면</option><option value="0804">금남면</option><option value="0805">장군면</option><option value="0806">연서면</option><option value="0807">전의면</option><option value="0808">전동면</option><option value="0809">소정면</option>');
			
		} else if( $(this).val() == 9) {
			
			$('#area').html('<option disabled="disabled">수원시</option><option value="0901">수원시 장안구</option><option value="0902">수원시 권선구</option><option value="0903">수원시 팔달구</option><option value="0904">수원시 영통구</option><option disabled="disabled">성남시</option><option value="0905">성남시 수정구</option><option value="0906">성남시 중원구</option><option value="0907">성남시 분당구</option><option value="0908">의정부시</option><option disabled="disabled">안양시</option><option value="0909">안양시 만안구</option><option value="0910">안양시 동안구</option><option value="0911">부천시</option><option value="0912">광명시</option><option value="0913">평택시</option><option value="0914">동두천시</option><option disabled="disabled">안산시</option><option value="0915">안산시 상록구</option><option value="0916">안산시 단원구</option><option disabled="disabled">고양시</option><option value="0917">고양시 덕양구</option><option value="0918">고양시 일산동구</option><option value="0919">고양시 일산서구</option><option value="0920">과천시</option><option value="0921">구리시</option><option value="0922">남양주시</option><option value="0923">오산시</option><option value="0924">시흥시</option><option value="0925">군포시</option><option value="0926">의왕시</option><option value="0927">하남시</option><option disabled="disabled">용인시</option><option value="0928">용인시 처인구</option><option value="0929">용인시 기흥구</option><option value="0930">용인시 수지구</option><option value="0931">파주시</option><option value="0932">이천시</option><option value="0933">안성시</option><option value="0934">김포시</option><option value="0935">화성시</option><option value="0936">광주시</option><option value="0937">양주시</option><option value="0938">포천시</option><option value="0939">여주시</option><option value="0940">연천군</option><option value="0941">가평군</option><option value="0942">양평면</option>');
			
		} else if( $(this).val() == 10) {
			
			$('#area').html('<option value="1001">춘천시</option><option value="1002">원주시</option><option value="1003">강릉시</option><option value="1004">동해시</option><option value="1005">태백시</option><option value="1006">속초시</option><option value="1007">삼척시</option><option value="1008">홍천군</option><option value="1009">횡성군</option><option value="1010">영월군</option><option value="1011">평창군</option><option value="1012">정선군</option><option value="1013">철원군</option><option value="1014">화천군</option><option value="1015">양구군</option><option value="1016">인제군</option><option value="1017">고성군</option><option value="1018">양양군</option>');
			
		} else if( $(this).val() == 11) {
			
			$('#area').html('<option disabled="disabled">청주시</option><option value="1101">청주시 상당구</option><option value="1102">청주시 서원구</option><option value="1103">청주시 흥덕구</option><option value="1104">청주시 청원구</option><option value="1105">충주시</option><option value="1106">제천시</option><option value="1107">보은군</option><option value="1108">옥천군</option><option value="1109">영동군</option><option value="1110">증평군</option><option value="1111">진천군</option><option value="1112">괴산군</option><option value="1113">음성군</option><option value="1114">단양군</option>');
			
		} else if( $(this).val() == 12) {
			
			$('#area').html('<option value="1201">천안시</option><option value="1202">공주시</option><option value="1203">보령시</option><option value="1204">아산시</option><option value="1205">서산시</option><option value="1206">논산시</option><option value="1207">계룡시</option><option value="1208">당진시</option><option value="1209">금산군</option><option value="1210">부여군</option><option value="1211">서천군</option><option value="1212">청양군</option><option value="1213">홍성군</option><option value="1214">예산군</option><option value="1215">태안군</option>');
			
		} else if( $(this).val() == 13) {
			
			$('#area').html('<option disabled="disabled">전주시</option><option value="1301">전주시 완산구</option><option value="1302">전주시 덕진구</option><option value="1303">군산시</option><option value="1304">익산시</option><option value="1305">정읍시</option><option value="1306">남원시</option><option value="1307">김제시</option><option value="1308">완주군</option><option value="1309">진안군</option><option value="1310">무주군</option><option value="1311">장수군</option><option value="1312">임실군</option><option value="1313">순양군</option><option value="1314">고창군</option><option value="1315">부안군</option>');
			
		} else if( $(this).val() == 14) {
			
			$('#area').html('<option value="1401">목포시</option><option value="1402">여수시</option><option value="1403">순천시</option><option value="1404">나주시</option><option value="1405">광양시</option><option value="1406">담양군</option><option value="1407">곡성군</option><option value="1408">구례군</option><option value="1409">고흥군</option><option value="1410">보성군</option><option value="1411">화순군</option><option value="1412">장흥군</option><option value="1413">강진군</option><option value="1414">해남군</option><option value="1415">영암군</option><option value="1416">무안군</option><option value="1417">함평군</option><option value="1418">영광군</option><option value="1419">장성군</option><option value="1420">완도군</option><option value="1421">진도군</option><option value="1422">신안군</option>');
			
		} else if( $(this).val() == 15) {
			
			$('#area').html('<option disabled="disabled">포항시</option><option value="1501">포항시 남구</option><option value="1502">포항시 북구</option><option value="1503">경주시</option><option value="1504">김천시</option><option value="1505">안동시</option><option value="1506">구미시</option><option value="1507">영주시</option><option value="1508">영천시</option><option value="1509">상주시</option><option value="1510">문경시</option><option value="1511">경산시</option><option value="1512">군위군</option><option value="1513">의성군</option><option value="1514">청송군</option><option value="1515">영양군</option><option value="1516">영덕군</option><option value="1517">청도군</option><option value="1518">고령군</option><option value="1519">칠곡군</option><option value="1520">예천군</option><option value="1521">봉화군</option><option value="1522">울진군</option><option value="1523">울릉군</option>');
			
		} else if( $(this).val() == 16) {
			
			$('#area').html('<option value="1601">창원시</option><option value="1602">진주시</option><option value="1603">통영시</option><option value="1604">사천시</option><option value="1605">김해시</option><option value="1606">밀양시</option><option value="1607">거제시</option><option value="1608">양산시</option><option value="1609">의령군</option><option value="1610">함안군</option><option value="1611">창녕군</option><option value="1612">고성군</option><option value="1613">남해군</option><option value="1614">하동군</option><option value="1615">산청군</option><option value="1616">함양군</option><option value="1617">거창군</option><option value="1618">합천군</option>');
			
		} else if( $(this).val() == 17) {
			
			$('#area').html('<option value="1701">제주시</option><option value="1702">서귀포시</option>');
			
		}
		
	});
	
	
	//CKEDITOR 설치
	CKEDITOR.replace( 'editor1' );

 	
 	//종료시점 변경시 시작시점과 비교
 	var s = $('#sterm');
 	var e = $('#eterm');
 	
 	e.change(function(){
 		
 		if( s.val() == "" || s.val() == null ){
 			
 			alert('시작 시점을 먼저 선택해주세요.')
 			e.val("");
 			
 		} else {
 			
 			if( e.val() < s.val() ){
 				
 	 			alert('종료 시점은 시작 시점보다 빠를 수 없습니다.')
 	 			e.val("");
 			}
 		}
 	});
 	
 	
 	//종료시간 변경시 시작시간과 비교
 	var st = $('#stime');
 	var et = $('#etime');
 	
 	et.change(function(){
 		
 		console.log(st.val())
 		console.log(et.val())
 		
 		if( st.val() == "" || st.val() == null ){
 			
 			alert('시작 시간을 먼저 선택해주세요.')
 			et.val("");
 			
 		} else {
 			
 			if( et.val() < st.val() ){
 				
 	 			alert('종료 시간은 시작 시간보다 빠를 수 없습니다.')
 	 			et.val("");
 			}
 		}
 	});
 	
 	//폼 전송버튼, 취소 버튼
 	$('#post').click(function(){
 		
 		$('#form').submit()
 	});
 	
 	$('#cancle').click(function(){
 		
 		$(location).attr('href', '/center/volunteer/list');
 	});
 	
 	
});

</script>

<style>
    .title {font-weight:bold;display:block;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>

<div class="container">

	<form action="/center/volunteer/write" method="post" id="form" style="padding: 30px 50px;">
		<div class="form-group">
			<label for="title">제목</label>
			<input type="text" id="title" class="form-control" name="vol_title" required="required">
		</div><br>
		
		활동기간
		<div class="row">
			<div class="col">
				<input type="date" class="form-control" name="vol_sterm" id="sterm" required="required"> 
			</div>
			~
			<div class="col">
				<input type="date" class="form-control" name="vol_eterm" id="eterm" required="required">
			</div>
		</div><br>
		
		활동시간
		<div class="row">
			<div class="col">
				<input type="time" class="form-control" name="stime" id="stime" required="required"> 
			</div>
			~
			<div class="col">
				<input type="time" class="form-control" name="etime" id="etime" required="required">
			</div>
		</div><br>	
			
		활동분야
		<div>
			<select name="department" class="form-control">
				<option value="1">시설봉사</option>
				<option value="2">재가봉사</option>
				<option value="3">전문봉사</option>
				<option value="4">지역사회봉사</option>
				<option value="5">금,물품봉사</option>
				<option value="6">해외봉사</option>
				<option value="7">헌혈</option>
				<option value="8">기타봉사</option>
			</select>
		</div><br>	
				
			
		봉사지역
		<div class="row">
			<div class="col">
				<select name='area' class="form-control">
					<option value='1'>서울</option>
					<option value='2'>부산</option>
					<option value='3'>대구</option>
					<option value='4'>인천</option>
					<option value='5'>광주</option>
					<option value='6'>대전</option>
					<option value='7'>울산</option>
					<option value='8'>세종</option>
					<option value='9'>경기</option>
					<option value='10'>강원</option>
					<option value='11'>충북</option>
					<option value='12'>충남</option>
					<option value='13'>전북</option>
					<option value='14'>전남</option>
					<option value='15'>경북</option>
					<option value='16'>경남</option>
					<option value='17'>제주</option>
				</select>
			</div>
			
			<div class="col">	
				<select id="area" name="vol_area" class="form-control">
					<option value="0101">종로구</option>
					<option value="0102">중구</option>
					<option value="0103">용산구</option>
					<option value="0104">성동구</option>
					<option value="0105">광진구</option>
					<option value="0106">동대문구</option>
					<option value="0107">중랑구</option>
					<option value="0108">성북구</option>
					<option value="0109">강북구</option>
					<option value="0110">도봉구</option>
					<option value="0111">노원구</option>
					<option value="0112">은평구</option>
					<option value="0113">서대문구</option>
					<option value="0114">마포구</option>
					<option value="0115">양천구</option>
					<option value="0116">강서구</option>
					<option value="0117">구로구</option>
					<option value="0118">금천구</option>
					<option value="0119">영등포구</option>
					<option value="0120">동작구</option>
					<option value="0121">관악구</option>
					<option value="0122">서초구</option>
					<option value="0123">강남구</option>
					<option value="0124">송파구</option>
					<option value="0125">강동구</option>
				</select>
			</div>
		</div><br>	
			
		<div id="map" style="width:500px;height:400px;margin:50px auto;"></div><br>
				
		<div>
			<label for="place">봉사장소</label>
			<input type="text" id="place" name="vol_place" required="required" class="form-control">
		</div><br>		
		
		<div>
			<label for="receiver">봉사대상</label>
			<input type="text" id="receiver" name="receiver" required="required" class="form-control">
		</div><br>	
		
		<div>
			<label for="qualification">지원자격</label>
			<input type="text" id="qualification" name="qualification" required="required" class="form-control">
		</div><br>
		
		<div>
			<textarea rows="500px" cols="00px" name="vol_content" id="editor1" required="required"></textarea>
		</div><br>
		
		<div>
			<label for="npeople">필요인원</label>
			<input type="number" id="npeople" name="npeople" min="1" max="100" required="required" class="form-control">
		</div><br>
		
		<input id='lat' type='hidden' name='vol_lat' required="required">
		<input id='lng' type='hidden' name='vol_lng' required="required">
		<input id='address' type='hidden' name='vol_address' required="required">
		
	</form>
	
	<button class="btn btn-secondary" id="post">작성</button>
	<button class="btn btn-danger" id="cancle">취소</button>

</div>

	<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82300581f28915a67d685b53b5de8fe6&libraries=services,clusterer,drawing"></script>
	
	<script>
		
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(37.5530016684289, 126.97263557634193), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	// 주소-좌표 변환 객체를 생성합니다
	var geocoder = new kakao.maps.services.Geocoder();
	
	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({ 
	    // 지도 중심좌표에 마커를 생성합니다 
	    position: map.getCenter() 
	}),
	infowindow = new kakao.maps.InfoWindow({zindex:1}); // 클릭한 위치에 대한 주소를 표시할 인포윈도우입니다
	
	// 지도에 마커를 표시합니다
	marker.setMap(map);
	
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

	// 지도에 클릭 이벤트를 등록합니다
	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {
		
		searchDetailAddrFromCoords(mouseEvent.latLng, function(result, status) {
	        if (status === kakao.maps.services.Status.OK) {
	            var detailAddr = !!result[0].road_address ? '<div>도로명주소 : ' + result[0].road_address.address_name + '</div>' : '';
	            detailAddr += '<div>지번 주소 : ' + result[0].address.address_name + '</div>';
	            
	            var content = '<div class="bAddr">' +
	                            '<span class="title">선택한 주소정보</span>' + 
	                            detailAddr + 
	                        '</div>';
	                        
	           	if(result[0].road_address != null){
	           		
		            $('#address').val(result[0].road_address.address_name);
	          
	           	} else {
	           			           		
					$('#address').val(result[0].address.address_name);
	           	}


				
	            // 마커를 클릭한 위치에 표시합니다 
	            marker.setPosition(mouseEvent.latLng);
	            marker.setMap(map);

	            // 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	            infowindow.setContent(content);
	            infowindow.open(map, marker);
	        }   
	    });
	    
	// 클릭한 위도, 경도 정보를 가져옵니다 
	var latlng = mouseEvent.latLng;
	
	$('#lat').val(latlng.getLat());
	$('#lng').val(latlng.getLng());
	    
	});
	
	function searchDetailAddrFromCoords(coords, callback) {
		
		// 좌표로 법정동 상세 주소 정보를 요청합니다
	    geocoder.coord2Address(coords.getLng(), coords.getLat(), callback);
	}

	
// 	//지역 변경시 지도이동
// 	$('#area').change(function(){
		
// 		if( $(this).val() == 0101) {
			
// 		}
// 	});
	
	</script>
	
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>