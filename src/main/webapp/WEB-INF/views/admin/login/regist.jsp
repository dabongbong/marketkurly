<%@page import="com.kurly.marketkurly.domain.Admin"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Admin admin=(Admin)request.getAttribute("admin");
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
            <h1 class="m-0">관리자 등록</h1>
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
                     <input type="text" class="form-control" name="name" id="name"  placeholder="이름을 입력해주세요" required>
                    <div class="check_font" id="name_check"></div>
                    
                  <label for="pass">비밀번호</label>
                     <input type="password" class="form-control"  name="pass" id="pass" placeholder="비밀번호를 입력해주세요">
                    <div class="check_font" id="pw_check"></div>
                     
                  <label for="pass2">비밀번호 확인</label>
                     <input type="password" class="form-control"  name="pass2" id="pass2" placeholder="비밀번호를 입력해주세요">
                    <div class="check_font" id="pw2_check"></div>
                    
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="reg" onClick="regist()">등록</button>
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
	form1.action="/admin/login/regist";
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
					$("#id_check").text("사용중인 아이디입니다");
					$("#id_check").css("color", "red");
					$("#reg").attr("disabled", true);
				} else {
					
					if(idJ.test(user_id)){
						// 0 : 아이디 길이 / 문자열 검사
						$("#id_check").text("");
						$("#reg").attr("disabled", false);
			
					} else if(user_id == ""){
						
						$('#id_check').text('아이디를 입력해주세요');
						$('#id_check').css('color', 'red');
						$("#reg").attr("disabled", true);				
						
					} else {
						
						$('#id_check').text("아이디는 소문자와 숫자 4~12자리만 가능합니다");
						$('#id_check').css('color', 'red');
						$("#reg").attr("disabled", true);
					}
					
				}
			}, error : function() {
					console.log("실패");
			}
		});
		
	});

	var empJ = /\s/g;
	//아이디 정규식
	var idJ = /^[a-z0-9]{4,12}$/;
	// 비밀번호 정규식
	var pwJ = /^[A-Za-z0-9]{4,12}$/; 
	// 이름 정규식
	var nameJ = /^[가-힣]{2,6}$/;
	// 이메일 검사 정규식
	var mailJ = /^[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*@[0-9a-zA-Z]([-_.]?[0-9a-zA-Z])*.[a-zA-Z]{2,3}$/i;
	// 휴대폰 번호 정규식
	var phoneJ = /01[016789]-[^0][0-9]{2,3}-[0-9]{3,4}/;

	// 이름에 특수문자 들어가지 않도록 설정
	$("#member_name").blur(function() {
		if (nameJ.test($(this).val())) {
				console.log(nameJ.test($(this).val()));
				$("#name_check").text(' ');
		} else {
			$('#name_check').text('이름을 확인해주세요');
			$('#name_check').css('color', 'red');
		}
	});
	// 휴대전화
	$('#phone').blur(function(){
		if(phoneJ.test($(this).val())){
			console.log(nameJ.test($(this).val()));
			$("#phone_check").text(' ');
		} else {
			$('#phone_check').text('휴대폰번호를 확인해주세요');
			$('#phone_check').css('color', 'red');
		}
	});
	
	//비밀번호
	$('#member_pass').blur(function(){
		if(pwJ.test($(this).val())){
			console.log(nameJ.test($(this).val()));
			$('#pw_check').text(' ');
		}else{
			console.log('false');
			$('#pw_check').text('숫자 or 문자로만 4~12자리 입력');
			$('#pw_check').css('color', 'red');
		}
	});
	
	//패스워드 일치확인
	$('#member_pass2').blur(function(){
		if($('#member_pass').val() != $(this).val()){
			$('#pw2_check').text('비밀번호가 일치하지 않습니다');
			$('#pw2_check').css('color', 'red');
		}else{
			$('#pw2_check').text(' ');
		}
	});
	
	// 이메일
	$('#email').blur(function(){
		if(mailJ.test($(this).val())){
			console.log(nameJ.test($(this).val()));
			$("#email_check").text('');
		} else {
			$('#email_check').text('이메일 형식을 확인해주세요');
			$('#email_check').css('color', 'red');
		}
	});
	// 생일 유효성 검사
	var birthJ = false;
	
	// 생년월일	birthJ 유효성 검사
	$('#birth').blur(function(){
		var dateStr = $(this).val();		
	    var year = Number(dateStr.substr(0,4)); // 입력한 값의 0~4자리까지 (연)
	    var month = Number(dateStr.substr(4,2)); // 입력한 값의 4번째 자리부터 2자리 숫자 (월)
	    var day = Number(dateStr.substr(6,2)); // 입력한 값 6번째 자리부터 2자리 숫자 (일)
	    var today = new Date(); // 날짜 변수
	    var yearNow = today.getFullYear(); // 올해 연도 
		
	    if (dateStr.length <=8) {
			// 연도의 경우 1900 보다 작거나 yearNow 보다 크다면 false를 반환합니다.
		    if (1900 > year || year > yearNow){
		    	
		    	$('#birth_check').text('생년월일을 확인해주세요');
				$('#birth_check').css('color', 'red');
		    	
		    }else if (month < 1 || month > 12) {
		    		
		    	$('#birth_check').text('생년월일을 확인해주세요');
				$('#birth_check').css('color', 'red'); 
		    
		    }else if (day < 1 || day > 31) {
		    	
		    	$('#birth_check').text('생년월일을 확인해주세요');
				$('#birth_check').css('color', 'red'); 
		    	
		    }else if ((month==4 || month==6 || month==9 || month==11) && day==31) {
		    	 
		    	$('#birth_check').text('생년월일을 확인해주세요');
				$('#birth_check').css('color', 'red'); 
		    	 
		    }else if (month == 2) {
		    	 
		       	var isleap = (year % 4 == 0 && (year % 100 != 0 || year % 400 == 0));
		       	
		     	if (day>29 || (day==29 && !isleap)) {
		     		
		     		$('#birth_check').text('생년월일을 확인해주세요');
					$('#birth_check').css('color', 'red'); 
		    	
				}else{
					$('#birth_check').text('');
					birthJ = true;
				}//end of if (day>29 || (day==29 && !isleap))
		     	
		    }else{
		    	
		    	$('#birth_check').text(''); 
				birthJ = true;
			}//end of if
			
			}else{
				//입력된 생년월일이 8자 초과할때 :  auth:false
				$('#birth_check').text('생년월일을 확인해주세요');
				$('#birth_check').css('color', 'red');  
			}
		}); 

</script>

</body>
</html>










