<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>



<script>
	$(document).ready(function() {
		var userInputId = getCookie("userInputId");//저장된 쿠기값 가져오기
		$("input[name='uemail']").val(userInputId);

		if ($("input[name='uemail']").val() != "") { // 그 전에 ID를 저장해서 처음 페이지 로딩
			// 아이디 저장하기 체크되어있을 시,
			$("#idSaveCheck").attr("checked", true); // ID 저장하기를 체크 상태로 두기.
		}

		$("#idSaveCheck").change(function() { // 체크박스에 변화가 발생시
			if ($("#idSaveCheck").is(":checked")) { // ID 저장하기 체크했을 때,
				var userInputId = $("input[name='uemail']").val();
				setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			} else { // ID 저장하기 체크 해제 시,
				deleteCookie("userInputId");
			}
		});

		// ID 저장하기를 체크한 상태에서 ID를 입력하는 경우, 이럴 때도 쿠키 저장.
		$("input[name='uemail']").keyup(function() { // ID 입력 칸에 ID를 입력할 때,
			if ($("#idSaveCheck").is(":checked")) { // ID 저장하기를 체크한 상태라면,
				var userInputId = $("input[name='uemail']").val();
				setCookie("userInputId", userInputId, 7); // 7일 동안 쿠키 보관
			}
		});
	});

	function setCookie(cookieName, value, exdays) {
		var exdate = new Date();
		exdate.setDate(exdate.getDate() + exdays);
		var cookieValue = escape(value)
				+ ((exdays == null) ? "" : "; expires=" + exdate.toGMTString());
		document.cookie = cookieName + "=" + cookieValue;
	}

	function deleteCookie(cookieName) {
		var expireDate = new Date();
		expireDate.setDate(expireDate.getDate() - 1);
		document.cookie = cookieName + "= " + "; expires="
				+ expireDate.toGMTString();
	}

	function getCookie(cookieName) {
		cookieName = cookieName + '=';
		var cookieData = document.cookie;
		var start = cookieData.indexOf(cookieName);
		var cookieValue = '';
		if (start != -1) {
			start += cookieName.length;
			var end = cookieData.indexOf(';', start);
			if (end == -1)
				end = cookieData.length;
			cookieValue = cookieData.substring(start, end);
		}
		return unescape(cookieValue);
	}
</script>
</head>
  <body>
 
<h1>로그인</h1>
<hr>
<form action="/user/login/login" method="post" onsubmit="return onSignIn(googleUser)">
<label for ="uemail">이메일</label>
<input type="text" name="uemail" id="uemail" placeholder="email" required="required"/>
<br><br>
<label for ="upassword">비밀번호</label>
<input type="password" name="upassword" id="upassword"/>
<br><br>

<input type="checkbox" id="idSaveCheck"/>이메일 저장하기<br><br>
<button id="loginbtn">로그인</button>
<button type="reset">취소</button>
</form>
<a href="/user/join">회원가입</a>
<br>
<a href="${google_url }"><button id="btnJoinGoogle" class="btn btn-primary btn-round"
stype="width: 100%"><i class="fa fa-google" aria-hidden="true"></i>Google Login</button></a>
</body>
</html>