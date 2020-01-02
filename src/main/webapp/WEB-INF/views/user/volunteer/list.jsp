<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<script>
	$(document)
			.ready(
					function() {

						// 초기화 버튼
						$("#resetForm").click(function() {
							$("#searchForm").each(function() {
								this.reset();
							});
						});

						$("select[name='srcArea']")
								.change(
										function() {
											if ($(this).val() == '1') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='1'>서울특별시 종로구</option><option value='2'>서울특별시 중구</option><option value='3'>서울특별시 용산구</option><option value='4'>서울특별시 성동구</option><option value='5'>서울특별시 광진구</option><option value='6'>서울특별시 동대문구</option><option value='7'>서울특별시 중랑구</option><option value='8'>서울특별시 성북구</option><option value='9'>서울특별시 강북구</option><option value='10'>서울특별시 도봉구</option><option value='11'>서울특별시 노원구</option><option value='12'>서울특별시 은평구</option><option value='13'>서울특별시 서대문구</option><option value='14'>서울특별시 마포구</option><option value='15'>서울특별시 양천구</option><option value='16'>서울특별시 강서구</option><option value='17'>서울특별시 구로구</option><option value='18'>서울특별시 금천구</option><option value='19'>서울특별시 영등포구</option><option value='20'>서울특별시 동작구</option><option value='21'>서울특별시 관악구</option><option value='22'>서울특별시 서초구</option><option value='23'>서울특별시 강남구</option><option value='24'>서울특별시 송파구</option><option value='25'>서울특별시 강동구</option>");
											} else if ($(this).val() == '2') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='26'>부산광역시 중구</option><option value='27'>부산광역시 서구</option><option value='28'>부산광역시 동구</option><option value='29'>부산광역시 영도구</option><option value='30'>부산광역시 부산진구</option><option value='31'>부산광역시 동래구</option><option value='32'>부산광역시 남구</option><option value='33'>부산광역시 북구</option><option value='34'>부산광역시 해운대구</option><option value='35'>부산광역시 사하구</option><option value='36'>부산광역시 금정구</option><option value='37'>부산광역시 강서구</option><option value='38'>부산광역시 연제구</option><option value='39'>부산광역시 수영구</option><option value='40'>부산광역시 사상구</option><option value='41'>부산광역시 기장군</option>");
											} else if ($(this).val() == '3') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='42'>대구광역시 중구</option><option value='43'>대구광역시 동구</option><option value='44'>대구광역시 서구</option><option value='45'>대구광역시 남구</option><option value='46'>대구광역시 북구</option><option value='47'>대구광역시 수성구</option><option value='48'>대구광역시 달서구</option><option value='49'>대구광역시 달성군</option>");
											} else if ($(this).val() == '4') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='50'>인천광역시 중구</option><option value='51'>인천광역시 동구</option><option value='52'>인천광역시 미추홀구</option><option value='53'>인천광역시 연수구</option><option value='54'>인천광역시 남동구</option><option value='55'>인천광역시 부평구</option><option value='56'>인천광역시 계양구</option><option value='57'>인천광역시 서구</option><option value='58'>인천광역시 강화군</option><option value='59'>인천광역시 옹진군</option>");
											} else if ($(this).val() == '5') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='60'>광주광역시 동구</option><option value='61'>광주광역시 서구</option><option value='62'>광주광역시 남구</option><option value='63'>광주광역시 북구</option><option value='64'>광주광역시 광산구</option>");
											} else if ($(this).val() == '6') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='65'>대전광역시 동구</option><option value='66'>대전광역시 중구</option><option value='67'>대전광역시 서구</option><option value='68'>대전광역시 유성구</option><option value='69'>대전광역시 대덕구</option>");
											} else if ($(this).val() == '7') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='70'>울산광역시 중구</option><option value='71'>울산광역시 남구</option><option value='72'>울산광역시 동구</option><option value='73'>울산광역시 북구</option><option value='74'>울산광역시 울주군</option>");
											} else if ($(this).val() == '8') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='75'>세종특별자치시 연기면</option><option value='76'>세종특별자치시 연동면</option><option value='77'>세종특별자치시 부강면</option><option value='78'>세종특별자치시 금남면</option><option value='79'>세종특별자치시 장군면</option><option value='80'>세종특별자치시 연서면</option><option value='81'>세종특별자치시 전의면</option><option value='82'>세종특별자치시 전동면</option><option value='83'>세종특별자치시 소정면</option>");
											} else if ($(this).val() == '9') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='84'>경기도 수원시</option><option value='85'>경기도 수원시 장안구</option><option value='86'>경기도 수원시 권선구</option><option value='87'>경기도 수원시 팔달구</option><option value='88'>경기도 수원시 영통구</option><option value='89'>경기도 성남시</option><option value='90'>경기도 성남시 수정구</option><option value='91'>경기도 성남시 중원구</option><option value='92'>경기도 성남시 분당구</option><option value='93'>경기도 의정부시</option><option value='94'>경기도 안양시</option><option value='95'>경기도 안양시 만안구</option><option value='96'>경기도 안양시 동안구</option><option value='97'>경기도 부천시</option><option value='98'>경기도 광명시</option><option value='99'>경기도 평택시</option><option value='100'>경기도 동두천시</option><option value='101'>경기도 안산시</option><option value='102'>경기도 안산시 상록구</option><option value='103'>경기도 안산시 단원구</option><option value='104'>경기도 고양시</option><option value='105'>경기도 고양시 덕양구</option><option value='106'>경기도 고양시 일산동구</option><option value='107'>경기도 고양시 일산서구</option><option value='108'>경기도 과천시</option><option value='109'>경기도 구리시</option><option value='110'>경기도 남양주시</option><option value='111'>경기도 오산시</option><option value='112'>경기도 시흥시</option><option value='113'>경기도 군포시</option><option value='114'>경기도 의왕시</option><option value='115'>경기도 하남시</option><option value='116'>경기도 용인시</option><option value='117'>경기도 용인시 처인구</option><option value='118'>경기도 용인시 기흥구</option><option value='119'>경기도 용인시 수지구</option><option value='120'>경기도 파주시</option><option value='121'>경기도 이천시</option><option value='122'>경기도 안성시</option><option value='123'>경기도 김포시</option><option value='124'>경기도 화성시</option><option value='125'>경기도 광주시</option><option value='126'>경기도 양주시</option><option value='127'>경기도 포천시</option><option value='128'>경기도 여주시</option><option value='129'>경기도 연천군</option><option value='130'>경기도 가평군</option><option value='131'>경기도 양평군</option>");
											} else if ($(this).val() == '10') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='132'>강원도 춘천시</option><option value='133'>강원도 원주시</option><option value='134'>강원도 강릉시</option><option value='135'>강원도 동해시</option><option value='136'>강원도 태백시</option><option value='137'>강원도 속초시</option><option value='138'>강원도 삼척시</option><option value='139'>강원도 홍천군</option><option value='140'>강원도 횡성군</option><option value='141'>강원도 영월군</option><option value='142'>강원도 평창군</option><option value='143'>강원도 정선군</option><option value='144'>강원도 철원군</option><option value='145'>강원도 화천군</option><option value='146'>강원도 양구군</option><option value='147'>강원도 인제군</option><option value='148'>강원도 고성군</option><option value='149'>강원도 양양군</option>");
											} else if ($(this).val() == '11') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='150'>충청북도 청주시</option><option value='151'>충청북도 청주시 상당구</option><option value='152'>충청북도 청주시 서원구</option><option value='153'>충청북도 청주시 흥덕구</option><option value='154'>충청북도 청주시 청원구</option><option value='155'>충청북도 충주시</option><option value='156'>충청북도 제천시</option><option value='157'>충청북도 보은군</option><option value='158'>충청북도 옥천군</option><option value='159'>충청북도 영동군</option><option value='160'>충청북도 증평군</option><option value='161'>충청북도 진천군</option><option value='162'>충청북도 괴산군</option><option value='163'>충청북도 음성군</option><option value='164'>충청북도 단양군</option>");
											} else if ($(this).val() == '12') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='165'>충청남도 천안시</option><option value='166'>충청남도 공주시</option><option value='167'>충청남도 보령시</option><option value='168'>충청남도 아산시</option><option value='169'>충청남도 서산시</option><option value='170'>충청남도 논산시</option><option value='171'>충청남도 계룡시</option><option value='172'>충청남도 당진시</option><option value='173'>충청남도 금산군</option><option value='174'>충청남도 부여군</option><option value='175'>충청남도 서천군</option><option value='176'>충청남도 청양군</option><option value='177'>충청남도 홍성군</option><option value='178'>충청남도 예산군</option><option value='179'>충청남도 태안군</option>");
											} else if ($(this).val() == '13') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='180'>전라북도 전주시</option><option value='181'>전라북도 전주시 완산구</option><option value='182'>전라북도 전주시 덕진구</option><option value='183'>전라북도 군산시</option><option value='184'>전라북도 익산시</option><option value='185'>전라북도 정읍시</option><option value='186'>전라북도 남원시</option><option value='187'>전라북도 김제시</option><option value='188'>전라북도 완주군</option><option value='189'>전라북도 진안군</option><option value='190'>전라북도 무주군</option><option value='191'>전라북도 장수군</option><option value='192'>전라북도 임실군</option><option value='193'>전라북도 순창군</option><option value='194'>전라북도 고창군</option><option value='195'>전라북도 부안군</option>");
											} else if ($(this).val() == '14') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='196'>전라남도 목포시</option><option value='197'>전라남도 여수시</option><option value='198'>전라남도 순천시</option><option value='199'>전라남도 나주시</option><option value='200'>전라남도 광양시</option><option value='201'>전라남도 담양군</option><option value='202'>전라남도 곡성군</option><option value='203'>전라남도 구례군</option><option value='204'>전라남도 고흥군</option><option value='205'>전라남도 보성군</option><option value='206'>전라남도 화순군</option><option value='207'>전라남도 장흥군</option><option value='208'>전라남도 강진군</option><option value='209'>전라남도 해남군</option><option value='210'>전라남도 영암군</option><option value='211'>전라남도 무안군</option><option value='212'>전라남도 함평군</option><option value='213'>전라남도 영광군</option><option value='214'>전라남도 장성군</option><option value='215'>전라남도 완도군</option><option value='216'>전라남도 진도군</option><option value='217'>전라남도 신안군</option>");
											} else if ($(this).val() == '15') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='218'>경상북도 포항시</option><option value='219'>경상북도 포항시 남구</option><option value='220'>경상북도 포항시 북구</option><option value='221'>경상북도 경주시</option><option value='222'>경상북도 김천시</option><option value='223'>경상북도 안동시</option><option value='224'>경상북도 구미시</option><option value='225'>경상북도 영주시</option><option value='226'>경상북도 영천시</option><option value='227'>경상북도 상주시</option><option value='228'>경상북도 문경시</option><option value='229'>경상북도 경산시</option><option value='230'>경상북도 군위군</option><option value='231'>경상북도 의성군</option><option value='232'>경상북도 청송군</option><option value='233'>경상북도 영양군</option><option value='234'>경상북도 영덕군</option><option value='235'>경상북도 청도군</option><option value='236'>경상북도 고령군</option><option value='237'>경상북도 성주군</option><option value='238'>경상북도 칠곡군</option><option value='239'>경상북도 예천군</option><option value='240'>경상북도 봉화군</option><option value='241'>경상북도 울진군</option><option value='242'>경상북도 울릉군</option>");
											} else if ($(this).val() == '16') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='243'>경상남도 창원시</option><option value='244'>경상남도 진주시</option><option value='245'>경상남도 통영시</option><option value='246'>경상남도 사천시</option><option value='247'>경상남도 김해시</option><option value='248'>경상남도 밀양시</option><option value='249'>경상남도 거제시</option><option value='250'>경상남도 양산시</option><option value='251'>경상남도 의령군</option><option value='252'>경상남도 함안군</option><option value='253'>경상남도 창녕군</option><option value='254'>경상남도 고성군</option><option value='255'>경상남도 남해군</option><option value='256'>경상남도 하동군</option><option value='257'>경상남도 산청군</option><option value='258'>경상남도 함양군</option><option value='259'>경상남도 거창군</option><option value='260'>경상남도 합천군</option>");
											} else if ($(this).val() == '17') {
												$("#v_area")
														.html(
																"<option value=''>전체</option><option value='261'>제주특별자치도 제주시</option><option value='262'>제주특별자치도 서귀포시</option>");
											} else if ($(this).val() == '') {
												$("#v_area")
														.html(
																"<option value=''>전체</option>");
											}
											$("#v_area").removeAttr("disabled");
										});

						//종료시점 변경시 시작시점과 비교
					    var s = $('#sterm');
					    var e = $('#eterm');
					    
					    e.change(function(){
					       if( s.val() == "" || s.val() == null ){
					          
					          alert('시작 시점을 먼저 선택해주세요')
					          e.val("");
					          
					       } else {
					          
					          if( e.val() < s.val() ){
					             
					              alert('종료 시점은 시작 시점보다 빠를 수 없습니다')
					              e.val("");
					          }
					       }

					       
					    });

					});
