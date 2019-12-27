<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<script src="https://code.jquery.com/jquery-2.2.4.min.js"></script>

<script type="text/javascript">

$(document).ready(function(){
	
	$("select[name='area']").change(function() {
		
		if( $(this).val() == 1) {
			
			$('#a1').removeAttr('hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
		
		} else if( $(this).val() == 2) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').removeAttr('hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 3) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').removeAttr('hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 4) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').removeAttr('hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 5) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').removeAttr('hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 6) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').removeAttr('hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 7) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').removeAttr('hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 8) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').removeAttr('hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 9) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').removeAttr('hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 10) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').removeAttr('hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 11) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').removeAttr('hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 12) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').removeAttr('hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 13) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').removeAttr('hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 14) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').removeAttr('hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 15) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').removeAttr('hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 16) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').removeAttr('hidden');
			$('#a17').attr('hidden', 'hidden');
			
		} else if( $(this).val() == 17) {
			
			$('#a1').attr('hidden', 'hidden');
			$('#a2').attr('hidden', 'hidden');
			$('#a3').attr('hidden', 'hidden');
			$('#a4').attr('hidden', 'hidden');
			$('#a5').attr('hidden', 'hidden');
			$('#a6').attr('hidden', 'hidden');
			$('#a7').attr('hidden', 'hidden');
			$('#a8').attr('hidden', 'hidden');
			$('#a9').attr('hidden', 'hidden');
			$('#a10').attr('hidden', 'hidden');
			$('#a11').attr('hidden', 'hidden');
			$('#a12').attr('hidden', 'hidden');
			$('#a13').attr('hidden', 'hidden');
			$('#a14').attr('hidden', 'hidden');
			$('#a15').attr('hidden', 'hidden');
			$('#a16').attr('hidden', 'hidden');
			$('#a17').removeAttr('hidden');
			
		}
		
	})
	
});

</script>

</head>
<body>

<h1>봉사활동 작성</h1>
<hr>

