<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<title>Insert title here</title>

<style>
    .title {font-weight:bold;display:block;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>

</head>
<body>

	<h1>봉사활동</h1>
	<hr>

	<table>
		<tr>
			<th>${vol.vol_title }</th>
		</tr>
		<tr>
			<th>활동기간</th>
			<td>${vol.vol_sterm }~ ${vol.vol_eterm }</td>
		</tr>
		<tr>
			<th>활동시간</th>
			<td>${vol.stime } ~ ${vol.etime }</td>
		</tr>
		<tr>
			<th>활동분야</th>
			<td><c:choose>
					<c:when test="${vol.department eq 1 }">시설봉사</c:when>
					<c:when test="${vol.department eq 2 }">재가봉사</c:when>
					<c:when test="${vol.department eq 3 }">전문봉사</c:when>
					<c:when test="${vol.department eq 4 }">지역사회봉사</c:when>
					<c:when test="${vol.department eq 5 }">금,물품봉사</c:when>
					<c:when test="${vol.department eq 6 }">해외봉사</c:when>
					<c:when test="${vol.department eq 7 }">헌혈</c:when>
					<c:when test="${vol.department eq 8 }">기타봉사</c:when>
				</c:choose></td>
		</tr>
		<tr>
			<th>봉사지역</th>
			<td>${vol.aname }</td>
			
		</tr>
		<tr>
			<th>봉사장소</th>
			<td>${vol.vol_place }</td>
		</tr>
		<tr>
			<th>봉사대상</th>
			<td>${vol.receiver }</td>
		</tr>
		<tr>
			<th>지원자격</th>
			<td>${vol.qualification }</td>
		</tr>
		<tr>
			<th>내용</th>
			<td>${vol.vol_content }</td>
		</tr>
		<tr>
			<th>필요/신청인원</th>
			<td>${vol.npeople }/${vol.apeople }</td>
		</tr>
		<tr>
			<th>담당자</th>
			<td>${vol.mgr }</td>
			<th>이메일</th>
			<td>${vol.memail }</td>
			<th>연락처</th>
			<td>${vol.mphone }</td>
		</tr>
	</table>
	
	<div id="map" style="width:500px;height:400px;"></div>
	<div id="clickLatlng"></div>
	
	
	
	<br>
	<a href="/center/volunteer/list"><button>목록</button></a> 
	<a href="/center/volunteer/update?volunteerno=${vol.volunteerno }"><button>수정</button></a> 
	<a href="/center/volunteer/delete?volunteerno=${vol.volunteerno }"><button>삭제</button></a>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82300581f28915a67d685b53b5de8fe6&libraries=services,clusterer,drawing"></script>

<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng(${vol.vol_lat}, ${vol.vol_lng}), //지도의 중심좌표.
		level: 3 //지도의 레벨(확대, 축소 정도)
	};
	
	var map = new kakao.maps.Map(container, options); //지도 생성 및 객체 리턴
	
	// 지도를 클릭한 위치에 표출할 마커입니다
	var marker = new kakao.maps.Marker({ 
	    // 지도 중심좌표에 마커를 생성합니다 
	    position: map.getCenter() 
	})
	infowindow = new kakao.maps.InfoWindow({zindex:1});
	
	// 지도에 마커를 표시합니다
	marker.setMap(map);
	
    var content = '<div class="bAddr">' +
					'<span class="title">주소정보</span>${vol.vol_address}</div>';
					
	// 인포윈도우에 클릭한 위치에 대한 법정동 상세 주소정보를 표시합니다
	infowindow.setContent(content);
	infowindow.open(map, marker);
	
	// 일반 지도와 스카이뷰로 지도 타입을 전환할 수 있는 지도타입 컨트롤을 생성합니다
	var mapTypeControl = new kakao.maps.MapTypeControl();

	// 지도에 컨트롤을 추가해야 지도위에 표시됩니다
	// kakao.maps.ControlPosition은 컨트롤이 표시될 위치를 정의하는데 TOPRIGHT는 오른쪽 위를 의미합니다
	map.addControl(mapTypeControl, kakao.maps.ControlPosition.TOPRIGHT);

	// 지도 확대 축소를 제어할 수 있는  줌 컨트롤을 생성합니다
	var zoomControl = new kakao.maps.ZoomControl();
	map.addControl(zoomControl, kakao.maps.ControlPosition.RIGHT);

// 	// 지도에 클릭 이벤트를 등록합니다
// 	// 지도를 클릭하면 마지막 파라미터로 넘어온 함수를 호출합니다
// 	kakao.maps.event.addListener(map, 'click', function(mouseEvent) {        
	    
// 	// 클릭한 위도, 경도 정보를 가져옵니다 
// 	var latlng = mouseEvent.latLng; 
	    
// 	// 마커 위치를 클릭한 위치로 옮깁니다
// 	marker.setPosition(latlng);
	    
// 	var message = '클릭한 위치의 위도는 ' + latlng.getLat() + ' 이고, ';
// 	message += '경도는 ' + latlng.getLng() + ' 입니다';
	    
// 	var resultDiv = document.getElementById('clickLatlng'); 
// 	resultDiv.innerHTML = message;
	    
// 	});

</script>

</body>
</html>