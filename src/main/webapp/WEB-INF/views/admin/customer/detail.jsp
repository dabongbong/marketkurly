<%@page import="com.kurly.marketkurly.domain.My_qna"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
	My_qna my_qna = (My_qna)request.getAttribute("my_qna");
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
            <h1 class="m-0">공지사항 관리</h1>
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
                <h3 class="card-title">상세 내용</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1">
              		<input type="hidden" name="my_qna_no" value="<%=my_qna.getMy_qna_no() %>">
				    
				 <div class="card-body">
				 	<div class="form-group">
				 	<th>제목</th><p>
					    <input type="text"  	name="title" class="form-control" value="<%=my_qna.getTitle() %>">
					</div>
					
					<div class="form-group">
					<th>작성자</th><p>
					    <input type="text"  	name="writer" class="form-control" value="<%=my_qna.getMember() %>">
					</div>
					
					<div class="form-group">
					<th>내용</th><p>
					    <textarea name="content" class="form-control" style="height:450px"><%=my_qna.getContent() %></textarea>
					</div>
					
					<div class="card-footer">
						<button type="button" class="btn btn-info" id="bt_edit">수정</button>
						<button type="button" class="btn btn-info" id="bt_del">삭제</button>
						<button type="button" class="btn btn-info" onClick="location.href='/admin/customer/my_qna'">목록</button>
	            	</div>
          
				</div>
            </form>
            <!-- /.card -->
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

<!-- bs-custom-file-input 파일컴포넌트 커스터마이징 -->
<script src="/resources/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


<script>
$(function () {
  bsCustomFileInput.init();
});

</script>

<script>
$(function () {
	$("#bt_edit").click(function(){
		edit();
	});

	$("#bt_del").click(function(){
		del();
	});
	 
})

// 수정 삭제
	
function edit(){
	if(confirm("수정하시겠습니까?")){
		form1.action="/admin/customer/update";
		form1.method="post";
		form1.submit();
	}
}
function del(){
	if(confirm("삭제하시겠습니까?")){
		location.href="/admin/cutomer/delete?my_qna=<%=my_qna.getMy_qna_no()%>";
	}
}
 
</script>
</body>
</html>