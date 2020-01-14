<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<jsp:include page="/WEB-INF/views/layout/header.jsp"></jsp:include>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">
	$(document).ready(function() {
		var slideIndex = 0;
		showSlides();

		function showSlides() {
		    var i;
		    var slides = document.getElementsByClassName("mySlides");
		    var dots = document.getElementsByClassName("dot");
		    for (i = 0; i < slides.length; i++) {
		       slides[i].style.display = "none";  
		    }
		    slideIndex++;
		    if (slideIndex > slides.length) {slideIndex = 1}    
		    for (i = 0; i < dots.length; i++) {
		        dots[i].className = dots[i].className.replace(" active", "");
		    }
		    slides[slideIndex-1].style.display = "block";  
		    dots[slideIndex-1].className += " active";
		    setTimeout(showSlides, 4000); // Change image every 2 seconds
		}
	});
</script>

<style type="text/css">
 {box-sizing: border-box}
body {font-family: Verdana, sans-serif; margin:0}
.mySlides {display: none}
img {vertical-align: middle;}

/* Slideshow container */
.slideshow-container {
  max-width: 1000px;
  position: relative;
  margin: auto;
}

/* Next & previous buttons */
.prev, .next {
  cursor: pointer;
  position: absolute;
  top: 50%;
  width: auto;
  padding: 16px;
  margin-top: -22px;
  color: white;
  font-weight: bold;
  font-size: 18px;
  transition: 1s ease;
  border-radius: 0 3px 3px 0;
}

/* Position the "next button" to the right */
.next {
  right: 0;
  border-radius: 3px 0 0 3px;
}

/* On hover, add a black background color with a little bit see-through */
.prev:hover, .next:hover {
  background-color: rgba(0,0,0,0.8);
}

/* Caption text */
.text {
  color: #f2f2f2;
  font-size: 15px;
  padding: 8px 12px;
  position: absolute;
  bottom: 8px;
  width: 100%;
  text-align: center;
}

/* Number text (1/3 etc) */
.numbertext {
  color: #f2f2f2;
  font-size: 12px;
  padding: 8px 12px;
  position: absolute;
  top: 0;
}

/* The dots/bullets/indicators */
.dot {
  cursor: pointer;
  height: 15px;
  width: 15px;
  margin: 0 2px;
  background-color: #bbb;
  border-radius: 50%;
  display: inline-block;
  transition: background-color 0.6s ease;
}

.active, .dot:hover {
  background-color: #717171;
}

/* Fading animation */
.fade {
  -webkit-animation-name: fade;
  -webkit-animation-duration: 1.5s;
  animation-name: fade;
  animation-duration: 4s;
}

@-webkit-keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

@keyframes fade {
  from {opacity: .4} 
  to {opacity: 1}
}

/* On smaller screens, decrease text size */
@media only screen and (max-width: 300px) {
  .prev, .next,.text {font-size: 11px}
}

#volunteer {
	background-color: #ccc;
	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
	font-size: 25px;
	height: 90px;
    padding: 10px;
}

#adduction {
	background-color: #ccc;
	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
	font-size: 25px;
	height: 90px;
    padding: 10px;
}

#talent {
	background-color: #ccc;
	text-shadow: -1px 0 black, 0 1px black, 1px 0 black, 0 -1px black;
	font-size: 25px;
	height: 90px;
    padding: 10px;
}

#nbtn {
	border: 2px solid #ccc;
	background-color: white;
}
#interview{
	border: 2px solid green;
	background-color: white;
	border-radius: 10px;
	margin:5px;
	padding: 5px;
}



</style>

<body><br>
<div class="row">
<div class="col-3"></div>
<div class="col-6"  style="background-color: white;">
	<div class="col-12">
		<div class="slideshow-container">
	
			<div class="mySlides fade">
				<div class="numbertext">1 / 3</div>
				<img src="/resources/img/배너1.png" style="width: 100%;">
			</div>
	
			<div class="mySlides fade">
				<div class="numbertext">2 / 3</div>
				<img src="/resources/img/배너2.jpg" style="width: 100%;">
			</div>
	
			<div class="mySlides fade">
				<div class="numbertext">3 / 3</div>
				<img src="/resources/img/배너3.png" style="width: 100%;">
			</div>
		</div>
	</div>
	<br>
	<div style="text-align: center">
		<span class="dot"></span> <span class="dot"></span> <span class="dot"></span>
	</div><br>
	<div id="application" class="row" style="text-align: center;">
		<div class="col-1"></div>
		<div class="col-10 row">
		
			<div id="talent" class="col-4"style="width: 500px;">
				<a href="/user/talent/list">
				<strong style="color:white;">재능기부</strong>
				<img width="70px;" src="resources/img/재능.png"></a>
			</div>
			
			<div id="volunteer"  class="col-4" style="width: 500px;">
			<a href="/user/volunteer/list">
			<strong style="color:white;">봉사신청</strong>
			<img width="70px;" src="/resources/img/봉사자.png"></a>
			
			</div>
			
			<div id="adduction" class="col-4" style="width: 500px;">
			<a href="/user/mypage/performancelist">
				<strong style="color:white;">실적인증서 발급</strong>
				<img width="70px;" src="/resources/img/인증서.png"></a>
				</div>
		</div>
		<div class="col-1">
		</div>
	</div><br>

	<div class="row" style="margin:10px;">
		<div class="col-1"></div>
		<div class="col-10 row">
			<div class="col-4">
				<div style="height: 3px; background: black;"></div>
					<h3 style="font-weight: bolder;">공지사항
							<button id="nbtn" style="float: right;" onclick="location.href='/user/notice/list'">+</button>
						</h3><hr>
						<c:forEach items="${main2}" var="m">
							<table style="font-size:18px;">
								<tr>
									<td><a href="/user/notice/view?noticeno=${m.noticeNo }">${m.noticeTitle}</a></td>
								</tr>
							</table>
						</c:forEach>
						
			</div>
			<div class="col-4">
				<div style="height: 3px; background: black;"></div>
					<h3 style="font-weight: bolder;">이달의<br>우수봉사자</h3>
						<div id="bestpic" style="float:left;">
							<img width="100px" height="100px" src="${best.pic }"
								class="img-circle">
						</div>
						<div style="text-align: center;">
							<span style="font-size:17px;">${best.bestTitle }</span><br>
							
								<a href="/user/best/bestview?bestno=${best.bestno }">
								<button id="interview">
								인터뷰 보러가기</button></a>
						</div>
			</div>
			<div class="col-4">
				<div style="height: 3px; background: black;"></div>
				
			</div>
		</div>
		<div class="col-1"></div>
	</div>
</div>
<div class="col-3"></div>
</div>
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