</script>
<script type="text/javascript">
      $(document).ready(function() {
         $("[name=v_process][value=${paging.v_process}]").prop("checked", true);
		 
//          $("#t_department").children("[value=${paging.t_department}]").attr("selected", "selected");
			});
</script>
</head>

<body>

	<form action="/user/volunteer/list" method="get" id="searchForm">
		<div>
			<table
				style="width: 100%; padding: 0px; border-spacing: 0px; border: 0px;">
				<caption>봉사활동 찾기</caption>
				<colgroup>
					<col style="width: 10%;">
					<col style="width: 40%;">
					<col style="width: 10%;">
					<col style="width: 40%;">
				</colgroup>
				<tbody>
					<tr>
						<th scope="row">활동분야</th>
						<td><select id="v_department" name="v_department"
							title="활동분야" style="width: 180px; height: 28px;">
								<option value="">선택</option>

								<option value="1">시설봉사</option>

								<option value="2">재가봉사</option>

								<option value="3">전문봉사</option>

								<option value="4">지역사회봉사</option>

								<option value="5">금.물품봉사</option>

						</select></td>

						<th scope="row">활동지역</th>
						<td><select title="시도" name="srcArea" id="srcArea"
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
						</select> <select name="v_area" id="v_area" title="시군구"
							style="width: 180px; height: 28px;" disabled="disabled">
								<option value="0">선택</option>
						</select></td>

					</tr>
					<tr>
						<th scope="row">활동일자</th>
						<td><input name="v_sterm" title="시작일" id="v_sterm"
							style="width: 22.2%;" type="date" value=""> ~ <input
							name="v_eterm" title="종료일" id="v_eterm" style="width: 22.2%;"
							type="date" value=""></td>
						
						<th scope="row">활동시간</th>
						<td><input name="v_stime" title="시작시간" id="v_stime"
							style="width: 22.2%;" type="time" value=""> ~ <input
							name="v_etime" title="종료시간" id="v_etime" style="width: 22.2%;"
							type="time" value=""></td>
					</tr>

					<tr>
						<th scope="row">검색</th>
						<td><select name="searchno">
								<option value="1" selected="selected">제목</option>
								<option value="2">작성기관</option>
						</select> <input name="search" title="활동 명" id="search"
							style="width: 47.6%; height: 20px;" type="text" value="">
						</td>

						<th scope="row">상태</th>
						<td style="line-height: 200%"><input name="v_process"
							title="전체" id="processAll" type="radio" value="0"
							checked="checked">&nbsp;<label for="processAll">전체</label>
							&nbsp; <input name="v_process" title="신청가능" id="process1"
							type="radio" value="1">&nbsp;<label
							for="process1">모집중</label> &nbsp; <input name="v_process"
							title="마감" id="process2" type="radio" value="2">&nbsp;<label
							for="process2">모집완료</label> &nbsp;</td>
					</tr>
				</tbody>
			</table>
			<div>
				<button type="submit" style="width: 100px;">검색</button>
				<button id="resetForm" type="button">초기화</button>
			</div>
		</div>
	</form>

	<br>
	<hr>
	<br>
	<div>${vcount }건의 검색결과가 있습니다.</div>
	<br>

	<table>
		<c:forEach items="${list }" var="list">
			<tr>
				<td>${list.volunteerno }<a
					href="/user/volunteer/view?volunteerno=${list.volunteerno }">${list.vol_title }</a>
					<fmt:formatDate value="${list.write_date }" pattern="yyyy.MM.dd" />
					${list.vol_area } <br>
					<div>활동지역: ${list.vol_area } 활동기간: ${list.vol_sterm } ~
						${list.vol_eterm } 활동영역: ${list.department }</div>
				</td>
			</tr>
		</c:forEach>
	</table>

	<div>
		<jsp:include page="/WEB-INF/views/layout/v_paging.jsp" />
	</div>
	<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
</body>
</html>