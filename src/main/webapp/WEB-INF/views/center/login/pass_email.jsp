<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<jsp:include page="/WEB-INF/views/layout/c_header.jsp"></jsp:include>
 
<table border="1" width="300" height="300" align= "center">
<center>
<span style="color: green; font-weight: bold;">입력한 이메일로 받은 인증번호를 입력하세요. (인증번호가 맞아야 비밀번호를 변경하실 수 있습니다.)</span> <br> <br>    
        <br> <br>
        
        
        <div style="text-align:center;">
            <tr>        
                <td>
                    <form action="pass_injeung${dice},${memail}" method="post">
                    
                        <br>
                        <div>
                            인증번호 입력 : <input type="number" name="pass_injeung"
                                placeholder="  인증번호를 입력하세요. ">
                        </div>                                        
 
						<input hidden="hidden" type="email" value="${memail }"	id="memail" name="memail"/>			 	
                        <br> <br>
                        <button type="submit" name="submit">인증번호 전송</button>
 
				        </form>
                        </div>
                    </td>
                </tr>
            </table>
 
<jsp:include page="/WEB-INF/views/layout/footer.jsp"></jsp:include>
