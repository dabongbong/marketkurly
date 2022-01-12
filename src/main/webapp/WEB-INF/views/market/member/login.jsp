<%@ page contentType="text/html; charset=UTF-8"%>
<%@ include file="../inc/header.jsp" %>


    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>로그인</h2>
                        <form id="form1">
                            <div class="group-input">
                                <input type="text" id="user_id" name="user_id" placeholder="아이디를 입력해주세요">
                            </div>
                            
                            <div class="group-input">
                                <input type="password" id="member_pass" name="member_pass" placeholder="비밀번호를 입력해주세요">
                            </div>
                            <div class="group-input gi-check">
                                <div class="gi-more">
                                    <label for="save-pass">
                                        보안접속
                                        <input type="checkbox" id="save-pass">
                                        <span class="checkmark"></span>
                                    </label>
                                    <a href="#" class="forget-pass">비밀번호 찾기</a>
                                    <a href="#" class="forget-pass">아이디 찾기&nbsp;| &nbsp;</a> 
                                </div>
                                <%-- 
                                <c:if test="${result==0}">
                              		 <div class = "login_warn">사용자 ID 또는 비밀번호를 잘못 입력하셨습니다.</div>
                              	 </c:if>
                              	  --%>
                            </div>
                            <button type="button" class="site-btn login-btn" id="login-btn" onClick="loginCheck()">로그인</button>
                            <button type="button" class="site-btn login-btn" id="login-btn2" onClick="location.href='/registform'">회원가입</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->

   <%@ include file="../inc/footer.jsp" %>
   
<script type="text/javascript">

function loginCheck(){
	$.ajax({
		url:"/login",
		type:"POST",
		data:{
			user_id:$("input[name='user_id']").val(),
			member_pass:$("input[name='member_pass']").val()
		
		},
		success:function(result, status, xhr){ //200요청에 애한 처리 메서드
			alert(result.msg);
		
			if(result.code==1){
				location.href="/";
			}
			
		}
		
	});
	
}
</script>
</body>
</html>