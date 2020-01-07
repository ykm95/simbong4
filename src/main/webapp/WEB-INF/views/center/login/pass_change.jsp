<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>itle>

<!-- jQuery 2.2.4 -->
<script type="text/javascript"
	src="http://code.jquery.com/jquery-2.2.4.min.js"></script>
<script>
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
	
	});
</script>
</head>

<body>

	<table border="1" width="300" height="300" align="center">
		<center>
			<span style="color: green; font-weight: bold;">변경할 비밀번호를
				입력해주세요.</span> <br> <br> <br> <br>


			<div style="text-align: center;">
				<tr>
					<td>
						<form action="/center/pass_change${memail}" method="post">

							<br>
							<div>
								변경할 비밀번호 입력 : <input type="password" name="center_pass"
									placeholder="비밀번호를 입력하세요.">
							</div>

							<br> <br> <label for="cpasswordchk">변경된 비밀번호 확인:</label><br>
							 <input
								type="password" name="cpasswordchk" id="cpasswordchk" />
							<div class="check_front" id="pw_check"></div>
							<button type="submit" name="submit">비밀번호 변경</button>

						</form>
			</div>
			</td>
			</tr>
	</table>


<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
