<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />

<!-- 문의 응대, 답글 작성, 검색
-게시날짜, 처리상태, 제목, 아이디, 문의글 조회, 1:1답글작성........헤더 적용시키면 왜 망가질까 -->

<!-- 파비콘 적용 -->
<link rel="shortcut icon" href="/resources/img/sim4.png" sizes="16x16">
<!-- CSS -->
<link rel="stylesheet" href="/resources/css/qna.css">
<!-- JS -->
<script src="/resources/js/qnamain.js"></script>

<style type="text/css">
section {
	width: 100%;
}
</style>

<br>
<br>
<br>



<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->


	<table class="table" cellspacing="0">
	    <thead>
	        <tr>
	            <th>글번호</th>
	            <th>유저이름</th>
	            <th>제목</th>
	            <th>처리상태</th>
	        </tr>
	    </thead>
	    <tbody id="qna__body">
	        
	    </tbody>
	</table>


	<script>
	$.ajax({
		url:'/admin/adminQna/question',
		type:'get',
		success:function(data){
			if(data.status=='1'){
				let questionList = data.questionList;
				
				let str;
				questionList.forEach(function(obj,index){
					str+='<tr>';
					str+='<td>'+index+1+'</td>';
					str+='<td>'+obj.uname+'</td>';
					str+='<td><a href="#">'+obj.cquestion_title+'</a></td>';
					str+='<td>'+obj.answer+'</td>';
					str+='</tr>';
				});
				
				$('#qna__body').append(str);
				
			}
		},
		error:function(){
			
		}
	});
		
	</script>






<jsp:include page="/WEB-INF/views/admin/adminBoard/paging.jsp" />

<jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />