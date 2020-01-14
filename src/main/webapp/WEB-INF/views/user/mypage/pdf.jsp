<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">

<script type="text/javascript" src="http://code.jquery.com/jquery-latest.min.js"></script>
<!-- CSS -->
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">

<!-- JS -->
<script	src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>

<style type="text/css">
#create_pdf {
	height: 100px;
	cursor: pointer;
}

#pdf_wrap {
	text-align: center;
}

#data {
	line-height: 50px;
}

ul {
	list-style-type: none;
}
</style>
<title>Insert title here</title>
<script src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.debug.js"></script>
</head>
<body>
	<div id="pdf_wrap">
		<div id="create_pdf" style="float: left;" class="row col-12">
			<div class="col-1"></div>
			<div class="col-1" onclick="fnSaveAsPdf();">
				<img width="70px" 
					src="/resources/img/pdf다운로드.jpg">
			</div>
			<br>
			<br>
			<div class="col-10"></div>
		</div>
		<div class="row col-12">
			<div class="col-1"></div>
			<div class="col-10" style="height: 150px; border: 2px solid black;">
				<h2 style="line-height: 114px;">자원봉사 실적 인증서</h2>
				<span style="float: right;">
					<c:set var="now" value="<%=new java.util.Date()%>" />
						<c:set var="sysYear">
							<fmt:formatDate value="${now}" pattern="yyyy" />
						</c:set> 
						발급일자 : <fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일" />
				</span>
				
			</div>
			<div class="col-1"></div>
		</div>


		<div id="data" class="row col-12">
			<div class="col-1"></div>
			<div class="col-10"
				style="width: 700px; height: 620px; border: 1px solid black; text-align: left;"><br>
				<div class="col-12">
				<ul>
					<li><span style="font-weight: bolder;">성명 : </span>
						${pdf.uname }</li>
					<li><span style="font-weight: bolder;">주소 :</span>
						${pdf.uaddress2 }</li>
					<li style="font-weight: bolder;">[자원봉사 실적]</li>
					<li><span style="font-weight: bolder;">기간 :</span>
						${pdf.vol_sterm } ~ ${pdf.vol_eterm }</li>
					<li><span style="font-weight: bolder;">시간 :</span> 
						${pdf.stime } ~ ${pdf.etime }</li>
					<li><span style="font-weight: bolder;">장소 :</span>
						${pdf.vol_place }</li>
					<li>사회복지자원봉사 인증관리규정 제9조 제3항에 따라 위와 같이 자원봉사 활동실적이 있음을 인증합니다</li>
					<li style="text-align: center;">
						<!-- 현재년도 --> 
						<c:set var="now" value="<%=new java.util.Date()%>" />
						<c:set var="sysYear">
							<fmt:formatDate value="${now}" pattern="yyyy" />
						</c:set> <fmt:formatDate value="${now }" pattern="yyyy년 MM월 dd일" />
					</li>
				</ul>
				</div>
				<div class="col-12" style="text-align: center;">
					<img src="/resources/img/도장.png" style="width: 200px;">
				</div>
			</div>
			<div class="col-1"></div>
		</div>
	</div>


	<script>
      function fnSaveAsPdf() {
        html2canvas(document.body).then(function(canvas) {
          var imgData = canvas.toDataURL('image/png');
          var imgWidth = 210;
          var pageHeight = imgWidth * 1.414;
          var imgHeight = canvas.height * imgWidth / canvas.width;

          var doc = new jsPDF({
            'orientation': 'p',
            'unit': 'mm',
            'format': 'a4'
          });

          doc.addImage(imgData, 'PNG', 0, -24, imgWidth, imgHeight);
          doc.save('봉사인증서.pdf');
          console.log('Reached here?');
        });
      }

    </script>
</body>
</html>