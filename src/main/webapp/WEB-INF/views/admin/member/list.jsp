<%@page import="com.kurly.marketkurly.domain.Member"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%@page import="java.util.List"%>
<%
	//상품목록
	List<Member> memberList=(List)request.getAttribute("memberList");
%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>AdminLTE 3 | Dashboard</title>
   
   <%@ include file="../inc/head_link.jsp" %>

</head>
<script type="text/javascript">
function registForm(){
	location.href="/admin/member/registform"

}
</script>
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
        <!-- Small boxes (Stat box) -->
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
                      <th>id</th>
                      <th>pass</th>
                      <th>name</th>
                      <th>email</th>
                      <th>phone</th>
                      <th>addr</th>
                      <th>gender</th>
                      <th>birth</th>
                    </tr>
                  </thead>
                
                  <tbody>
                  <%for(Member member: memberList) {%>
                    <tr>
                      <td><%=member.getMember_id()%></td>
                      <td><%=member.getMember_pass()%></td>
                      <td><a href="/admin/member/detail?member_id=<%=member.getMember_id() %>"><%=member.getMember_name()%></a></td>
                      <td><%=member.getEmail()%></td>
                      <td><%=member.getPhone()%></td>
                      <td><%=member.getAddr()%></td>
                      <td><%=member.getGender()%></td>
                      <td><%=member.getBirth()%></td>
                    </tr>
                    <%} %>
                    
                  </tbody>
                </table>
              </div>
                     <div class="card-footer">
                  		<button type="button" class="btn btn-info" onClick="registForm()">등록</button>
               		 </div>
              <!-- /.card-body -->
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

</body>
</html>