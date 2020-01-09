<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<script type = "text/javascript" src = "http://code.jquery.com/jquery-latest.min.js"></script>
<script type = "text/javascript" src = "https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
<script type = "text/javascript" src = "https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<script type="text/javascript">

$(document).ready(function() {
	
	$('#create_pdf').click(function() {
	  //pdf_wrap을 canvas객체로 변환
	  html2canvas($('#pdf_wrap')[0]).then(function(canvas) {
	    var doc = new jsPDF('p', 'mm', 'a4'); //jspdf객체 생성
	    var imgData = canvas.toDataURL('image/png'); //캔버스를 이미지로 변환
	    doc.addImage(imgData, 'PNG', 0, 0); //이미지를 기반으로 pdf생성
	    doc.save('봉사인증서.pdf'); //pdf저장
	  });
	});
	

});
</script>

<style type="text/css">
#pdf_wrap {
  text-align:center;
}

#pdf_wrap > h1 {
  color:blue;
}

#data{
	padding: 300px;

}

</style>
<title>Insert title here</title>
</head>
<body>
 <div id="pdf_wrap">
    <button id="create_pdf">
      <img width="70px" src="/resources/img/pdf다운로드.png">
    </button>
      <h2>
        ${view.noticeTitle }
      </h2>
      <h1>
        pdf 테스트
      </h1>
      
      
      <div id="data" style="border:1px solid #ccc"></div>
     
    </div>
    
    <script type = "text/javascript" src = "http://code.jquery.com/jquery-latest.min.js"></script>
    <script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/jspdf/1.5.3/jspdf.min.js"></script>
    <script type="text/javascript" src="https://html2canvas.hertzen.com/dist/html2canvas.min.js"></script>

</body>
</html>