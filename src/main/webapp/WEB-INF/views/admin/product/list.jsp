<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	List<Product> productList = (List)request.getAttribute("productList");
	Pager pager = (Pager)request.getAttribute("pager");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>

<%@ include file="../inc/head_link.jsp" %>

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
            <h1 class="m-0">Dashboard</h1>
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
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">Responsive Hover Table</h3>

                <div class="card-tools">
                  <div class="input-group input-group-sm" style="width: 150px;">
                    <input type="text" name="table_search" class="form-control float-right" placeholder="Search">

                    <div class="input-group-append">
                      <button type="submit" class="btn btn-default">
                        <i class="fas fa-search"></i>
                      </button>
                    </div>
                  </div>
                </div>
              </div>
              <!-- /.card-header -->
              <div class="card-body table-responsive p-0">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>?????? ????????????</th>
                      <th>?????????</th>
                      <th>?????????</th>
                      <th>?????????</th>
                      <th>???????????????</th>
                    </tr>
                  </thead>
                   <tbody>
                <%int curPos=pager.getCurPos(); %>
                  <%int num=pager.getNum(); %>
                  <%for(int i =0; i<=pager.getPageSize();i++) {%>
                  <%if(num<1)break; %>
                  <%Product product=productList.get(curPos++); %>
                    <tr>
                      <td><%=num-- %></td>
                      <td><%=product.getSubcategory().getSubcategory_name() %></td>
                      <td><a href="/admin/product/detail?product_id=<%=product.getProduct_id()%>"><%=product.getTitle() %></a></td>
                      <td><%=product.getSubTitle() %></td>
                      <td><%=product.getPrice() %></td>
                      <td><%=product.getPrice()/100*(100-product.getSale()) %></td>
                    </tr>
                    <%} %>
                    <tr>
		                <td colspan="6" align="center">
		                    <%if(pager.getFirstPage()-1 > 0){ %> <%-- ?????????????????? ?????????..  --%>
		                        <a href="/admin/product/list.jsp?currentPage=<%=pager.getFirstPage()-1%>">???????????????</a>
		                    <%}else{}%>
		                    <%for(int i=pager.getFirstPage(); i <= pager.getLastPage(); i++){%>
		                        <%if(i>pager.getTotalPage()) break;%> <%--????????? ????????? ?????? ?????? ??? ???????????? ???????????? ????????? ??????--%>
		                        <a href="/admin/product/list.jsp?currentPage=<%=i%>" <%if(i == pager.getCurrentPage()){%>class="pageStyle"<%}%>>[<%=i%>] </a>
		                    <%}%>
		
		                    <%if(pager.getLastPage()+1 < pager.getTotalPage()){%> 
		                        <a href="/admin/product/list.jsp?currentPage=<%=pager.getLastPage()+1%>">???????????????</a>
		                    <%}else{}%>
		                </td>
					</tr>
                    <tr>
                 	   <td  colspan="6">
                    		<button type="button" class="btn btn-info" onClick="location.href='/admin/product/registForm'">????????????</button>
                    	</td>
                    </tr>
                  </tbody> 
            
                </table>
				</div>
              <!-- /.card-body -->
            </div>
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

</body>
</html>
