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

<jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />
<!-- --------------------------------------------------------------------------------- -->
  <!-- Header - set the background image for the header in the line below -->
 
 <br>
 <br>
 <br>
 
 <h2><p><strong>${adminId }님 환영합니다.</strong></p></h2><!-- admin01, admin02나와야 정상. -->

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


 <jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />