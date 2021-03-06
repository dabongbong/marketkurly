<%@page import="com.kurly.marketkurly.domain.Category"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Category> categoryList = (List)request.getAttribute("categoryList");
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
            <h1 class="m-0">카테고리 목록</h1>
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
        <!-- 대분류 시작 -->
        <div class="row">
          <div class="col-6">
            <div class="card">
              <div class="card">
              <div class="card-header">
                <h3 class="card-title">대분류</h3>
              </div>
              <!-- ./card-header -->
              <div class="card-body p-0">
                <table class="table table-hover">
                  <tbody>
                  
                  <%for(Category category : categoryList){ %> 
                    <tr data-widget="expandable-table" aria-expanded="true">
                      <td>
                        <img src ="/resources/categoryImg/<%=category.getCategory_logo()%>" width="35px">
                        <a id="category" style='color:#646464' href="javascript:selectCategory('<%=category.getCategory_name()%>',<%=category.getCategory_id()%>)" ><%=category.getCategory_name() %></a>
                        <button type="button" class="btn btn-info"  style="float:right" onClick="location.href='/admin/category/detail?category_id=<%=category.getCategory_id()%>'">상세보기</button>
                      </td>
                    </tr>
                    <%} %>
                    <tr>
                    	<td>
                    		<button type="button" class="btn btn-info" onClick="location.href='/admin/category/registform';">대분류 등록</button>
                    	</td>
                    </tr>
                  </tbody>
                </table>
            </div>
            </div>
              <!-- /.card-body -->
            </div>
            </div>
            <!-- 소분류 시작  -->
            <div class="col-6" style="display:none"  id="subForm">
            <div class="card">
              <div class="card">
              <div class="card-header">
                <h3 class="card-title">소분류</h3>
              </div>
              <!-- ./card-header -->
              <form>
              <input type="hidden" name="category_id">
              <div class="card-body p-0">
                <table class="table table-hover" >
                  <tbody id="subList">
                  </tbody>
 						<tr>
 							<td><button type='button' class='btn btn-info' onClick='subregist()'>소분류 등록</button></td>
 						</tr>
                </table>
            </div>
            </form>
              <!-- /.card-body -->
            </div>
            </div>
            <!-- /.card -->
            <!-- 중분류 끝 -->
          </div>
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

<script>
 $(function(){
	$("#category").click(function(){
		$("#subForm").show(); 
	});
})  


// 서브카테고리 비동기방식
 function subCategory(category_id){
	$.ajax({
		url:"/admin/rest/subcategory?category_id="+category_id,
		type:"get",
		success:function(result, status, xhr){
			console.log(result);
			
			var tag="";
			for(var i=0; i<result.length; i++){
				var json=result[i];
				
				tag+="<tr><td>"+json.subcategory_name+"</a>"; 
				tag+="<button type='button' class='btn btn-info' style='float:right' onClick='location.href=\"/admin/category/subdetail?subcategory_id="+json.subcategory_id+"\"'>상세보기</button></td></tr>"; 
			}
			console.log(tag);
			$("#subList").empty();
			$("#subList").append(tag);
		}
	});
} 

function selectCategory(category_name,category_id){
	subCategory(category_id);
	$("input[name='category_id']").val(category_id)	
}

function subregist(){
	$("form").attr({
		action:"/admin/category/subregistform",
		method:"post"
	})
	$("form").submit();
}
</script>
</body>
</html>



















