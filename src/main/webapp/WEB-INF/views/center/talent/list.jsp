<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>

<script type="text/javascript">

	$(document).ready(function(){
		
		$('.tr').mouseover(function(){
			
			$(this).css('background-color', '#ddd');
		});
		
		$('.tr').mouseleave(function(){
			
			$(this).css('background-color', '#FFF');
		});
	
	});
	
</script>

<div class="container" >

	
	<div style="border-top: 1px solid; border-bottom: 1px solid;">

		<c:forEach items="${list }" var="i">
			<div class="container tr" onclick="location.href='/center/talent/view?talentno=${i.talentno }';"
			style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc">
				<div class="row">
					<div class="col-1">${i.talentno }</div>
					<div class="col-9"><h3>${i.talent_title }</h3></div>
					<div class="col-2"><small>${i.aname } 
						<c:if test="${i.talent_process == 0 }">진행중</c:if>
						<c:if test="${i.talent_process == 1 }">완료</c:if>
					</small></div>
				</div>
				<div class="row">
					<div class="col-4"><small style="color: blue;">봉사기간 : </small><small>${i.talent_cycle }</small></div>
				</div>
			</div>
		</c:forEach>
	
	</div>
	
</div>

<jsp:include page="/WEB-INF/views/center/talent/paging.jsp"></jsp:include>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>