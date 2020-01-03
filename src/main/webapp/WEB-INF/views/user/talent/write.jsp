<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

<script type="text/javascript">
	$(document).ready(function() {

		$("#btnWrite").click(function() {

			// form submit
			$("form").submit();
		})

		$("#btnCancel").click(function() {
			history.back(-1);
		})

        $('#itemAdd').click(function(){ 
	    	var listCnt = $('#locTd div').length;
	    	if(listCnt >= 5){
	    	 	alert("봉사지역은 최대 5개까지 추가 가능합니다.");
	    	 	return;
	    	}
	    	
	    	var contents = ''; 
	    	var tIndex = $('#tIndex').val();
	    	tIndex++;
	    	
			contents += '	<div class="'+tIndex+'">';
		    contents += '		<select name="srvLoc" id="srvLoc_'+tIndex+'" title="활동시도" style="width:150px; height:28px;" onchange="fnSrvLocChange(this);" class="bod-select" editable="false" panelHeight="auto" >';
			contents += '       	<option value="">선택</option>';
			contents += '       		<option value="1">서울특별시</option><option value="2">부산광역시</option><option value="3">대구광역시</option><option value="4">인천광역시</option><option value="5">광주광역시</option><option value="6">대전광역시</option><option value="7">울산광역시</option><option value="8">세종특별자치시</option><option value="9">경기도</option><option value="10">강원도</option><option value="11">충청북도</option><option value="12">충청남도</option><option value="13">전라북도</option><option value="14">전라남도</option><option value="15">경상북도</option><option value="16">경상남도</option><option value="17">제주특별자치도</option>';
			contents += '       </select>';
			contents += '       <select name="srvLocDtl" id="srvLocDtl_'+tIndex+'" title="활동시군구" style="width:150px; height:28px;" class="bod-select" editable="false" panelHeight="auto" onchange="fnLocDtlChange('+tIndex+');">';
			contents += '       	<option value="">선택</option>';
			contents += '       </select>';
			contents += '       <button class="btn btn-sm btn-darkgray" type="button" id="itemDel" onclick="locDel(this);">삭제</button>';
		    contents += '    </div>';
			
	    	$('#locTd').append(contents); // 추가기능 
	    	
	    	$('#tIndex').val(tIndex);
	    	//$("#actCtprvnCode_" + tIndex).combobox();
	    	//$("#actSignguCode_" + tIndex).combobox();
	    });
	});
</script>

<style type="text/css">
table, th {
	text-align: center;
}

tr td:nth-child(2) {
	text-align: left;
}

tr td:not(:first-child), tr th:not(:first-child) {
	border-left: 1px solid white;
}
</style>

<div class="container">

	<h1>글쓰기</h1>
	<hr>

	<form action="/user/talent/write" method="post" encType="multipart/form-data">
		<table class="table table-bordered">

					<tr>
						<th scope="row">활동명</th>
						<td><input name="srcTitle" title="활동 명" id="srcTitle"
							style="width: 47.6%; height: 20px;" type="text" value=""></td>
					</tr>
					<tr>	
						<th scope="row">봉사유형</th>
						<td style="line-height: 200%">
						<input name="srcType" title="개인" id="srcTypeI" type="radio" value="I">&nbsp;
						<label for="srcTypeI">개인</label> &nbsp; 
						<input name="srcType" title="단체" id="srcTypeG" type="radio" value="G">&nbsp;
						<label for="srcTypeG">단체</label> &nbsp;</td>
					</tr>
					
					
					
					
			<tr>
				<th class="info">내용</th>
				<td><textarea name="talent_content"></textarea></td>
			</tr>

		</table>
		<div id="btnBox" style="float: right">
			<button type="button" id="btnWrite" >작성</button>
			<button type="button" id="btnCancel">취소</button>
			<button class="btn btn-sm btn-darkgray" type="button" id="itemAdd">추가</button>
		</div>
	</form>


	<br> <br> <br> <br> <br> <br> <br> <br>
	<br> <br> <br> <br> <br> <br> <br> <br>
	<br> <br>
</div>
<script>
	CKEDITOR.replace( 'talent_content' );
</script>
