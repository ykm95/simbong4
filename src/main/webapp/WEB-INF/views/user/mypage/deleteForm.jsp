<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>


<script type="text/javascript">
$(document).ready(function() {
	
	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$("form").submit();
	});
	
	//취소버튼 동작
	$("#btnCancel").click(function() {
		history.back();
	});
	
});
</script>
<br><br><br><br><br><br>
<div class="row" style="text-align: center;">
<div class="col-4" style="text-align: center;"></div>
<br>
<div class="row col-4" style="text-align: center;">

<h3 style="color: red;">정말로 회원탈퇴를 진행하시겠습니까? </h3>

<br><br>
</div>
<div class="col-4"></div>
</div>
<div class="row" style="text-align: center;">
<div class="col-4" style="text-align: center;"></div>
<div class="row col-4" style="text-align: center;">
<button type="button" id="btnDelete" class="btn btn-danger">확인</button>
<button type="button" id="btnCancel" class="btn btn-info">취소</button>
</div>
<div class="col-4"></div>
</div>
<div id="form" class="form-inline">
<form action="/user/mypage/delete" method="post">
<input type="hidden" value="${user.uemail }" name="uemail"/>
</form>
</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp" />