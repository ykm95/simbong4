<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!DOCTYPE html>
<html>

<head>
<meta charset="UTF-8">
<title>심봉사 :: ADMIN</title>
<meta name="viewport" content="width=device-width, initial-scale=1">
<!-- 파비콘 적용 -->
<link rel="shortcut icon" href="/resources/img/sim4.png" sizes="16x16">
<!-- CSS -->
<link rel="stylesheet"
	href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
<!-- JS -->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script><!-- slim 쓰면 Ajax안돼요 admin만 바꿨어요 -->
<script
	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script
	src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
<link rel="stylesheet" href="https://www.w3schools.com/w3css/4/w3.css">

<!-- Bootstrap core CSS 
  <link href="vendor/bootstrap/css/bootstrap.min.css" rel="stylesheet">

  Custom styles for this template
  <link href="css/shop-homepage.css" rel="stylesheet">
 -->
</head>

<body>

  <!-- Navigation -->
  <nav class="navbar navbar-expand-lg navbar-light bg-light fixed-top">
    <div class="container">
      <a class="navbar-brand" href="/admin/adminLogin/main">심봉사</a>
      <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarResponsive" 
      aria-controls="navbarResponsive" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
      </button>
      
      <div class="collapse navbar-collapse" id="navbarResponsive">
        <ul class="navbar-nav ml-auto">
          <li class="nav-item active"><a class="nav-link"
				href="/admin/adminBoard/adminNotice">공지사항 </a> <!--얘만 파란색--></li>
			<li class="nav-item"><a class="nav-link"
				href="/admin/adminBoard/bestVolunteer">우수봉사자</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/admin/adminUser/userPage">회원관리</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/admin/adminQna/qnaMain">QnA</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/admin/adminBoard/adminCenter">센터승인</a></li>
			<li class="nav-item"><a class="nav-link"
				href="/admin/adminBoard/adminTalent">개인승인</a></li>
        </ul>
        
        <form class="form-inline my-2 my-lg-0">
			<input class="form-control mr-sm-2" type="text" placeholder="Search">
			<button class="btn btn-secondary my-2 my-sm-0" type="submit">Search</button>
		</form>
      </div>
    </div>
  </nav>

<div id="wrapper">