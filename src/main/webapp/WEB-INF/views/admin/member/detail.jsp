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
            <h1 class="m-0">카테고리 등록</h1>
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
              
              
              	<input type="hidden" name="member_id" value="<%=member.getMember_id()%>">
              	
              	
                <div class="card-body">
                
                  <div class="form-group">
                    아이디 <input type="text" class="form-control" value="<%=member.getUser_id() %>" name="user_id" readonly>
                    이름 <input type="text" class="form-control" value="<%=member.getMember_name() %>" name="member_name" readonly>
                    이메일 <input type="text" class="form-control" value="<%=member.getEmail() %>" name="email" readonly>
                    주소<input type="text" class="form-control" value="<%=member.getAddr() %>" name="addr" readonly>
                    성별<input type="text" class="form-control" value="<%=member.getGender() %>" name="gender" readonly>
                    생일<input type="text" class="form-control" value="<%=member.getBirth()%>" name="birth" readonly>
                  </div>
                  
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" onClick="bt_del()">삭제</button>
                  <button type="button" class="btn btn-info" onClick="location.href='/admin/member/list';">목록</button>
                </div>
              
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

</script>
<script>
//수정하기
function bt_edit(){
	if(confirm("수정하시겠습니까?")){
		form1.action="/admin/member/update";
		form1.method="post";
		form1.submit();
	}
}
function bt_del(){
	if(confirm("삭제하시겠어요?")){
		location.href="/admin/member/delete?member_id=<%=member.getMember_id()%>";
	}
}



</script>
</body>
</html>










