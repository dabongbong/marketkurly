<%@page import="com.kurly.marketkurly.domain.OrderDetail"%>
<%@page import="com.kurly.marketkurly.domain.OrderSummary"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	String order_number = request.getParameter("order_number");
	List<OrderDetail> orderDetail = (List)request.getAttribute("orderDetail");
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
            <h1 class="m-0">주문 상세 내역</h1>
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
                <h3 class="card-title">주문 번호 &nbsp;&nbsp;
	                <strong>
	                	<%=order_number %>
	                </strong>
                </h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1">
              	<input type="hidden" name="_method" value="PUT">
              	<input type="hidden" name="notice_id" value="">
                <div class="card-body">
                <%for(OrderDetail orderDetailList : orderDetail){ %>
                  <div class="form-group">
                  	<input type="text" class="form-control" value="<%=orderDetailList.getProduct().getTitle() %>" name="title" readonly>
                    <input type="text" class="form-control" value="<%=orderDetailList.getProduct().getPrice() %>원" name="order_count" readonly>
                    <input type="text" class="form-control" value="<%=orderDetailList.getOrder_count() %>개" name="price" readonly>
                  </div>
                 <%} %>
                <!-- /.card-body -->
                <div class="card-footer">
                  <button type="button" class="btn btn-info" onClick="location.href='/admin/order/list';">목록</button>
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

</body>
</html>