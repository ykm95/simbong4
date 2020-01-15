<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<jsp:include page="/WEB-INF/views/layout/header.jsp" />


<script type="text/javascript">
$(document).ready(function() {
	
	//글쓰기버튼 동작
	$("#questionWrite").click(function() {
		$(location).attr("href", "/user/mypage/writequestion");
	});
	
});
</script>


<div class="container" style="background-color: #fff;">
<br><br>

<h1>1:1문의</h1><br>
<table class="table table-hover">
  <thead>
    <tr>
      <th scope="col">문의번호</th>
      <th scope="col">문의제목</th>
	  <th scope="col">답변여부</th>
    </tr>
  </thead>
  <tbody>
    <tr>
     <c:forEach items="${list }" var="list">
    <tr>
      <td>${list.questionno }</td>
      <td><a href="/user/mypage/questionview?questionno=${list.questionno }">${list.question_title }</a></td>
      <td>
      <c:choose>
     	<c:when test="${list.answer eq 1 }"><span style="color:blue;">[답변대기]</span></c:when>
     	<c:when test="${list.answer eq 2 }"><span style="color:red;">[답변완료]</span></c:when>
      </c:choose>
      </td>
    </tr>
    </c:forEach>
    </tr>

  </tbody>
</table>

<br><br>

<div style="text-align: right;">
   <button type="button" class="btn btn-secondary" id="questionWrite">글쓰기</button>
</div>

<jsp:include page="/WEB-INF/views/layout/q_paging.jsp" />
</div>

<jsp:include page="/WEB-INF/views/layout/footer.jsp" />