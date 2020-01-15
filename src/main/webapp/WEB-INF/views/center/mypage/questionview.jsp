<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp" />

<script type="text/javascript">
$(document).ready(function() {
   //삭제버튼 동작
   $("#btnDelete").click(function() {
      $(location).attr("href", "/center/mypage/deletequestion?questionno=${centerquestion.questionno}");
   });
});
</script>


<style type="text/css">

#content {
   width: 95%;
}

#h3title {
   text-align: center;
   padding: 20px;
}


#btnList{
   background-color:#343a40;
}

</style>




<div class="container" style=" padding-left: 200px; padding-right: 200px;">

<div class="container list-container">

<br>
<div class="h2"><h2> 1:1문의 상세보기 </h2></div>
<hr>
   <div class="container">
      <table class="table table-bordered">
         <tr>
            <td style="background-color: #343a40; color: #fff;" colspan="4">${centerquestion.cquestion_title }</td>
         </tr> 
      
         <tr><td colspan="4">${centerquestion.cquestion_content }</td></tr>
         <tr><td><img src="${centerquestion.pic }"></td></tr>
         
      </table>
      <div style="text-align: right;">
         <button type="button" class="btn btn-danger" id="btnDelete">삭제</button>
      </div>
   </div>
</div>

</div>




<jsp:include page="/WEB-INF/views/layout/footer.jsp" />