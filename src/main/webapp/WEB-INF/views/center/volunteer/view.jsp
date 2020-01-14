<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<script type="text/javascript">


</script>

<style>
    .title {font-weight:bold;display:block;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>

	<div class="container" style="margin: 30px auto; background-color: #FFF">

		<div style="padding: 30px 160px;">
			<h2>${vol.vol_title }</h2>
		</div>

		<table class="table" style="width: 70%; margin: 0 auto;">
		
			<tr>
				<td colspan="1" style="background: #CCC">활동기간</td>
				<td colspan="3" style="text-align: center;">${vol.vol_sterm }~ ${vol.vol_eterm }</td>
			</tr>
		
		
			<tr>
				<td style="background: #CCC">활동시간</td>
				<td style="text-align: center;">${vol.stime } ~ ${vol.etime }</td>
				<td style="background: #CCC">활동분야</td>
				<td style="text-align: center;"><c:choose>
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
		
		</table>
		
		<br><br><br>
		
		<table class="table" style="width: 70%; margin: 0 auto;">
			<tr>
				<td colspan="1" style="background: #CCC">봉사지역</td>
				<td colspan="3" style="text-align: center">${vol.aname }</td>
			</tr>
		</table>
		
		
		<div id="map" style="width:600px;height:500px;margin:30px auto;"></div>
		
		<table class="table" style="width: 70%; margin: 0 auto;">
		
			<tr>
				<td colspan="1" style="background: #CCC">봉사장소</td>
				<td colspan="3" style="text-align: center">${vol.vol_place }</td>
			</tr>
			
		
			<tr>
				<td colspan="1" style="background: #CCC">봉사대상</td>
				<td colspan="3" style="text-align: center">${vol.receiver }</td>
			</tr>
		</table>
	
		<br><br><br>
	
		<table class="table" style="width: 70%; margin: 0 auto;">
		
			<tr>
				<td colspan="1" style="background: #CCC">지원자격</td>
				<td colspan="3" style="text-align: center">${vol.qualification }</td>
			</tr>
		
		
			<tr>
				<td colspan="1" style="background: #CCC">내용</td>
				<td colspan="3" style="text-align: center">${vol.vol_content }</td>
			</tr>
		
		
			<tr>
				<td colspan="1" style="background: #CCC">필요/신청인원</td>
				<td colspan="3" style="text-align: center">${vol.npeople }/${vol.apeople }</td>
			</tr>
	
		</table>
		
		<br><br><br>
		
		<div style="text-align:center; width:800px;height:50px; background: #CCC; margin:10px auto">
			<div class="row" style="padding: 15px;">
				<div class="col">
					담당자 : ${vol.mgr }
				</div>
				<div class="col">
					이메일 : ${vol.memail }
				</div>
				<div class="col">
					연락처 : ${vol.mphone }
				</div>
			</div>		
		</div>
		
		<br><br><br>
		<table class="table" style="width: 70%; margin: 0 auto;">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>등록일</th>
			<th>승인여부</th>
		</tr>
		
		<c:forEach items="${list }" var="list" varStatus="v">
			<tr>
				<td>${v.count }</td>
				<td>${list.uname }</td>
				<td>${list.uemail }</td>
				<td>${list.uphone }</td>
				<td>
					<fmt:formatDate value="${list.write_date }" pattern="MM월 dd일"/>
				</td>
				<c:if test="${list.aprocess eq 0 }">
					<td>
						<a href="/center/approval?volunteerno=${vol.volunteerno }&applicantno=${list.applicantno }">
						<button id="approval" class="btn btn-primary">승인</button>
						</a>
					</td>
				</c:if>
				<c:if test="${list.aprocess eq 1 }">
					<td>
						<a href="/center/cancle?volunteerno=${vol.volunteerno }&applicantno=${list.applicantno }">
						<button id="cancle" class="btn btn-secondary">승인됨</button>
						</a>
					</td>
				</c:if>
				<c:if test="${list.aprocess eq 2 }">
					<td>
						<button id="cancle" class="btn btn-success">인증 완료</button>
					</td>
				</c:if>
			</tr>
			
			</c:forEach>
		</table>
		
		
		<br>
		<div style="margin: 0 150px;">
			<a href="/center/volunteer/list"><button class="btn btn-secondary" >목록</button></a> 
			<a href="/center/volunteer/update?volunteerno=${vol.volunteerno }"><button class="btn btn-secondary">수정</button></a> 
			<a href="/center/volunteer/delete?volunteerno=${vol.volunteerno }"><button class="btn btn-danger">삭제</button></a>
		</div>
		
	</div>

<script type="text/javascript" src="//dapi.kakao.com/v2/maps/sdk.js?appkey=82300581f28915a67d685b53b5de8fe6&libraries=services,clusterer,drawing"></script>

<script>
	var container = document.getElementById('map'); //지도를 담을 영역의 DOM 레퍼런스
	var options = { //지도를 생성할 때 필요한 기본 옵션
		center: new kakao.maps.LatLng( ${vol.vol_lat}, ${vol.vol_lng} ), //지도의 중심좌표.
		level: 6 //지도의 레벨(확대, 축소 정도)
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
	
</script>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>