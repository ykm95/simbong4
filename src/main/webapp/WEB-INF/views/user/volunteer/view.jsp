<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/functions" prefix="fn"%>

<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<style>
    .title {font-weight:bold;display:block;}
    .bAddr {padding:5px;text-overflow: ellipsis;overflow: hidden;white-space: nowrap;}
</style>


<script type="text/javascript">
$(document).ready(function() {
	//목록버튼 동작
	$("#btnList").click(function() {
		
		location.href="/user/volunteer/list";
	});
	
	$("#btnApplicant2").click(function() {
		
		var result = confirm("로그인 후 이용가능합니다.");
		
		if(result==true){
			$(location).attr("href", "/user/login/login");
		}

	});
	

	if(${isApplicant}) {
		
		$("#btnApplicant")
			.removeClass("btn-warning")
			.addClass("btn-primary")
			.html('신청 취소');
		} 
	else {
		$("#btnApplicant")
			.removeClass("btn-primary")
			.addClass("btn-warning")
			.html('신청');
		}

});
</script>

<script type="text/javascript">
$(document).ready(function() {
	$("#btnApplicant").click(function() {
	$.ajax({
		type: "get"
		, url: "/user/volunteer/view_ok"
		, data: { "volunteerno": '${vol.volunteerno }' }
		, dataType: "json"
		, success: function( res ) {
			console.log("성공")
			console.log( res.select )
			
			if(res.cnt > res.npeople) {
				alert("인원초과입니다.")
			} else {
			
			//true인 경우 -> 이미 추천한 적이 있는 경우
			if(res.select){
				$("#btnApplicant")
				.removeClass("btn-primary")
				.addClass("btn-warning")
				.html('신청');
			}
			
			//false -> 추천한적 없는 경우
			else{
				$("#btnApplicant")
				.removeClass("btn-warning")
				.addClass("btn-primary")
				.html('신청 취소');
			
				alert("신청완료되었습니다.")
			
			}
	
			$("#aplno").html(res.cnt);
		
			}
		}
		, error: function() {
			console.log("실패")
			alert("로그인 후 사용 가능합니다.");
		}
	
		});
	});
}); 

</script>
  	
  	<div class="container" style="margin: 30px auto">  

  		<div style="width: 70%; margin: 0 auto;">  
  			<h1>${vol.vol_title }</h1>  
  		</div>  

	<div style="width: 70%; margin: 0 auto; text-align:end;">
    	<c:choose>
			<c:when test="${!empty loginid }" ><button id="btnApplicant" class="btn-warning">신청</button></c:when>
			<c:when test="${empty loginid }" ><button id="btnApplicant2" class="btn-warning">신청</button></c:when>
		</c:choose>
	</div>


  		<table class="table" style="width: 70%; margin: 0 auto; margin-top:20px;">  
		
  			<tr>  
  				<td colspan="1" style="background: #CCC">활동기간</td>  
  				<td colspan="3" style="text-align: center;">${vol.vol_sterm }~ ${vol.vol_eterm }</td>  
  			</tr>  
		
		
  			<tr>  
  				<td style="background: #CCC">활동시간</td>  
  				<td style="text-align: center;">${vol.stime } ~ ${vol.etime }</td>  
  				<td style="background: #CCC">활동분야</td>  
  				<td style="text-align: center;">${vol.departname }</td>  
  			</tr>  
		
  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사장소</td>  
  				<td colspan="3" style="text-align: center">${vol.aname }</td>  
  			</tr>  
			
  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사대상</td>  
  				<td colspan="3" style="text-align: center">${vol.receiver }</td>  
  			</tr>  
	
  			<tr>  
  				<td colspan="1" style="background: #CCC">지원자격</td>  
  				<td colspan="3" style="text-align: center">${vol.qualification }</td>  
  			</tr>  
		
  			<tr>  
  				<td colspan="1" style="background: #CCC">필요/신청인원</td>  
  				<td colspan="3" style="text-align: center">${vol.npeople }/<span id="aplno">${vol.apeople }</span></td>  
  			</tr>  
	
  			<tr>  
  				<td colspan="1" style="background: #CCC">봉사지역</td>  
  				<td colspan="3" style="text-align: center">${vol.aname }</td>  
  			</tr>  
  
  		</table>  
 

  		<div id="map" style="width:600px;height:500px;margin:30px auto;"></div>  

  		<br><br><br>  
		
		<div  style="width: 70%; margin: 0 auto;">
		내용
		<table class="table table-bordered" >
			<tr>
				<td >${vol.vol_content }</td>
			</tr>
		</table>
		</div>
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
		<h6 style="color: red;">* 신청자의 전화번호와 이메일은 본 게시물을 작성한 담당자만 조회가 가능합니다.</h6>
		<table class="table">
		<tr>
			<th>번호</th>
			<th>이름</th>
			<th>이메일</th>
			<th>전화번호</th>
			<th>등록일</th>
		</tr>
		
		<c:forEach items="${apllist }" var="list" varStatus="status">
			<tr>
				<td>${status.count }</td>
				<td id="uname">${fn:replace(list.uname, fn:substring(list.uname, 1, 1), '*')}</td>
				<td id="uemail">${fn:replace(list.uemail, fn:substring(list.uemail, 3, 8), '*****')}</td>
				<td id="uphone">${fn:replace(list.uphone, fn:substring(list.uphone, 3, 7), '****')}</td>
				<td><fmt:formatDate value="${list.write_date }"  pattern="yyyy.MM.dd"/></td>
			</tr>
			</c:forEach>
		</table>
		
  		<br>  
  		<div class="text-right">
		<button id="btnList" class="btn btn-primary">목록</button>
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


  <jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>  