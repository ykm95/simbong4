<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>adminPage::userPage</title>

  <!-- Bootstrap core CSS -->
  <!-- <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet"> -->
  <link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.css">

  <!-- Custom styles for this template -->
  <link href="css/heroic-features.css" rel="stylesheet">

</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
  <!-- 색깔 바꾸기  로고랑 맞춰서 화이트로-->
    <div class="container">
      <a class="navbar-brand" href="#">SimBongsa</a>
      <!-- 로고 바꾸기 -->
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">공지사항
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item active">
            <a class="nav-link" href="/admin/adminLogin/logout">로그아웃</a>
          </li>
          
        </ul>
      </div>
    </div>
  </nav>

  <!-- Page Content -->
  <div class="container">

    <!-- Jumbotron Header -->
    <header class="jumbotron my-4">
      <h1 class="display-3">사용자관리</h1>
      <p class="lead">회원관리 수정 및 삭제 등</p>
<!--       <a href="#" class="btn btn-primary btn-lg">C</a> -->
    </header>

    <!-- Page Features -->
    <div class="row text-center">

      <div class="col-lg-3 col-md-6 mb-4">
        <div class="card h-100">
          <img class="card-img-top" src="http://placehold.it/500x325" alt="">
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
            <p class="card-text">Lorem ipsum dolor sit amet, consectetur adipisicing elit. Sapiente esse necessitatibus neque.</p>
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
    <jsp:include page="/WEB-INF/views/layout/adminPaging.jsp" />
  </div>
  <!-- Footer -->
<footer class="py-5 bg-white">
	<div class="container"><hr>
      <p class="m-0 text-center text-info">
      	Copyright &copy; simbongsa 2020<br><br>
     	대표전화 	02 - 0000 - 0000<br><br>
     	이메일  	simbong4@naver.com
      </p>
    </div>
 
 	<div class="mark1">
			<p class="ssn" >
				<a href="http://kncsw.bokji.net/kncc/m00/m00.jsp" target="_blank"
					rel="noopener noreferrer" title="새창열림">
				<img src="/resources/img/SSN_ci_png.png" alt="SSN한국사회복지협의"
				style="max-width: 100%; height:auto;">
				</a>
			<p>
		
			<p class="mohw">
				<a href="http://www.mohw.go.kr"
				target="_blank" rel="noopener noreferrer" title="새창열림">
				<img src="/resources/img/보건복지부_국_좌우.jpg" alt="보건복지부"
				style="max-width: 100%; height:auto;">
				</a>
			</p>
	</div>
</footer>

  <!-- Bootstrap core JavaScript -->
	<!--   <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script> -->
	<%-- <script src="<c:url value="/resources/js/raphael.min.js"/>"/>
	<script src="<c:url value="/resources/js/morris.min.js"/>"/>
	<script src="<c:url value="/resources/js/morris-data.js"/>"/> --%>
	<!-- 이거 왜  있는거지... -->

</body>
</html>