<form action="/center/volunteer/write" method="post">
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="vol_title"></td>
		</tr>
		<tr>
			<th>활동기간</th>
			<td><input type="date" name="vol_sterm"> ~ </td>
			<td><input type="date" name="vol_eterm"></td>
		</tr>
		<tr>
			<th>활동시간</th>
			<td><input type="time" name="stime"> ~ </td>
			<td><input type="time" name="etime"></td>
		</tr>
		<tr>
			<th>활동분야</th>
			<td>
				<select name="department">
					<option value="1">시설봉사</option>
					<option value="2">재가봉사</option>
					<option value="3">전문봉사</option>
					<option value="4">지역사회봉사</option>
					<option value="5">해외봉사</option>
				</select>
			</td>
		</tr>
		<tr>
			<th>봉사지역</th>
			<td>
			<select name='area'>
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
			
			<select id="a1" name="vol_area">
				<option disabled="disabled">선택</option>
				<option value="011">종로구</option>
				<option value="012">중구</option>
				<option value="013">용산구</option>
				<option value="014">성동구</option>
				<option value="015">광진구</option>
				<option value="016">동대문구</option>
				<option value="017">중랑구</option>
				<option value="018">성북구</option>
				<option value="019">강북구</option>
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
			
			<select id="a2" name="vol_area" hidden="hidden">
				<option value="021">중구</option>
				<option value="022">서구</option>
				<option value="023">동구</option>
				<option value="024">영도구</option>
				<option value="025">부산진구</option>
				<option value="026">동래구</option>
				<option value="027">남구</option>
				<option value="028">북구</option>
				<option value="029">해운대구</option>
				<option value="0210">사하구</option>
				<option value="0211">금정구</option>
				<option value="0212">강서구</option>
				<option value="0213">연제구</option>
				<option value="0214">수영구</option>
				<option value="0215">사상구</option>
				<option value="0216">기장군</option>
			</select>
			
			<select id="a3" name="vol_area" hidden="hidden">
				<option value="031">중구</option>
				<option value="032">동구</option>
				<option value="033">서구</option>
				<option value="034">남구</option>
				<option value="035">북구</option>
				<option value="036">수성구</option>
				<option value="037">달서구</option>
				<option value="038">달성군</option>
			</select>
			
			<select id="a4" name="vol_area" hidden="hidden">
				<option value="041">중구</option>
				<option value="042">동구</option>
				<option value="043">미추홀구</option>
				<option value="044">연수구</option>
				<option value="045">남동구</option>
				<option value="046">부평구</option>
				<option value="047">계양구</option>
				<option value="048">서구</option>
				<option value="049">강화군</option>
				<option value="0410">옹진군</option>
			</select>
			
			<select id="a5" name="vol_area" hidden="hidden">
				<option value="051">동구</option>
				<option value="052">서구</option>
				<option value="053">남구</option>
				<option value="054">북구</option>
				<option value="055">광산구</option>
			</select>
			
			<select id="a6" name="vol_area" hidden="hidden">
				<option value="061">동구</option>
				<option value="062">중구</option>
				<option value="063">서구</option>
				<option value="064">유성구</option>
				<option value="065">대덕구</option>
			</select>
			
			<select id="a7" name="vol_area" hidden="hidden">
				<option value="071">중구</option>
				<option value="072">남구</option>
				<option value="073">동구</option>
				<option value="074">북구</option>
				<option value="075">울주군</option>
			</select>
			
			<select id="a8" name="vol_area" hidden="hidden">
				<option value="081">연기면</option>
				<option value="082">연동면</option>
				<option value="083">부강면</option>
				<option value="084">금남면</option>
				<option value="085">장군면</option>
				<option value="086">연서면</option>
				<option value="087">전의면</option>
				<option value="088">전동면</option>
				<option value="089">소정면</option>
			</select>
			
			<select id="a9" name="vol_area" hidden="hidden">
				<option disabled="disabled">수원시</option>
				<option value="091">수원시 장안구</option>
				<option value="092">수원시 권선구</option>
				<option value="093">수원시 팔달구</option>
				<option value="094">수원시 영통구</option>
				<option disabled="disabled">성남시</option>
				<option value="095">성남시 수정구</option>
				<option value="096">성남시 중원구</option>
				<option value="097">성남시 분당구</option>
				<option value="098">의정부시</option>
				<option disabled="disabled">안양시</option>
				<option value="099">안양시 만안구</option>
				<option value="0910">안양시 동안구</option>
				<option value="0911">부천시</option>
				<option value="0912">광명시</option>
				<option value="0913">평택시</option>
				<option value="0914">동두천시</option>
				<option disabled="disabled">안산시</option>
				<option value="0915">안산시 상록구</option>
				<option value="0916">안산시 단원구</option>
				<option disabled="disabled">고양시</option>
				<option value="0917">고양시 덕양구</option>
				<option value="0918">고양시 일산동구</option>
				<option value="0919">고양시 일산서구</option>
				<option value="0920">과천시</option>
				<option value="0921">구리시</option>
				<option value="0922">남양주시</option>
				<option value="0923">오산시</option>
				<option value="0924">시흥시</option>
				<option value="0925">군포시</option>
				<option value="0926">의왕시</option>
				<option value="0927">하남시</option>
				<option disabled="disabled">용인시</option>
				<option value="0928">용인시 처인구</option>
				<option value="0929">용인시 기흥구</option>
				<option value="0930">용인시 수지구</option>
				<option value="0931">파주시</option>
				<option value="0932">이천시</option>
				<option value="0933">안성시</option>
				<option value="0934">김포시</option>
				<option value="0935">화성시</option>
				<option value="0936">광주시</option>
				<option value="0937">양주시</option>
				<option value="0938">포천시</option>
				<option value="0939">여주시</option>
				<option value="0940">연천군</option>
				<option value="0941">가평군</option>
				<option value="0942">양평면</option>
			</select>
			
			<select id="a10" name="vol_area" hidden="hidden">
				<option value="1001">춘천시</option>
				<option value="1002">원주시</option>
				<option value="1003">강릉시</option>
				<option value="1004">동해시</option>
				<option value="1005">태백시</option>
				<option value="1006">속초시</option>
				<option value="1007">삼척시</option>
				<option value="1008">홍천군</option>
				<option value="1009">횡성군</option>
				<option value="1010">영월군</option>
				<option value="1011">평창군</option>
				<option value="1012">정선군</option>
				<option value="1013">철원군</option>
				<option value="1014">화천군</option>
				<option value="1015">양구군</option>
				<option value="1016">인제군</option>
				<option value="1017">고성군</option>
				<option value="1018">양양군</option>
			</select>
			
			<select id="a11" name="vol_area" hidden="hidden">
				<option disabled="disabled">청주시</option>
				<option value="1101">청주시 상당구</option>
				<option value="1102">청주시 서원구</option>
				<option value="1103">청주시 흥덕구</option>
				<option value="1104">청주시 청원구</option>
				<option value="1105">충주시</option>
				<option value="1106">제천시</option>
				<option value="1107">보은군</option>
				<option value="1108">옥천군</option>
				<option value="1109">영동군</option>
				<option value="1110">증평군</option>
				<option value="1111">증평군</option>
				<option value="1112">진천군</option>
				<option value="1113">괴산군</option>
				<option value="1114">음성군</option>
				<option value="1115">단양군</option>
			</select>
			
			<select id="a12" name="vol_area" hidden="hidden">
				<option value="1201">천안시</option>
				<option value="1202">공주시</option>
				<option value="1203">보령시</option>
				<option value="1204">아산시</option>
				<option value="1205">서산시</option>
				<option value="1206">논산시</option>
				<option value="1207">계룡시</option>
				<option value="1208">당진시</option>
				<option value="1209">금산군</option>
				<option value="1210">부여군</option>
				<option value="1211">서천군</option>
				<option value="1212">청양군</option>
				<option value="1213">홍성군</option>
				<option value="1214">예산군</option>
				<option value="1215">태안군</option>
			</select>
			
			<select id="a13" name="vol_area" hidden="hidden">
				<option disabled="disabled">전주시</option>
				<option value="1301">전주시 완산구</option>
				<option value="1302">전주시 덕진구</option>
				<option value="1303">군산시</option>
				<option value="1304">익산시</option>
				<option value="1305">정읍시</option>
				<option value="1306">남원시</option>
				<option value="1307">김제시</option>
				<option value="1308">완주군</option>
				<option value="1309">진안군</option>
				<option value="1310">무주군</option>
				<option value="1311">장수군</option>
				<option value="1312">임실군</option>
				<option value="1313">순양군</option>
				<option value="1314">고창군</option>
				<option value="1315">부안군</option>
			</select>
			
			<select id="a14" name="vol_area" hidden="hidden">
				<option value="1401">목포시</option>
				<option value="1402">여수시</option>
				<option value="1403">순천시</option>
				<option value="1404">나주시</option>
				<option value="1405">광양시</option>
				<option value="1406">담양군</option>
				<option value="1407">곡성군</option>
				<option value="1408">구례군</option>
				<option value="1409">고흥군</option>
				<option value="1410">보성군</option>
				<option value="1411">화순군</option>
				<option value="1412">장흥군</option>
				<option value="1413">강진군</option>
				<option value="1414">해남군</option>
				<option value="1415">영암군</option>
				<option value="1416">무안군</option>
				<option value="1417">함평군</option>
				<option value="1418">영광군</option>
				<option value="1419">장성군</option>
				<option value="1420">완도군</option>
				<option value="1421">진도군</option>
				<option value="1422">신안군</option>
			</select>
			
			<select id="a15" name="vol_area" hidden="hidden">
				<option disabled="disabled">포항시</option>
				<option value="1501">포항시 남구</option>
				<option value="1502">포항시 북구</option>
				<option value="1503">경주시</option>
				<option value="1504">김천시</option>
				<option value="1505">안동시</option>
				<option value="1506">구미시</option>
				<option value="1507">영주시</option>
				<option value="1508">영천시</option>
				<option value="1509">상주시</option>
				<option value="1510">문경시</option>
				<option value="1511">경산시</option>
				<option value="1512">군위군</option>
				<option value="1513">의성군</option>
				<option value="1514">청송군</option>
				<option value="1515">영양군</option>
				<option value="1516">영덕군</option>
				<option value="1517">청도군</option>
				<option value="1518">고령군</option>
				<option value="1519">칠곡군</option>
				<option value="1520">예천군</option>
				<option value="1521">봉화군</option>
				<option value="1522">울진군</option>
				<option value="1523">울릉군</option>
			</select>
			
			<select id="a16" name="vol_area" hidden="hidden">
				<option value="1601">창원시</option>
				<option value="1602">진주시</option>
				<option value="1603">통영시</option>
				<option value="1604">사천시</option>
				<option value="1605">김해시</option>
				<option value="1606">밀양시</option>
				<option value="1607">거제시</option>
				<option value="1608">양산시</option>
				<option value="1609">의령군</option>
				<option value="1610">함안군</option>
				<option value="1611">창녕군</option>
				<option value="1612">고성군</option>
				<option value="1613">남해군</option>
				<option value="1614">하동군</option>
				<option value="1615">산청군</option>
				<option value="1616">함양군</option>
				<option value="1617">거창군</option>
				<option value="1618">합천군</option>
			</select>
			
			<select id="a17" name="vol_area" hidden="hidden">
				<option value="1701">제주시</option>
				<option value="1702">서귀포시</option>
			</select>
			
			</td>
		</tr>
		<tr>
			<th>봉사장소</th>
			<td><input type="text" name="vol_place"></td>
		</tr>
		<tr>
			<th>봉사대상</th>
			<td><input type="text" name="receiver"></td>
		</tr>
		<tr>
			<th>지원자격</th>
			<td><input type="text" name="qualification"></td>
		</tr>
		<tr>
			<th>내용</th>
			<td><input type="text" name="vol_content"></td>
		</tr>
		<tr>
			<th>필요인원</th>
			<td><input type="number" name="npeople"></td>
		</tr>
	</table>
	<button>작성</button>
</form>

</body>
</html>