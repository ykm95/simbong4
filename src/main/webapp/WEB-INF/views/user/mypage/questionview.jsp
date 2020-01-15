<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp" />

<script type="text/javascript">
$(document).ready(function() {
	//삭제버튼 동작
	$("#btnDelete").click(function() {
		$(location).attr("href", "/user/mypage/deletequestion?questionno=${question.questionno}");
	});
});
</script>



<div class="container" style=" padding-left: 200px; padding-right: 200px; background-color: #fff; ">

<div class="container list-container">

<br>
<div class="h2"></div>

   <div class="container">
   
	<h1>${question.question_title }</h1><br>
      <table class="table table-bordered">
         
      
         <tr><td colspan="4"><span style="font-weight:bold;">문의내용</span> ${question.question_content }</td></tr>
         <tr><td><span style="font-weight:bold;">첨부파일</span><br><img src="${question.pic }"></td></tr>
         
      </table>
      <br>
      <table class="table">
      <tr>
      	<td style="border-bottom:0px; font-weight:bold;">답변내용</td>
      	
      </tr>
      <tr>
      	<td style="border-top:0px;"> -> ${question.answercontent }</td>
      </tr>
      </table>
      <div style="text-align: right;">
         <button type="button" class="btn btn-danger" id="btnDelete">삭제</button>
      </div>
      <br><br>
   </div>
</div>

</div>




<jsp:include page="/WEB-INF/views/layout/footer.jsp" />