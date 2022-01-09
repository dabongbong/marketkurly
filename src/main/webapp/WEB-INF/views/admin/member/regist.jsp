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
                  
                    <input type="text" class="form-control" name="user_id" id="user_id" placeholder="아이디를 입력해주세요">
                    
                  <label for="name">이름</label>
                     <input type="text" class="form-control" name="member_name"  placeholder="이름을 입력해주세요">
                    
                  <label for="pass">비밀번호</label>
                     <input type="password" class="form-control"  name="member_pass"  placeholder="비밀번호를 입력해주세요">
                     
                  <label for="pass2">비밀번호 확인</label>
                     <input type="password" class="form-control"  name="member_pass2"  placeholder="비밀번호를 입력해주세요">
                    
                  <label for="email">이메일</label>
                     <input type="email" class="form-control"  name="email"  placeholder="이메일을 입력해주세요">
                    
                  <label for="phone">핸드폰</label>
                    <input type="text" class="form-control"  name="phone"  placeholder="010-0000-0000">
                    
                  <label for="addr">주소</label>
                    <input type="text" class="form-control"  name="addr"  placeholder="주소를 입력해주세요">
                    
                  <label for="gender">성별</label>
                    <label><input type="radio" name="gender" value="남" checked/>남</label>
                    <label><input type="radio" name="gender" value="여" />여</label>
                    <p>


                  <label for="id">생일</label>
                    <input type="text" class="form-control"  name="birth"  placeholder="생일을 입력해주세요">
                  </div>
                  
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" onClick="regist()">회원등록</button>
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





</script>
</body>
</html>










