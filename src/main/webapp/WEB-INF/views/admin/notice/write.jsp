<%@page import="com.kurly.marketkurly.domain.Notice"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Notice> noticeList = (List)request.getAttribute("noticeList");
	
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

<%@ include file="../inc/head_link.jsp" %>
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
            <h1 class="m-0">공지사항 등록</h1>
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
        <div class="row">
          <div class="col-12">
           <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">공지사항 작성란</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1" enctype="multipart/form-data">
                <div class="card-body">
                
                  
                  <div class="form-group">
                    <input type="text" class="form-control"  placeholder="제목 입력" name="title">
                  </div>
                  
                  <div class="form-group">
                    <input type="text" class="form-control"  placeholder="작성자" name="writer" >
                  </div>
                  
                  <div class="form-group">
                     <textarea id="summernote" name="content"></textarea>
                  </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="bt_write">등록</button>
                  <button type="button" class="btn btn-info" onClick="location.href='/admin/notice/list'">목록</button>
                </div>
              </form>
            </div>
          <!--  -->
            <!-- /.card -->
          </div>
        </div>
      
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
<!-- bs-custom-file-input 파일 컴포넌트 커스터마이징 -->
<script src="/resources/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>
<script>
$ (function () {
  bsCustomFileInput.init();
  $('#summernote').summernote({
      placeholder: '내용 작성',
      tabsize: 2,
      height: 450,
      
    });

 
  
  
  $("#bt_write").click(function(){
	  write();
  })
  
  
  
});


function write(){
	$("form[name='form1']").attr({
		action:"/admin/notice/write",
		method:"post"
	})
	$("form[name='form1']").submit();
};





</script>
</body>
</html>
