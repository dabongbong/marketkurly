<%@page import="com.kurly.marketkurly.domain.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%><%
	Member member=(Member)request.getAttribute("member");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
	
	<%@ include file="../inc/head_link.jsp" %>
  <!-- summernote -->
  <link rel="stylesheet" href="/resources/admin/plugins/summernote/summernote-bs4.min.css">
<link href="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.css" rel="stylesheet">

</head>
<body class="hold-transition sidebar-mini layout-fixed">
<div class="wrapper">

  <!-- Preloader -->
  <div class="preloader flex-column justify-content-center align-items-center">
    <img class="animation__shake" src="/resources/admin/dist/img/AdminLTELogo.png" alt="AdminLTELogo" height="60" width="60">
  </div>

  <!-- Navbar -->
  <%@ include file="../inc/navbar.jsp" %>
  <!-- /.navbar -->

  <!-- Main Sidebar Container -->
  <%@ include file="../inc/sidebar.jsp" %>  

  <!-- Content Wrapper. Contains page content -->
  <div class="content-wrapper">
    <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">회원등록</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->

    <!-- Main content -->
    <section class="content">
      <div class="container-fluid">
        <!-- Small boxes (Stat box) -->
        <div class="row">
          <div class="col-12">
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">상세내용</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1">
              	
              	
                <div class="card-body">
                
                  <div class="form-group">
                  <label for="id">아이디</label>
                    <input type="text" class="form-control" name="user_id" id="user_id" placeholder="아이디를 입력해주세요" >
                     <div class="check_font" id="id_check"></div>
                  <!--   
                    <span class="id-input1" style="color:green; display:none;">사용 가능한 아이디 입니다.</span>
                    <span class="id-input2" style="color:red; display:none;">이미 있는 아이디 입니다.</span><p>
                     -->
                     
                  <label for="name">이름</label>
                     <input type="text" class="form-control" name="member_name" id="member_name"  placeholder="이름을 입력해주세요" required>
                    <div class="check_font" id="name_check"></div>
                    
                  <label for="pass">비밀번호</label>
                     <input type="password" class="form-control"  name="member_pass" id="member_pass" placeholder="비밀번호를 입력해주세요">
                    <div class="check_font" id="pw_check"></div>
                     
                  <label for="pass2">비밀번호 확인</label>
                     <input type="password" class="form-control"  name="member_pass2" id="member_pass2" placeholder="비밀번호를 입력해주세요">
                    <div class="check_font" id="pw2_check"></div>
                    
                  <label for="email">이메일</label>
                     <input type="email" class="form-control"  name="email" id="email"  placeholder="이메일을 입력해주세요">
                    <div class="check_font" id="email_check"></div>
                    
                  <label for="phone">핸드폰</label>
                    <input type="text" class="form-control"  name="phone" id="phone" placeholder="010-0000-0000">
                    <div class="check_font" id="phone_check"></div>
                    
                  <label for="addr">주소</label>
                    <input type="text" class="form-control"  name="addr" id="addr" placeholder="주소를 입력해주세요">
                    
                  <label for="gender">성별</label>
                    <label><input type="radio" name="gender" value="남" checked/>남</label>
                    <label><input type="radio" name="gender" value="여" />여</label>
                    <p>


                  <label for="id">생일</label>
                    <input type="text" class="form-control"  name="birth" id="birth" placeholder="생일을 입력해주세요">
                    <div class="check_font" id="birth_check"></div>
                  </div>
                  
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="reg" onClick="regist()">회원등록</button>
                </div>
              </form>
            </div>
            
            <!-- /.card -->
          </div>
        
       </div>
        
        <!-- /.row (main row) -->
      </div><!-- /.container-fluid -->
    </section>
    <!-- /.content -->
  </div>
  <!-- /.content-wrapper -->
  
  <%@ include file="../inc/footer.jsp" %>  
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->

<%@ include file="../inc/bottom_link.jsp" %>

<!-- Summernote -->
<script src="/resources/admin/plugins/summernote/summernote-bs4.min.js"></script>

<!-- bs-custom-file-input 파일컴포넌트 커스터마이징 -->
<script src="/resources/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>


<script>

function regist(){

	var form1 = document.form1;
	if(!form1.user_id.value){
		alert("id를 입력하세요");
		form1.user_id.focus();
		
		return false;
	}
	if(!form1.member_name.value){
		alert("이름를 입력하세요");
		form1.member_name.focus();
		
		return false;
	}
	
	if(!form1.member_pass.value){
		alert("비밀번호를 입력하세요");
		form1.member_pass.focus();
		
		return false;
	}
	
	if(!form1.member_pass2.value){
		alert("비밀번호 입력하세요");
		form1.member_pass2.focus();
		
		return false;
	}
	
	if(form1.member_pass.value != form1.member_pass2.value){
		alert("비밀번호가 일치하지 않습니다.");
		form1.member_pass2.focus();
		
		return false;
	}
	
	if(!form1.email.value){
		alert("이메일을 입력하세요");
		form1.email.focus();
		
		return false;
	}
	if(!form1.phone.value){
		alert("핸드폰 번호를 입력하세요");
		form1.addr.focus();
		
		return false;
	}
	if(!form1.addr.value){
		alert("주소를 입력하세요");
		form1.addr.focus();
		
		return false;
	}
	
	if(!form1.gender.value){
		alert("성별 입력하세요");
		form1.addr.focus();
		
		return false;
	}
	 
	if(!form1.birth.value){
		alert("주소를 입력하세요");
		form1.addr.focus();
		
		return false;
	}
	
	form1.action="/admin/member/regist";
	form1.method="post";
	form1.submit();
}
//아이디 유효성 검사(1 = 중복 / 0 != 중복)
$("#user_id").blur(function() {
	// 
	
	var idJ = /^[a-z0-9]{4,12}$/;


	var user_id = $('#user_id').val();
	$.ajax({
		url : '/admin/member/idCheck?user_id='+ user_id,
		type : 'get',
		success : function(data) {
			console.log("1 = 중복o / 0 = 중복x : "+ data);							
			
			if (data == 1) {
					// 1 : 아이디가 중복되는 문구
					$("#id_check").text("사용중인 아이디입니다 :p");
					$("#id_check").css("color", "red");
					$("#reg").attr("disabled", true);
				} else {
					
					if(idJ.test(user_id)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("");
						$("#reg").attr("disabled", false);
			
					} else if(user_id == ""){
						
						$('#id_check').text('아이디를 입력해주세요 :)');
						$('#id_check').css('color', 'red');
						$("#reg").attr("disabled", true);				
						
					} else {
						
						$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다 :) :)");
						$('#id_check').css('color', 'red');
						$("#reg").attr("disabled", true);
					}
					
				}
			}, error : function() {
					console.log("실패");
			}
		});
		
	});








</script>

</body>
</html>










