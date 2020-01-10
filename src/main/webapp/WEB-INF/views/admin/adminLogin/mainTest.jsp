<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
<head>

  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  <meta name="description" content="">
  <meta name="author" content="">

  <title>Main Test Page</title>

  <!-- Bootstrap core CSS -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/vendor/bootstrap/css/bootstrap.css">

  <!-- Custom styles for this template -->
<link rel="stylesheet" type="text/css" href="${pageContext.request.contextPath}/resources/css/full-width-pics.css">

</head>

<body>

  <!-- navbar 타페이지와 통일시키던가  -->
  <nav class="navbar navbar-expand-lg navbar-dark bg-dark fixed-top">
    <div class="container">
      <a class="navbar-brand" href="#">Start Bootstrap</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active">
            <a class="nav-link" href="#">Home
              <span class="sr-only">(current)</span>
            </a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">About</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Services</a>
          </li>
          <li class="nav-item">
            <a class="nav-link" href="#">Contact</a>
          </li>
        </ul>
      </div>
    </div>
  </nav>
<!-- --------------------------------------------------------------------------------- -->
  <!-- Header - set the background image for the header in the line below -->
 
 <br>
 <br>
 <br>

 <header class="py-5 bg-image-full" style="background-image: url('/resources/img/adminMain.png');">
     <div style="height: 200px;"></div> <!-- 이거 없으면 위에 잘립니다-->
 </header>

  <!-- Content section -->
  <section class="py-5">
    <div class="container">
      <h1><strong>함께하는 가치</strong></h1>
      <p class="lead">나눔으로 더해지는 마음</p>
      <p>장황한 설명 어쩌구 저쩌구</p>
    </div>
  </section>

<!-- Image Section - set the background image for the header in the line below -->
  <section class="py-5 bg-image-full" style="background-image: url('https://unsplash.it/1900/1080?image=1081');">
  
    <div style="height: 200px;"></div>
  </section>

  <!-- Content section -->
  <section class="py-5">
    <div class="container">
            <h1><strong>함께하는 가치</strong></h1>
      <p class="lead">나눔으로 더해지는 마음</p>
      <p>장황한 설명 어쩌구 저쩌구</p>
    </div>
  </section>


  <!-- Footer -->
  <footer class="py-5 bg-dark">
    <div class="container">
      <p class="m-0 text-center text-white">Copyright &copy; Your Website 2019</p>
    </div>
    <!-- /.container -->
  </footer>

  <!-- Bootstrap core JavaScript 이거 안바꿔도 잘되는데???-->
  <script src="vendor/jquery/jquery.min.js"></script>
  <script src="vendor/bootstrap/js/bootstrap.bundle.min.js"></script>
  <%-- <script src="<c:url value="/resources/js/raphael.min.js" />"/>
  <script src="<c:url value="/resources/js/raphael.min.js" />"/>
 --%>
</body>

</html>