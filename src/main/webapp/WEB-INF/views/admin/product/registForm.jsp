<%@page import="com.kurly.marketkurly.domain.Subcategory"%>
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
          <!-- 카테고리 테이블 시 -->
          <div class="col-4" id="category_div">
            <div class="card">
              <div class="card">
              <div class="card-header">
                <h3 class="card-title">Expandable Table Tree</h3>
              </div>
              <!-- ./card-header -->
              <div class="card-body p-0">
                <table class="table table-hover">
                  <tbody>
                     <%for(Category category : categoryList){ %>
                    <tr data-widget="expandable-table" aria-expanded="true">
                      <td>
                        <a href="javascript:selCategory('<%=category.getCategory_name() %>', <%=category.getCategory_id() %>)"><%=category.getCategory_name() %></a>
                      </td>
                    </tr>
                    <%} %>
                  </tbody>
                </table>
            </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          </div>
          <!-- 카테고리 테이블 끝 -->
          <!-- 서브 카테고리 테이블 시 -->
          <div class="col-2" style="display:none;" id="subCategory_div">
            <div class="card">
              <div class="card">
              <div class="card-header">
                <h3 class="card-title">Expandable Table Tree</h3>
              </div>
              <!-- ./card-header -->
              <div class="card-body p-0">
                <table class="table table-hover">
                  <tbody id="subcategory_table">
                  </tbody>
                </table>
            </div>
              <!-- /.card-body -->
            </div>
            <!-- /.card -->
          </div>
          </div>
          <!-- 서브카테고리 끝 -->
          <!--  -->
          <div class="col-8">
           <div class="card card-info">
              <div class="card-header">
                <h3 class="card-title">Quick Example</h3>
              </div>
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1" enctype="multipart/form-data">
                <div class="card-body">
                
                  <div class="form-group">
                  	<select class="form-control" id="category_id" name="category.category_id">
                  		<option>좌측에서 카테고리 선택</option>
                  	</select>
                  	<select class="form-control" id="subcategory_id" name="subcategory.subcategory_id">
                  		<option>좌측에서 서브 카테고리 선택</option>
                  	</select>
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control"  placeholder="상품명 입력" name="title">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control"  placeholder="한줄설명 입력" name="subTitle">
                  </div>
                  <div class="form-group">
                    <input type="text" class="form-control"  placeholder="가격 입력" name="price">
                  </div>
                  
                  
                  <div class="form-group">
                     <textarea id="detail" name="detail"></textarea>
                  </div>
                  <div class="form-group">
                  <div id="preview">이미지 미리보기 영역
                  
                  </div>
                  
                  
                    <div class="input-group">
                      <div class="custom-file">
                        <input type="file" class="custom-file-input" name="imgFiles">
                        <label class="custom-file-label" for="exampleInputFile">Choose file</label>
                      </div>
                      <div class="input-group-append">
                        <span class="input-group-text">Upload</span>
                      </div>
                    </div>
                  </div>
                  <div class="form-group" id="detail_form">
                    <div style="display:flex;" >
                      <input type="text" class="form-control col-3"  placeholder="추가사항" name="item">
                      <input type="text" class="form-control col-8"  placeholder="상세내용" name="content">
                      <button type="button" class="btn btn-info col-1" onClick="addDetailForm()">+</button>
                    </div>
                    
                  </div>
                  <div class="form-group" id="hashtag_form">
	                  <div style="display:flex;" >
	                    <input type="text" class="form-control"  placeholder="해시태그" name="comment">
	                    <button type="button" class="btn btn-info col-1" onClick="addHashtagForm()">+</button>
	                  </div>
                  </div>
                </div>
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="bt_regist">등록</button>
                  <button type="button" class="btn btn-info" onClick="location.href='/admin/product/list'">목록</button>
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
$(function () {
  bsCustomFileInput.init();
  $('#detail').summernote({
      placeholder: '상품 상세정보',
      tabsize: 2,
      height: 100
    });

  //이미지 미리보기 버튼 이벤트
   /* $("input[name='imgFiles']").change(()=>{
	   preview2(this);
  }); */
  document.querySelector("input[name='imgFiles']").addEventListener("change",function(){
	  preview(this);
  }) 
  
  $("#bt_regist").click(()=>{
	  regist();
  })
  
  
  
});
//select 컴포넌트에 선택한 카테고리 반영하기
function selCategory(category_name, category_id){
	var sel = document.querySelector('#category_id');
	sel.options[0].text = category_name; 
	sel.options[0].value = category_id; 
	document.getElementById('category_div').className='col-2';
	document.getElementById('subCategory_div').style.display='block';
	getSubcategory(category_id);
	
};
function selSubcategory(subcategory_name, subcategory_id){
	var sel = document.querySelector('#subcategory_id');
	sel.options[0].text = subcategory_name; 
	sel.options[0].value = subcategory_id; 
};

function getSubcategory(category_id){
	//비동기 방식으로 서브카테고리 테이블에 반영하기.. 
  	 $.ajax({
  		 url: "/admin/product/subcategory?category_id="+category_id,
  		 method: 'GET',
  		 success : function(data){
			 $('#subcategory_table').empty();
  			 for(i=0; i<data.data.length;i++){
  				 var td = '<tr><td><a href="javascript:selSubcategory(\''+data.data[i].subcategory_name+'\','+data.data[i].subcategory_id+')">'+data.data[i].subcategory_name+'</a><td><tr>';
  				 $('#subcategory_table').append(td);
  			 }
  		 }
  	 })
};


function regist(){
	$("form[name='form1']").attr({
		action:"/admin/product/regist",
		method:"post"
	})
	$("form[name='form1']").submit();
};

function preview2(obj){
	
	var reader = new FileReader();
	reader.onload=function(e){
		$("#preview").append($("<img src='"+e.target.result+"'width='100px'>"));
	}
	
	
	reader.readAsDataURL(obj.files[0])
}


function preview(obj){
	console.log("이벤트를 발생시킨 컴포넌트는 ",obj);
	console.log("obj.files is ", obj.files);
	
	for(var i = 0; i<obj.files.length;i++){
		//파일에 대한 접근방법을 알았으니, 지금부터는 실제 파일을 읽어와보자! 그러기 위해서는 스트림 객체가 필요하다..
		var reader = new FileReader();
		reader.onload=function(e){
			console.log("읽어들인 정보 e는",e);
			
			//div에 동적으로 img돔을 생성하여, 그 돔의 src 속성에 e.target.result
			var img = document.createElement("img");
			img.src=e.target.result;
			img.style.width=100+"px";
			document.getElementById("preview").appendChild(img);//동적으로 이미지 돔을 div에 넣기
		};//파일을 다 읽어들이면, 익명함수가 호출된다.
		reader.readAsDataURL(obj.files[i]);
	}
}
function addDetailForm(){
	var tag = '<div style="display:flex;">'
        		+'<input type="text" class="form-control col-3"  placeholder="추가사항" name="item">'
   				+'<input type="text" class="form-control col-9"  placeholder="상세내용" name="content">'
 				+'</div>';
	$("#detail_form").append(tag);
}
function addHashtagForm(){
	var tag = '<div style="display:flex;" >'
		+'<input type="text" class="form-control"  placeholder="해시태그" name="comment">'
		+'</div>'
	$("#hashtag_form").append(tag);
}
</script>
</body>
</html>
