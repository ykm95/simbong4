<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp" />  


<!-- CK Editor -->
<script src="https://cdn.ckeditor.com/4.13.1/standard/ckeditor.js"></script>

<script type="text/javascript">
$(document).ready(function() {
   
   //작성버튼 동작
   $("#btnWrite").click(function() {
      $("form").submit();
   });
   
   //취소버튼 동작
   $("#btnCancel").click(function() {
	   history.back();
   });
});
</script>

</head>
<body>

<div class="container" style="background-color: #fff;">
<br>

<h3>1:1문의</h3><br>


<div><!-- 1 -->

<form action="/center/mypage/writequestion" method="post" enctype="multipart/form-data">

<table class="table table-bordered">
<tr><td class="info">제목</td><td><input type="text" name="cquestion_title" style="width:100%"/></td></tr>
<tr><td class="info" colspan="2">본문</td></tr>

<!-- CK Editor 적용영역 -->

<tr><td colspan="2" ><textarea id="cquestion_content" name="cquestion_content"></textarea></td></tr>
<script>
   CKEDITOR.replace( 'cquestion_content' );
</script>

<!-- CK Editor 적용영역 -->

<tr><td class="info">첨부파일</td><td><input type="file" name="file" /></td></tr>
</table>


</form>

</div><!-- 1 -->

<div class="text-center">   
   <button type="button" id="btnWrite" class="btn btn-info">작성</button>
   <button type="button" id="btnCancel" class="btn btn-danger">취소</button>
<br><br>
</div>
</div> <!-- container -->

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />