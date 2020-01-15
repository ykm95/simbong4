<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  
<jsp:include page="/WEB-INF/views/layout/c_header.jsp" />
   
<script type="text/javascript">
$(document).ready(function() {
	//취소버튼 동작
	$("#btnCancel").click(function() {
	history.back();
	});
});
</script>


<!-- 주소검색 -->
<script src="https://t1.daumcdn.net/mapjsapi/bundle/postcode/prod/postcode.v2.js"></script>
<script>
    function sample6_execDaumPostcode() {
        new daum.Postcode({
            oncomplete: function(data) {
                // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
            console.log(data)
                // 각 주소의 노출 규칙에 따라 주소를 조합한다.
                // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
                var addr = ''; // 주소 변수
                var extraAddr = ''; // 참고항목 변수

                //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
                if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
                    addr = data.roadAddress;
                } else { // 사용자가 지번 주소를 선택했을 경우(J)
                    addr = data.jibunAddress;
                }

                // 사용자가 선택한 주소가 도로명 타입일때 참고항목을 조합한다.
                if(data.userSelectedType === 'R'){
                    // 법정동명이 있을 경우 추가한다. (법정리는 제외)
                    // 법정동의 경우 마지막 문자가 "동/로/가"로 끝난다.
                    if(data.bname !== '' && /[동|로|가]$/g.test(data.bname)){
                        extraAddr += data.bname;
                    }
                    // 건물명이 있고, 공동주택일 경우 추가한다.
                    if(data.buildingName !== '' && data.apartment === 'Y'){
                        extraAddr += (extraAddr !== '' ? ', ' + data.buildingName : data.buildingName);
                    }
                    // 표시할 참고항목이 있을 경우, 괄호까지 추가한 최종 문자열을 만든다.
                    if(extraAddr !== ''){
                        extraAddr = ' (' + extraAddr + ')';
                    }
                    // 조합된 참고항목을 해당 필드에 넣는다.
//                     document.getElementById("sample6_extraAddress").value = extraAddr;
                
                } 
//                 else {
//                     document.getElementById("sample6_extraAddress").value = '';
//                 }

                // 우편번호와 주소 정보를 해당 필드에 넣는다.
//                 document.getElementById('uaddress1').value = data.zonecode;
//                 document.getElementById("uaddress2").value = addr;
                
                
//                 $("[name=uaddress1]").val(data.zonecode);
//                 $("[name=uaddress2]").val(addr);

            $("#address1").val(data.zonecode);
                $("#address2").val(addr);
                
                // 커서를 상세주소 필드로 이동한다.
                document.getElementById("address3").focus();
            }
        }).open();
    }
</script>

<!-- 이메일 중복 체크 -->
<script>
$(document).ready(function() {
   
   // 이메일 유효성 검사(1 = 중복 / 0 != 중복)
   $("#businessno").blur(function() {
      console.log("zz");
      var businessno = $('#businessno').val();
      $.ajax({
         url : '${pageContext.request.contextPath}/center/bnoCheck?businessno='+businessno,
         type : 'get',
         success : function(data) {
            console.log("1 = 중복o / 0 = 중복x : "+ data);         
            
            
            if (data==1) {
               // 1 : 아이디가 중복되는 문구
               $("#bno_check").text("사용중인 사업자번호입니다 :p");
               $("#bno_check").css("color", "red");
               $("#reg_submit").attr("disabled", true);
            
            } else{
            
               console.log("a");
               var regExp =/([0-9]{3})([0-9{2}])([0-9]{5})/;
               if(regExp.test(businessno)){
                  
                  
               console.log("b");
                  // 0 : 아이디 길이 / 문자열 검사
                  $("#bno_check").text("");
//                   $("#reg_submit").attr("disabled", false);
               console.log(checkBisNo(businessno));
                  if(checkBisNo(businessno)) {
                  $("#bno_check").text("사용가능한 사업자 번호 입니다 .");
                  $("#bno_check").css("color", "blue");
                  }else {
                     $('#bno_check').text('사업자 번호를  확인해주세요.');
                     $('#bno_check').css('color', 'red');
                     $("#reg_submit").attr("disabled", true);
                  }
         
               } else if(businessno == ""){

                  $('#bno_check').text('사업자 번호를 입력해주세요.');
                  $('#bno_check').css('color', 'red');
                  $("#reg_submit").attr("disabled", true);            
                  
               } else {
                  
                  $('#bno_check').text("사업자번호 형식으로 입력해주세요.");
                  $('#bno_check').css('color', 'red');
                  $("#reg_submit").attr("disabled", true);
               }
               
            
            }
         }, error : function() {
               console.log("실패");
         }
      });
   });
   
   
});


</script>


<script>
function checkAll(){
   
     if($("#cname").val() == ""){
          $("#cname").focus();
          return false;
        }
     else if($("#memail").val() == ""){
          $("#memail").focus();
          return false;
        }
     else if($("#business").val() == ""){
          $("#business").focus();
          return false;
        }
     else if($("#cpassword").val() == ""){
          $("#cpassword").focus();
          return false;
        }
     else if($("#cpasswordchk").val() == ""){
          $("#cpasswordchk").focus();
          return false;
        }
     else if($("#mphone").val() == ""){
          $("#mphone").focus();
          return false;
        }
   
     else if($("#address1").val() == ""){
          $("#address1").focus();
          return false;
        }
     else if($("#address2").val() == ""){
          $("#address2").focus();
          return false;
        }
     else if($("#address3").val() == ""){
          $("#address3").focus();
          return false;
        }
     else{
    return true;
     }
 }


function checkPassword(cpassword){
    
    if(!/^(?=.*[a-zA-Z])(?=.*[!@#$%^*+=-])(?=.*[0-9]).{8,25}$/.test(cpassword)){            
//           alert('숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.');
   $('#pw_form').text("숫자+영문자+특수문자 조합으로 8자리 이상 사용해야 합니다.");
   $('#pw_form').css('color', 'red');
//    $("#reg_submit").attr("disabled", true);
//         $('#upassword').val('').focus();
        return false;
    }    
    var checkNumber = cpassword.search(/[0-9]/g);
    var checkEnglish = cpassword.search(/[a-z]/ig);
    if(checkNumber <0 || checkEnglish <0){
//           alert("숫자와 영문자를 혼용하여야 합니다.");             
        $('#pw_form').text("숫자와 영문자를 혼용하여야 합니다.");
        $('#pw_form').css('color', 'red');
//       $("#reg_submit").attr("disabled", true);

//         $('#upassword').val('').focus();
        return false;
    }
    if(/(\w)\1\1\1/.test(cpassword)){
//           alert('같은 문자를 4번 이상 사용하실 수 없습니다.');
      $('#pw_form').text("같은 문자를 4번 이상 사용하실 수 없습니다.");
        $('#pw_form').css('color', 'red');
//       $("#reg_submit").attr("disabled", true);

//         $('#upassword').val('').focus();
        return false;
    }
        
      $('#pw_form').text("");
    return true;
}



//사업자번호 체크
function checkBisNo(businessno)
{
   // 넘어온 값의 정수만 추츨하여 문자열의 배열로 만들고 10자리 숫자인지 확인합니다.
   if ((businessno = (businessno+'').match(/\d{1}/g)).length != 10) { return false; }
   
   // 합 / 체크키
   var sum = 0, key = [1, 3, 7, 1, 3, 7, 1, 3, 5];
   
   // 0 ~ 8 까지 9개의 숫자를 체크키와 곱하여 합에더합니다.
   for (var i = 0 ; i < 9 ; i++) { sum += (key[i] * Number(businessno[i])); }
   
   // 각 8번배열의 값을 곱한 후 10으로 나누고 내림하여 기존 합에 더합니다.
   // 다시 10의 나머지를 구한후 그 값을 10에서 빼면 이것이 검증번호 이며 기존 검증번호와 비교하면됩니다.
   return (10 - ((sum + Math.floor(key[8] * Number(businessno[8]) / 10)) % 10)) == Number(businessno[9]);
}

$(document).ready(function() {
   
   
   $("#cpassword").blur(function(){
       checkPassword($('#cpassword').val());
       $('#cpasswordchk').val("");
   });
      

   //비밀번호 확인
   $('#cpasswordchk').blur(function() {
      if ($('#cpasswordchk').val() == '') {
         $('#pw_check').css('color', 'red');
         $("#reg_submit").attr("disabled", true);

         $('#pw_check').text("비밀번호입력!!");
         return false;
      }

      if ($('#cpassword').val() != $('#cpasswordchk').val()) {
         $('#pw_check').css('color', 'red');
         $("#reg_submit").attr("disabled", true);

         $('#pw_check').text("비밀번호가 일치하지 않습니다.");
         return false;
      }

      $('#pw_check').text("비밀번호가 일치합니다.");
      $('#pw_check').css('color', 'blue');
      $("#reg_submit").attr("disabled", false);
   })
   
   
   //전화번호 유효성 검사

   $('#mph1').blur(function() {
//    var regExp = /(^01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;

//    var regExp=/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

   var regExp=/^{3,4}/;

   
   if (!regExp.test($('#mph1').val())) {
         if($('#mph1').val()!=""){
//          alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.1");
         $('#phone_check').text("잘못된 휴대폰 번호입니다.");
         $('#phone_check').css('color', 'red');f

         return false
         }

      }
   if (regExp.test($('#mph1').val())) {
      if($('#mph1').val()!=""){
      $('#phone_check').text("올바른 전화번호 입니다.");
      $('#phone_check').css('color', 'blue');

//       alert($("#mphone").val());
      return true
      }

   }
   return false;
   });
   
   //전화번호 유효성 검사

   $('#mphone').blur(function() {
//    var regExp = /(^01[016789])([1-9]{1}[0-9]{2,3})([0-9]{4})$/;

//    var regExp=/^01([0|1|6|7|8|9]?)-?([0-9]{3,4})-?([0-9]{4})$/;

   var regExp2=/d{4}/;

   
   if (!regExp.test($('#mphone').val())) {
         if($('#mphone').val()!=""){
//          alert("잘못된 휴대폰 번호입니다. 숫자, - 를 포함한 숫자만 입력하세요.1");
         $('#phone_check').text("잘못된 휴대폰 번호입니다.");
         $('#phone_check').css('color', 'red');f

         return false
         }

      }
   if (regExp.test($('#mphone').val())) {
      if($('#mphone').val()!=""){
      $('#phone_check').text("올바른 전화번호 입니다.");
      $('#phone_check').css('color', 'blue');

      return true
      }

   }
   return false;
   });

});
</script>

<style type="text/css">
td{
   height: 30px;
    font-size: 15px;
    padding: 5px;
}

</style>



<div class="container">
<br>

<div  style="text-align: -webkit-center;">
  <div class="container">

<form action="/center/mypage/update" method="post" onsubmit="return checkAll()">
<input type="hidden" value="${center.centerno }" name="centerno"/>
<table >
   <tr>
      <td>
         <label for ="cname" style="font-weight: bolder;">센터이름</label>
      </td>
      <td>
         ${center.cname }
      </td>
   </tr>
   
   <tr>
      <td><label for ="cpassword" style="font-weight: bolder;">비밀번호</label></td>
      <td><div class="form-group">
      <input type="password" name="cpassword" id="cpassword" class="form-control"/></div></td>
   </tr>
   
   <tr>
      <td colspan="2"><p class="check_front" id="pw_form"></p></td>
   </tr>

   <tr>
      <td><label for ="cpasswordchk" style="font-weight: bolder;">비밀번호 확인</label></td>
      <td><div class="form-group">
      <input type="password" name="cpasswordchk" id="cpasswordchk" class="form-control"/></div></td>
   </tr>
   <tr>
      <td colspan="2"><p class="check_front" id="pw_check"></p></td>
   </tr>

   <tr>
      <td><label for ="mphone" style="font-weight: bolder;">담당자번호</label></td>
      <td><div class="form-group">
      <input type="tel" name="mphone" id="mphone" value="${center.mphone }" class="form-control"/></div></td>
   </tr>
   <tr>
      <td colspan="2"><p class="check_front" id="phone_check"> </p></td>
   </tr>
   <tr>
      <td><label for="memail" style="font-weight: bolder;">담당자이메일</label></td>
      <td><div class="form-group"><input type="text" name="memail" value="${center.memail }" class="form-control" /></div></td>
   </tr>

   <tr>
      <td><label style="font-weight: bolder;">담당자명</label></td>
      <td><div class="form-group"><input type="text" name="mgr" value="${center.mgr }" class="form-control"></div></td>
   </tr>

   <tr>
      <td colspan="2"><label style="font-weight: bolder;">주소</label></td>
   </tr>
   <tr>
      <td><div class="form-group"><input type="text" id="address1" name="address1" value="${center.address1 }" class="form-control"/></div></td>
      
      <td><input style="margin-bottom: 13px;" type="button" class="btn btn-secondary" onclick="sample6_execDaumPostcode()" value="우편번호 찾기"/></td>
   </tr>
<tr>
<td><div class="form-group"><input type="text" id="address2" name="address2" value="${center.address2 }" class="form-control"/></div></td>
<td><div class="form-group"><input type="text" id="address3" name="address3" value="${center.address3 }" class="form-control"/></div></td>
</tr>
</table>

<br>
<div>
<button  class="btn btn-primary" id="reg_submit">수정</button>
<button  type="button" class="btn btn-danger" id="btnCancel">취소</button>
<br><br>
</div>
</form>
  </div>
</div>
</div>


<jsp:include page="/WEB-INF/views/layout/footer.jsp" />