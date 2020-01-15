<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<script type="text/javascript">
$(document).ready(function() {
	
	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$("form").submit();
	});
	
	//취소버튼 동작
	$("#btnCancel").click(function() {
		history.go(-1);
	});
	
});
</script>

<div class="container">

<br>
<h3 style="color: red;">정말로삭제하시겠습니까?</h3>
<h5>삭제하시면 게시글을 되돌릴수없습니다.</h5>

<form action="/center/mypage/deletequestion" method="post">
<input type="hidden" value="${centerquestion.questionno }" name="questionno"/>
</form>

<button type="button" id="btnDelete" class="btn btn-danger">삭제</button>
<button type="button" id="btnCancel" class="btn btn-info">취소</button>

</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />