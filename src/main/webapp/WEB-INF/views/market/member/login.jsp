<%@ page contentType="text/html; charset=UTF-8"%>

<%@ include file="../inc/header.jsp" %>

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Login</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Form Section Begin -->

    <!-- Register Section Begin -->
    <div class="register-login-section spad">
        <div class="container">
            <div class="row">
                <div class="col-lg-6 offset-lg-3">
                    <div class="login-form">
                        <h2>Login</h2>
                        <form action="#">
                            <div class="group-input">
                                <label for="user_id"></label>
                                <input type="text" id="user_id" name="user_id" placeholder="아이디를 입력해주세요">
                            </div>
                            <div class="group-input">
                                <label for="pass">Password *</label>
                                <input type="password" id="member_pass" name="member_pass" placeholder="비밀번호를 입력해주세요">
                            </div>
                            <button type="button" class="site-btn login-btn" onClick="loginCheck()">로그인</button>
                        </form>
                        <div class="switch-login">
                            <a href="/market/member/registform" class="or-login">Or Create An Account</a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Register Form Section End -->

    <!-- Partner Logo Section Begin -->
    <div class="partner-logo">
        <div class="container">
            <div class="logo-carousel owl-carousel">
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-1.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-2.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-3.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-4.png" alt="">
                    </div>
                </div>
                <div class="logo-item">
                    <div class="tablecell-inner">
                        <img src="img/logo-carousel/logo-5.png" alt="">
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Partner Logo Section End -->
<%@ include file="../inc/footer.jsp" %>
  <script type="text/javascript">
  /* 
  $(function(){
	  $("button").click(function(){
		  loginCheck();
	  });
  });
   */
  function loginCheck(){
		$.ajax({
			url:"/market/member/login",
			type:"POST",
			data:{
				user_id:$("input[name='user_id']").val(),
				pass:$("input[name='member_pass']").val()
			},
			success:function(result, status, xhr){
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