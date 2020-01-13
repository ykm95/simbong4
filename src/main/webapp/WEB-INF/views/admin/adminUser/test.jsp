<%@ page language="java" contentType="text/html; charset=UTF-8"	
	pageEncoding="UTF-8"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
  <title>This is Test Page</title>
<meta name="viewport" content="width=device-width, initial-scale=1">

<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- JS -->
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script><!-- slim 쓰면 Ajax안돼요 admin만 바꿨어요 -->
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">
</head>
<body>
<!-- ----------------------------------------------------------------------------------------- -->
<div id ="header" class="row">
	<div class="col-2">
		<a href="/admin/adminLogin/main"><img width="100px" src="/resources/img/simlogo.png"></a>	
	</div>
	<div class="col-8">
	</div>
	
</div>

<div style="height: 1px; background: black; "></div>

<div id="wrapper">

<div class="container">
	<div class="card-deck mt-3">
		<!--카드 이미지여러개 넣을수있음-->
		<div class="card">
			<img class="card-img-top" width="auto" height="auto" src="/resources/img/simlogo.png">
			<!-- 다좋은데 이미지가 너무 크게 나오고 width지정해도 안먹히는뎅... -->
			<!-- 1. 카드-헤드라인 -->
			<div class="card-header">사용자 닉네임</div>
			<!-- 2. 카드- 본문영역 -->
			<div class="card-body">
				<h4 class="card-title">닉네임 어쩌구</h4>
				<p class="card-text">분야 저쩌구 지역이 뭐쩌구</p>
				<a href="#" class="btn btn-primary">수정/삭제</a>
			</div>
		</div>

		<div class="card"><!-- 카드 내부 3가지 영역 -->
			<!-- 반응형이어서 그런가 사이즈는 달라지는데...계속 커...여전히 크다 -->
			<img class="card-img-top" width="50px" src="/resources/img/Test.png">
			<!-- 1. 카드-헤드라인 -->
			<div class="card-header">사용자 닉네임</div>
			<!-- 2. 카드- 본문영역 -->
			<div class="card-body">
				<h4 class="card-title">답답해서 뒤지겠다 플젝 그냥 폭파시켜버려</h4>
				<p class="card-text">의 있는가? 없는 그들을 피고, 커다란 시들어 그들은 사막이다.</p>
			</div>
			<!-- 3. 카드 - footer영역 -->
            <!-- <div class="card-footer">FOOTER</div> 가능하지만 구리므로 푸터는 생략-->
				<a href="#" class="btn btn-primary">수정/삭제</a>
			
		</div>
	</div>
</div>
<!--페이지 숫자-->
<div class="d-flex justify-content-center my-5">

	<nav aria-label="Page navigation">
		<ul class="pagination">
			<!--왼쪽-->
			<li class="page-item disabled"><a class="page-link" href="#"
				aria-label="Previous"> <span aria-hidden="true">&laquo;</span>
			</a></li>

			<!--페이지-->
			<li class="page-item"><a class="page-link" href="#">1</a></li>
			<li class="page-item"><a class="page-link" href="#">2</a></li>
			<li class="page-item"><a class="page-link" href="#">3</a></li>
			<li class="page-item"><a class="page-link" href="#">4</a></li>
			<li class="page-item"><a class="page-link" href="#">5</a></li>

			<!--오른쪽-->
			<li class="page-item"><a class="page-link" href="#"
				aria-label="Next"> <span aria-hidden="true">&raquo;</span>
			</a></li>
		</ul>
	</nav>
</div>


<jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />