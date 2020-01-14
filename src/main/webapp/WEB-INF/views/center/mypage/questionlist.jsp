<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp" />

<script type="text/javascript">
$(document).ready(function() {
   
   //글쓰기버튼 동작
   $("#questionWrite").click(function() {
      $(location).attr("href", "/center/mypage/writequestion");
   });
   
});
</script>

<br>
<div class="container">
<h1>1:1문의</h1>


<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">문의번호</th>
      <th scope="col">문의제목</th>

    </tr>
  </thead>
  <tbody>
    <tr>
     <c:forEach items="${list }" var="list">
    <tr>
      <td>${list.questionno }</td>
      <td><a href="/center/mypage/questionview?questionno=${list.questionno }">${list.cquestion_title }</a></td>
    </tr>
    </c:forEach>
    </tr>

  </tbody>
</table>

<br><br>

<div style="text-align: right;">
   <button type="button" class="btn btn-secondary" id="questionWrite">글쓰기</button>
</div>

<jsp:include page="/WEB-INF/views/layout/cq_paging.jsp" />
</div>


<jsp:include page="/WEB-INF/views/layout/footer.jsp" />
