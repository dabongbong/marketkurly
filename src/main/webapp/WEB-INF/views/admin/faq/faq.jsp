<%@page import="com.kurly.marketkurly.domain.Faq"%>
<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
List<Faq> faqList = (List)request.getAttribute("faqList");
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
            <h1 class="m-0">자주하는 질문</h1>
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
            <div class="card">
              <div class="card-header">
                <h3 class="card-title">고객님들께서 가장 자주하시는 질문을 모두 모았습니다.</h3>

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
                      <th>카테고리</th>
                      <th>제목</th>
                    </tr>
                  </thead>
                  <tbody>
				    <tr>
	 		    	    <%int curPos=pager.getCurPos(); %>
				        <%int num=pager.getNum(); %>
				        <%for(int i =0; i<=pager.getPageSize();i++) {%>
				        <%if(num<1)break; %>
				        <%Faq faq=faqList.get(curPos++); %>
				        <tr>
					          <td><%=num-- %></td>
					          <td><%=faq.getFaq_category() %></td>
					          <td><a id="faq" style='color:#646464' href="javascript:selectfaq('<%=faq.getFaq_no()%>',<%=faq.getTitle()%>)" ><%=faq.getTitle() %></a>
				          		 <button type="button" class="btn btn-info"  style="float:right" onClick="location.href='/admin/faq/detail?faq_no=<%=faq.getFaq_no()%>'">상세보기</button>
					          </td>
				        </tr>
				        <%} %>
				        <tr>
						  	<td colspan="6" align="center">
						  		<%for(int i = pager.getFirstPage();i<=pager.getLastPage();i++) {%>
						  		<%if(i>=pager.getTotalPage())break; %>
						  		<%=i %>
						  		<%} %>
						  	</td>
						  </tr>
						  
				        <tr>
						 	<td  colspan="4">
                    			<button type="button" class="btn btn-info" onClick="location.href='/admin/faq/write';">공지사항 등록</button>
                    		</td>
					  	</tr>
					  		
					  	
                  </tbody>
                </table>
              </div>
            </div>
          </div>
        </div>
      </div>
    </section>
  </div>
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