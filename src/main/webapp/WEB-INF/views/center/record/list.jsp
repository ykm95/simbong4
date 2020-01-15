<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

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

<div class="container" style="background-color: #FFF" >
	
	<div style="border-top: 1px solid; border-bottom: 1px solid;">

		<c:forEach items="${list }" var="i">
			<div class="container tr" onclick="location.href='/center/record/view?volunteerno=${i.volunteerno }';"
			style="border-top: 1px solid #ccc; border-bottom: 1px solid #ccc">
				<div class="row">
					<div class="col-2">
						<c:choose>
							<c:when test="${i.vol_process eq 1 }"><button class="btn btn-sm btn-primary" style="margin: 10px;">인증 대기중</button></c:when>
							<c:when test="${i.vol_process eq 2 }"><button class="btn btn-sm btn-danger" style="margin: 10px;">인증 미완료</button></c:when>
							<c:when test="${i.vol_process eq 3 }"><button class="btn btn-sm btn-success" style="margin: 10px;">인증 완료</button></c:when>
						</c:choose>
					</div>
					<div class="col-8"><h3>${i.vol_title }</h3></div>
					<div class="col-2"><small>${i.aname }</small></div>
				</div>
				<div class="row">
					<div class="col-2"><small style="color: blue;">필요/확정인원 : </small><small>${i.npeople } / ${i.apeople }</small></div>
					<div class="col-4"><small style="color: blue;">봉사기간 : </small><small>${i.vol_sterm } ~ ${i.vol_eterm }</small></div>
					<div class="col-3"><small style="color: blue;">모집센터 : </small><small>${i.cname }</small></div>
				</div>
			</div>
		</c:forEach>
	
	</div>

</div>

<jsp:include page="/WEB-INF/views/center/record/paging.jsp"></jsp:include>

<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>