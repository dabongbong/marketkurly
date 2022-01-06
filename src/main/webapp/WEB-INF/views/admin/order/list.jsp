<%@page import="com.kurly.marketkurly.domain.OrderDetail"%>
<%@page import="com.kurly.marketkurly.domain.OrderSummary"%>
<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<OrderSummary> orderSummaryList = (List)request.getAttribute("orderSummaryList");
	Pager pager = (Pager)request.getAttribute("pager");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<style type="text/css">
 td, th{
 	text-align:center;
 	vertical-align:middle;
 }
 </style>
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
            <h1 class="m-0">마켓컬리 주문 내역</h1>
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
        
          <!-- 카테고리 테이블 begin -->
          <div class="col-6">
              <div class="card">
              <div class="card-body p-0">
                <table class="table table-hover">
                <thead>
                    <tr>
                      <th>No</th>
                      <th>고객ID</th>
                      <th>제품ID</th>
                      <th>결제ID</th>
                      <th>결제금액</th>
                      <th>구매일자</th>
                    </tr>
                  </thead>
                  <tbody>
				    <tr>
	 		    	    <%int curPos=pager.getCurPos(); %>
				        <%int num=pager.getNum(); %>
				        <%for(int i =0; i<=pager.getPageSize();i++) {%>
				        <%if(num<1)break; %>
				        <%OrderSummary orderSummary=orderSummaryList.get(curPos++); %>
				        <tr>
				          <td><%=num-- %></td>
				          <td><%=orderSummary.getMember().getMember_id() %></td>
				          <td><%=orderSummary.getOrder_summary_id() %></td>
				          <td><%=orderSummary.getPaymethod().getPaymethod_id() %></td>
				          <td><%=orderSummary.getPrice() %></td>
				          <td><%=orderSummary.getOrderdate() %></td>
				        </tr>
				        <%} %>
			         <tr>
		                <td colspan="6" align="center">
		                    <%if(pager.getFirstPage()-1 > 0){ %> <%-- 이전페이지가 있다면..  --%>
		                        <a href="/admin/order/list.jsp?currentPage=<%=pager.getFirstPage()-1%>">이전페이지</a>
		                    <%}else{}%>
		                    <%for(int i=pager.getFirstPage(); i <= pager.getLastPage(); i++){%>
		                        <%if(i>pager.getTotalPage()) break;%> <%--페이지 번호가 내가 가진 총 페이지를 넘어서면 반복문 중단--%>
		                        <a href="/admin/order/list.jsp?currentPage=<%=i%>" <%if(i == pager.getCurrentPage()){%>class="pageStyle"<%}%>>[<%=i%>] </a>
		                    <%}%>
		
		                    <%if(pager.getLastPage()+1 < pager.getTotalPage()){%> 
		                        <a href="/admin/order/list.jsp?currentPage=<%=pager.getLastPage()+1%>">다음페이지</a>
		                    <%}else{}%>
		                </td>
          			 </tr>
                  </tbody>
                  </tbody>
                </table>
              </div>
              <!-- /.card-body -->
            </div>
            </div>
          <!-- 카테고리 테이블 end -->
          
          <!-- 상품 등록폼 begin -->
          <div class="col-6">
            <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">주문 상세</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1" enctype="multipart/form-data">
                <div class="card-body">
                
                  <div class="form-group">
                    <select class="form-control" id="category_id" name="category.category_id">
                    	<option>좌측에서 주문내역 선택</option>
                    </select> 
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="주문번호" name="order_summary_id" readonly>
                  </div>
                  
                  <div class="form-group">
                    <input type="text" class="form-control" placeholder="상품" name="product_name" value="" readonly>
                    <input type="text" class="form-control" placeholder="가격" name="price" 	   value="" readonly>
                    <input type="text" class="form-control" placeholder="개수" name="order_count"  value="" readonly>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" >접기</button>
                </div>
              </form>
            </div>
            </div>
          <!-- 상품 등록폼 end -->
            
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
//select 컴포넌트에 선택한 카테고리 반영하기!!
function selCategory(category_name, category_id){
	var sel = document.querySelector("#category_id");
	sel.options[0].text=category_name; //사용자가 보게될 옵션의 제목 	
	sel.options[0].value=category_id; //사용자가 보게될 옵션의 값 	
}

// 비동기로 order_detail 요청
function getDetail(){
	$.ajax({
		url:"",
		type:"",
		success:function(result, status, xhr){
			console.log(result);
		}
	});
}
</script>
</body>
</html>
