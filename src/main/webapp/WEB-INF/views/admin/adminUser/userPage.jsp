<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title> 회원관리 </title>

  <!-- Bootstrap core CSS -->
  <!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.css">

  <!-- Custom styles for this template -->
  <link href="css/heroic-features.css" rel="stylesheet">

</head>

<body>

 <jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />
<br><br><br>
  <!-- Page Content -->

    <!-- Jumbotron Header -->
    <header class="jumbotron my-3">
      <h1 class="display-3">사용자관리</h1>
      <p class="lead">회원관리 수정 및 삭제 등</p>
<!--       <a href="#" class="btn btn-primary btn-lg">C</a> -->
    </header>

    <!-- Page Features --><!-- 세로 길이 줄이고 가로롤 늘리고  6개 만들기 -->
    <div class="row text-center">

      <div class="col-lg-3 col-md-6 mb-4"> <!-- 카드 위치..?설정 -->
        <div class="card h-100"><!-- 카드 높이 설정 -->
          <img class="card-img-top" src="http://placehold.it/500x325" alt=""><!-- 이미지 상단고정, 경로설정 -->
          <div class="card-body">
            <h4 class="card-title">사용자 닉네임</h4>
            <p class="card-text">사용자 관련정보</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">수정 / 삭제</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
          </div>
        </div>
      </div>

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
          <div class="card-body">
            <h4 class="card-title">Card title</h4>
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Explicabo magni sapiente, tempore debitis beatae culpa natus architecto.</p>
          </div>
          <div class="card-footer">
            <a href="#" class="btn btn-primary">Find Out More!</a>
            
          </div>
        </div>
      </div>
    </div>
    
    
<jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />