<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>


<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

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

	<form id="notice__form">
		<table class="table table-bordered">
			<tr>
				<th scope="row">제목</th>
				<td><input name="noticeTitle" title="제목" id="noticeTitle"
					style="width: 47.6%; height: 20px;" type="text" value=""></td>
			</tr>

			<tr>
				<th class="info">내용</th>
				<td><textarea name="noticeContent"></textarea></td>
			</tr>

		</table>
	</form>
	<div id="btnBox" style="float: right">
		<button type="button" id="write__btn" >작성</button>
		<button type="button" id="cancel__btn">취소</button>
	</div>

	<br> <br><br> <br>
</div>
<script>
	CKEDITOR.replace( 'noticeContent' );
	
	
	$('#write__btn').on('click',function(){
		
		let reqData = {};
		reqData.noticeTitle = $('#noticeTitle').val();;
		reqData.noticeContent = CKEDITOR.instances.noticeContent.getData();
		
		$.ajax({
			url:'/admin/adminBoard/adminWrite',
			type:'post',
			data:reqData,
			success:function(data){
				if(data.status=='0'){
					alert(data.message);
				}else{
					location.href='/admin/adminBoard/adminNotice';
				}
			},
			error:function(){
				
			}
		});
		
	});
	
</script>