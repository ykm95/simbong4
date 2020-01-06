
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" buffer="8192kb" %>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>


<script>
	$(document)
			.ready(
					function() {

						// 글작성 버튼
						$("#btnWrite").click(function() {
						      
							$(location).attr("href", "/user/talent/write");
					   })
						
						// 초기화 버튼
						$("#resetForm").click(function() {
							$("#searchForm").each(function() {
								this.reset();
							});
						});

						// 전체선택 버튼
						$("#t_cycleAll").click(
								function() {
									if ($("#t_cycleAll").prop("checked")) {
										$("input[type=checkbox]").prop(
												"checked", true);
									} else {
										$("input[type=checkbox]").prop(
												"checked", false);
									}
								});

						$("#searchForm").on("change", "select[name='srcArea']", function() {
// 						$("select[name='srcArea']")
// 								.change(
// 										function() {
											if ($(this).val() == '1') {
												$("#t_area")
														.html(
																"<option value='1'>서울특별시 종로구</option><option value='2'>서울특별시 중구</option><option value='3'>서울특별시 용산구</option><option value='4'>서울특별시 성동구</option><option value='5'>서울특별시 광진구</option><option value='6'>서울특별시 동대문구</option><option value='7'>서울특별시 중랑구</option><option value='8'>서울특별시 성북구</option><option value='9'>서울특별시 강북구</option><option value='10'>서울특별시 도봉구</option><option value='11'>서울특별시 노원구</option><option value='12'>서울특별시 은평구</option><option value='13'>서울특별시 서대문구</option><option value='14'>서울특별시 마포구</option><option value='15'>서울특별시 양천구</option><option value='16'>서울특별시 강서구</option><option value='17'>서울특별시 구로구</option><option value='18'>서울특별시 금천구</option><option value='19'>서울특별시 영등포구</option><option value='20'>서울특별시 동작구</option><option value='21'>서울특별시 관악구</option><option value='22'>서울특별시 서초구</option><option value='23'>서울특별시 강남구</option><option value='24'>서울특별시 송파구</option><option value='25'>서울특별시 강동구</option>");
											} else if ($(this).val() == '2') {
												$("#t_area")
														.html(
																"<option value='26'>부산광역시 중구</option><option value='27'>부산광역시 서구</option><option value='28'>부산광역시 동구</option><option value='29'>부산광역시 영도구</option><option value='30'>부산광역시 부산진구</option><option value='31'>부산광역시 동래구</option><option value='32'>부산광역시 남구</option><option value='33'>부산광역시 북구</option><option value='34'>부산광역시 해운대구</option><option value='35'>부산광역시 사하구</option><option value='36'>부산광역시 금정구</option><option value='37'>부산광역시 강서구</option><option value='38'>부산광역시 연제구</option><option value='39'>부산광역시 수영구</option><option value='40'>부산광역시 사상구</option><option value='41'>부산광역시 기장군</option>");
											} else if ($(this).val() == '3') {
												$("#t_area")
														.html(
																"<option value='42'>대구광역시 중구</option><option value='43'>대구광역시 동구</option><option value='44'>대구광역시 서구</option><option value='45'>대구광역시 남구</option><option value='46'>대구광역시 북구</option><option value='47'>대구광역시 수성구</option><option value='48'>대구광역시 달서구</option><option value='49'>대구광역시 달성군</option>");
											} else if ($(this).val() == '4') {
												$("#t_area")
														.html(
																"<option value='50'>인천광역시 중구</option><option value='51'>인천광역시 동구</option><option value='52'>인천광역시 미추홀구</option><option value='53'>인천광역시 연수구</option><option value='54'>인천광역시 남동구</option><option value='55'>인천광역시 부평구</option><option value='56'>인천광역시 계양구</option><option value='57'>인천광역시 서구</option><option value='58'>인천광역시 강화군</option><option value='59'>인천광역시 옹진군</option>");
											} else if ($(this).val() == '5') {
												$("#t_area")
														.html(
																"<option value='60'>광주광역시 동구</option><option value='61'>광주광역시 서구</option><option value='62'>광주광역시 남구</option><option value='63'>광주광역시 북구</option><option value='64'>광주광역시 광산구</option>");
											} else if ($(this).val() == '6') {
												$("#t_area")
														.html(
																"<option value='65'>대전광역시 동구</option><option value='66'>대전광역시 중구</option><option value='67'>대전광역시 서구</option><option value='68'>대전광역시 유성구</option><option value='69'>대전광역시 대덕구</option>");
											} else if ($(this).val() == '7') {
												$("#t_area")
														.html(
																"<option value='70'>울산광역시 중구</option><option value='71'>울산광역시 남구</option><option value='72'>울산광역시 동구</option><option value='73'>울산광역시 북구</option><option value='74'>울산광역시 울주군</option>");
											} else if ($(this).val() == '8') {
												$("#t_area")
														.html(
																"<option value='75'>세종특별자치시 연기면</option><option value='76'>세종특별자치시 연동면</option><option value='77'>세종특별자치시 부강면</option><option value='78'>세종특별자치시 금남면</option><option value='79'>세종특별자치시 장군면</option><option value='80'>세종특별자치시 연서면</option><option value='81'>세종특별자치시 전의면</option><option value='82'>세종특별자치시 전동면</option><option value='83'>세종특별자치시 소정면</option>");
											} else if ($(this).val() == '9') {
												$("#t_area")
														.html(
																"<option value='84'>경기도 수원시</option><option value='85'>경기도 수원시 장안구</option><option value='86'>경기도 수원시 권선구</option><option value='87'>경기도 수원시 팔달구</option><option value='88'>경기도 수원시 영통구</option><option value='89'>경기도 성남시</option><option value='90'>경기도 성남시 수정구</option><option value='91'>경기도 성남시 중원구</option><option value='92'>경기도 성남시 분당구</option><option value='93'>경기도 의정부시</option><option value='94'>경기도 안양시</option><option value='95'>경기도 안양시 만안구</option><option value='96'>경기도 안양시 동안구</option><option value='97'>경기도 부천시</option><option value='98'>경기도 광명시</option><option value='99'>경기도 평택시</option><option value='100'>경기도 동두천시</option><option value='101'>경기도 안산시</option><option value='102'>경기도 안산시 상록구</option><option value='103'>경기도 안산시 단원구</option><option value='104'>경기도 고양시</option><option value='105'>경기도 고양시 덕양구</option><option value='106'>경기도 고양시 일산동구</option><option value='107'>경기도 고양시 일산서구</option><option value='108'>경기도 과천시</option><option value='109'>경기도 구리시</option><option value='110'>경기도 남양주시</option><option value='111'>경기도 오산시</option><option value='112'>경기도 시흥시</option><option value='113'>경기도 군포시</option><option value='114'>경기도 의왕시</option><option value='115'>경기도 하남시</option><option value='116'>경기도 용인시</option><option value='117'>경기도 용인시 처인구</option><option value='118'>경기도 용인시 기흥구</option><option value='119'>경기도 용인시 수지구</option><option value='120'>경기도 파주시</option><option value='121'>경기도 이천시</option><option value='122'>경기도 안성시</option><option value='123'>경기도 김포시</option><option value='124'>경기도 화성시</option><option value='125'>경기도 광주시</option><option value='126'>경기도 양주시</option><option value='127'>경기도 포천시</option><option value='128'>경기도 여주시</option><option value='129'>경기도 연천군</option><option value='130'>경기도 가평군</option><option value='131'>경기도 양평군</option>");
											} else if ($(this).val() == '10') {
												$("#t_area")
														.html(
																"<option value='132'>강원도 춘천시</option><option value='133'>강원도 원주시</option><option value='134'>강원도 강릉시</option><option value='135'>강원도 동해시</option><option value='136'>강원도 태백시</option><option value='137'>강원도 속초시</option><option value='138'>강원도 삼척시</option><option value='139'>강원도 홍천군</option><option value='140'>강원도 횡성군</option><option value='141'>강원도 영월군</option><option value='142'>강원도 평창군</option><option value='143'>강원도 정선군</option><option value='144'>강원도 철원군</option><option value='145'>강원도 화천군</option><option value='146'>강원도 양구군</option><option value='147'>강원도 인제군</option><option value='148'>강원도 고성군</option><option value='149'>강원도 양양군</option>");
											} else if ($(this).val() == '11') {
												$("#t_area")
														.html(
																"<option value='150'>충청북도 청주시</option><option value='151'>충청북도 청주시 상당구</option><option value='152'>충청북도 청주시 서원구</option><option value='153'>충청북도 청주시 흥덕구</option><option value='154'>충청북도 청주시 청원구</option><option value='155'>충청북도 충주시</option><option value='156'>충청북도 제천시</option><option value='157'>충청북도 보은군</option><option value='158'>충청북도 옥천군</option><option value='159'>충청북도 영동군</option><option value='160'>충청북도 증평군</option><option value='161'>충청북도 진천군</option><option value='162'>충청북도 괴산군</option><option value='163'>충청북도 음성군</option><option value='164'>충청북도 단양군</option>");
											} else if ($(this).val() == '12') {
												$("#t_area")
														.html(
																"<option value='165'>충청남도 천안시</option><option value='166'>충청남도 공주시</option><option value='167'>충청남도 보령시</option><option value='168'>충청남도 아산시</option><option value='169'>충청남도 서산시</option><option value='170'>충청남도 논산시</option><option value='171'>충청남도 계룡시</option><option value='172'>충청남도 당진시</option><option value='173'>충청남도 금산군</option><option value='174'>충청남도 부여군</option><option value='175'>충청남도 서천군</option><option value='176'>충청남도 청양군</option><option value='177'>충청남도 홍성군</option><option value='178'>충청남도 예산군</option><option value='179'>충청남도 태안군</option>");
											} else if ($(this).val() == '13') {
												$("#t_area")
														.html(
																"<option value='180'>전라북도 전주시</option><option value='181'>전라북도 전주시 완산구</option><option value='182'>전라북도 전주시 덕진구</option><option value='183'>전라북도 군산시</option><option value='184'>전라북도 익산시</option><option value='185'>전라북도 정읍시</option><option value='186'>전라북도 남원시</option><option value='187'>전라북도 김제시</option><option value='188'>전라북도 완주군</option><option value='189'>전라북도 진안군</option><option value='190'>전라북도 무주군</option><option value='191'>전라북도 장수군</option><option value='192'>전라북도 임실군</option><option value='193'>전라북도 순창군</option><option value='194'>전라북도 고창군</option><option value='195'>전라북도 부안군</option>");
											} else if ($(this).val() == '14') {
												$("#t_area")
														.html(
																"<option value='196'>전라남도 목포시</option><option value='197'>전라남도 여수시</option><option value='198'>전라남도 순천시</option><option value='199'>전라남도 나주시</option><option value='200'>전라남도 광양시</option><option value='201'>전라남도 담양군</option><option value='202'>전라남도 곡성군</option><option value='203'>전라남도 구례군</option><option value='204'>전라남도 고흥군</option><option value='205'>전라남도 보성군</option><option value='206'>전라남도 화순군</option><option value='207'>전라남도 장흥군</option><option value='208'>전라남도 강진군</option><option value='209'>전라남도 해남군</option><option value='210'>전라남도 영암군</option><option value='211'>전라남도 무안군</option><option value='212'>전라남도 함평군</option><option value='213'>전라남도 영광군</option><option value='214'>전라남도 장성군</option><option value='215'>전라남도 완도군</option><option value='216'>전라남도 진도군</option><option value='217'>전라남도 신안군</option>");
											} else if ($(this).val() == '15') {
												$("#t_area")
														.html(
																"<option value='218'>경상북도 포항시</option><option value='219'>경상북도 포항시 남구</option><option value='220'>경상북도 포항시 북구</option><option value='221'>경상북도 경주시</option><option value='222'>경상북도 김천시</option><option value='223'>경상북도 안동시</option><option value='224'>경상북도 구미시</option><option value='225'>경상북도 영주시</option><option value='226'>경상북도 영천시</option><option value='227'>경상북도 상주시</option><option value='228'>경상북도 문경시</option><option value='229'>경상북도 경산시</option><option value='230'>경상북도 군위군</option><option value='231'>경상북도 의성군</option><option value='232'>경상북도 청송군</option><option value='233'>경상북도 영양군</option><option value='234'>경상북도 영덕군</option><option value='235'>경상북도 청도군</option><option value='236'>경상북도 고령군</option><option value='237'>경상북도 성주군</option><option value='238'>경상북도 칠곡군</option><option value='239'>경상북도 예천군</option><option value='240'>경상북도 봉화군</option><option value='241'>경상북도 울진군</option><option value='242'>경상북도 울릉군</option>");
											} else if ($(this).val() == '16') {
												$("#t_area")
														.html(
																"<option value='243'>경상남도 창원시</option><option value='244'>경상남도 진주시</option><option value='245'>경상남도 통영시</option><option value='246'>경상남도 사천시</option><option value='247'>경상남도 김해시</option><option value='248'>경상남도 밀양시</option><option value='249'>경상남도 거제시</option><option value='250'>경상남도 양산시</option><option value='251'>경상남도 의령군</option><option value='252'>경상남도 함안군</option><option value='253'>경상남도 창녕군</option><option value='254'>경상남도 고성군</option><option value='255'>경상남도 남해군</option><option value='256'>경상남도 하동군</option><option value='257'>경상남도 산청군</option><option value='258'>경상남도 함양군</option><option value='259'>경상남도 거창군</option><option value='260'>경상남도 합천군</option>");
											} else if ($(this).val() == '17') {
												$("#t_area")
														.html(
																"<option value='261'>제주특별자치도 제주시</option><option value='262'>제주특별자치도 서귀포시</option>");
											} else if ($(this).val() == '') {
												$("#t_area")
														.html(
																"<option value='0'>선택</option>");
											}
											$("#t_area").removeAttr(
													"disabled");
										});

						$("#searchForm").on("change", "select[name='srcDepart']", function() {
// 						$("select[name='srcDepart']")
// 								.change(
// 										function() {
											if ($(this).val() == '1') {
												$("#t_department")
														.html(
																"<option value='0'>선택</option><option value='1'> 또래상담</option><option value='2'> 대학생 - 중·고생 멘토링</option><option value='3'> 검정고시 대비반 멘토링(학교 밖 청소년 등)</option><option value='4'> 수학</option><option value='5'> 영어</option><option value='6'> 사회, 과학 등 기타과목</option><option value='7'> 요리</option><option value='8'> 진로</option><option value='9'> 언어</option><option value='10'> 컴퓨터</option><option value='11'> 경제,금융</option>");

											} else if ($(this).val() == '2') {
												$("#t_department")
														.html(
																"<option value='0'>선택</option><option value='12'> 영상 편집</option><option value='13'> 언어지원</option><option value='14'> 의료지원</option><option value='15'> 기사작성</option><option value='16'> 디자인</option><option value='17'> 미용</option><option value='18'> 노래</option><option value='19'> 댄스</option><option value='20'> 스포츠(e스포츠)</option><option value='21'> 미술</option><option value='22'> 악기연주</option>");
											} else if ($(this).val() == '3') {
												$("#t_department")
														.html(
																"<option value='0'>선택</option><option value='23'> 체험관</option><option value='24'> 과학관</option><option value='25'> 미술관</option><option value='26'> 박물관</option><option value='27'> 기타 지역사회 시설</option>");
											} else if ($(this).val() == '') {
												$("#t_department")
														.html(
																"<option value='0'>선택</option>");
											}
											$("#t_department").removeAttr(
													"disabled");

											$("#t_department").removeAttr("disabled");
											
											});
						

						
						//종료시점 변경시 시작시점과 비교
					    var s = $('#t_start');
					    var e = $('#t_end');
					    
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
<script type="text/javascript">
function getUrlParams() {
	var params = {};
	location.search.replace(/[?&]+([^=&]+)=([^&]*)/gi, function(str, key, value) {
		(params[key]) ?params[key]+=","+value :params[key]=value;
	});
	return params;
}
	
$(document).ready(function() {
	//활동영역
	$("#srcDepart").prop("value","${param.srcDepart}");
	$("#srcDepart").change();	//활동영역 세부 활성화
	$("#t_department").prop("value","${param.t_department}");	//활동영역 세부

	//활동지역
	$("#srcArea").prop("value","${param.srcArea}");
	$("#srcArea").change();	//활동지역 세부 활성화
	$("#t_area").prop("value","${param.t_area}");	//활동지역 세부
	
	//활동일자
	$("#t_start").prop("value","${param.t_start}");
	$("#t_end").prop("value","${param.t_end}");

	//활동명
	$("#t_title").prop("value","${param.t_title}");
	
	//봉사유형
	$("input[type='radio'][name='t_type'][value='${param.t_type}']").prop("checked", true);

	//봉사주기
	var oParams = getUrlParams();
	var pArr = oParams.t_cycle.split(",");
	for( var i=0; i<pArr.length; i++ ) {
		pArr[i] = decodeURI(pArr[i])
		$("input[type='checkbox'][name='t_cycle'][value='"+pArr[i]+"']").prop("checked", true);
	}

	//상태
	$("input[type='radio'][name='t_process'][value='${param.t_process}']").prop("checked", true);

});
</script>

	<form action="/user/talent/list" method="get" id="searchForm">
		<div>
			<table
				style="width: 100%; padding: 0px; border-spacing: 0px; border: 0px;">
				<caption>재능기부 찾기</caption>
				<colgroup>
					<col style="width: 10%;">
					<col style="width: 40%;">
					<col style="width: 10%;">
					<col style="width: 40%;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">활동영역</th>
						<td><select id="srcDepart" name="srcDepart" title="활동영역"
							style="width: 180px; height: 28px;">
								<option value="0">선택</option>

								<option value="1">교육(지도)봉사</option>

								<option value="2">재능봉사</option>

								<option value="3">문화봉사</option>

						</select> <select name="t_department" id="t_department"
							title="활동영역 세부" style="width: 180px; height: 28px;"
							disabled="disabled">
								<option value="0">선택</option>

						</select></td>

					</tr>
					<tr>
						<th scope="row">활동지역</th>
						<td><select  title="시도" name="srcArea" id="srcArea"
							style="width: 180px; height: 28px;">
								<option value="0">전체</option>
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
						</select> 
						<select name="t_area" id="t_area" title="시군구"
							style="width: 180px; height: 28px;" disabled="disabled">
								<option value="0">선택</option>
						</select></td>

						<th scope="row">봉사유형</th>
						<td style="line-height: 200%"><input name="t_type"
							title="전체" id="t_typeA" type="radio" value="0" checked="checked">&nbsp;<label
							for="t_typeA">전체</label> &nbsp; <input name="t_type" title="개인"
							id="t_typeI" type="radio" value="1">&nbsp;<label
							for="t_typeI">개인</label> &nbsp; <input name="t_type" title="단체"
							id="t_typeG" type="radio" value="2">&nbsp;<label
							for="t_typeG">단체</label> &nbsp;</td>

					</tr>
					<tr>
						<th scope="row">활동일자</th>
						<td><input name="t_start" title="시작일" id="t_start"
							style="width: 22.2%;" type="date" value=""> ~ <input
							name="t_end" title="종료일" id="t_end" style="width: 22.2%;"
							type="date" value=""></td>
						
						<th scope="row">봉사주기</th>
						<td><label><input id="t_cycleAll"
								type="checkbox" value="all" title="전체">&nbsp;전체</label>&nbsp;&nbsp;&nbsp;<label><input
								name="t_cycle" type="checkbox" value="월" title="월">&nbsp;월</label>&nbsp;&nbsp;<label><input
								name="t_cycle" type="checkbox" value="화" title="화">&nbsp;화</label>&nbsp;&nbsp;<label><input
								name="t_cycle" type="checkbox" value="수" title="수">&nbsp;수</label>&nbsp;&nbsp;<label><input
								name="t_cycle" type="checkbox" value="목" title="목">&nbsp;목</label>&nbsp;&nbsp;<label><input
								name="t_cycle" type="checkbox" value="금" title="금">&nbsp;금</label>&nbsp;&nbsp;<label><input
								name="t_cycle" type="checkbox" value="토" title="토">&nbsp;토</label>&nbsp;&nbsp;<label><input
								name="t_cycle" type="checkbox" value="일" title="일">&nbsp;일</label>&nbsp;&nbsp;</td>
					</tr>

					<tr>
						<th scope="row">활동 명</th>
						<td><input name="t_title" title="활동 명" id="t_title"
							style="width: 47.6%; height: 20px;" type="text" value=""></td>

						<th scope="row">상태</th>
						<td style="line-height: 200%"><input name="t_process"
							title="전체" id="processAll" type="radio" value="0" checked="checked">&nbsp;<label
							for="processAll">전체</label> &nbsp; <input name="t_process"
							title="신청가능" id="process1" type="radio" value="1"
							>&nbsp;<label for="process1">신청가능</label>
							&nbsp; <input name="t_process" title="마감" id="process2"
							type="radio" value="2">&nbsp;<label for="process2">마감</label>
							&nbsp;</td>
					</tr>
				</tbody>
			</table>
			<div>
				<button type="submit" style="width: 100px;">검색</button>
				<button id="resetForm" type="button">초기화</button>
			</div>
		</div>
	</form>
	
	<br><hr><br>
	<div>${count } 건의 검색결과가 있습니다.</div><br>
	
	<table>
	<c:forEach items="${list }" var="list">
	<tr>
   <td>${list.talentno } <a href="/user/talent/view?talentno=${list.talentno }" >${list.talent_title }</a>
   <fmt:formatDate value="${list.write_date }" pattern="yyyy.MM.dd"/>
   ${list.talent_area }  <br>
   <div>활동지역: ${list.talent_area } 활동기간: ${list.talent_start } ~ ${list.talent_end } 봉사주기: ${list.talent_cycle } 활동영역: ${list.department }</div>    
	</td>
	</tr>
	</c:forEach>
	</table>
	
	<button id="btnWrite">작성하기</button>
	
	<div>
	<jsp:include page="/WEB-INF/views/layout/t_paging.jsp" />
</div>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
