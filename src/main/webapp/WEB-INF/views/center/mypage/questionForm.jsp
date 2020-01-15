<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- 부트스트랩 3.3.2 -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap-theme.min.css">
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/js/bootstrap.min.js"></script>

<!-- jQuery 2.2.4 -->
<script type="text/javascript" src="http://code.jquery.com/jquery-2.2.4.min.js"></script>

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
      $(location).attr("href", "/center/mypage/mypagemain");
   });
});
</script>

</head>
<body>

<div class="container">

<h3>센터회원문의</h3>
<hr>

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
</div>

</div> <!-- container -->

</body>
</html>