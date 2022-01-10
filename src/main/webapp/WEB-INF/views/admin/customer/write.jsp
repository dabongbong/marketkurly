<%@page import="com.kurly.marketkurly.domain.My_qna"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
List<My_qna> my_qnaList = (List)request.getAttribute("my_qnaList");
	
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
            <h1 class="m-0">1:1 문의</h1>
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
              <!-- /.card-header -->
              <!-- form start -->
              
              <form name="form1" enctype="multipart/form-data">
                <div class="card-body">
                
                  
                  <th>제목</th>
                  <div class="form-group">
                  	<select name="my_qna_category" type="text">
					    <option value="">선택해주세요.</option>
					    <option value="배송지연/불만">배송지연/불만</option>
					    <option value="컬리패스">컬리패스 (무료배송)</option>
					    <option value="반품문의">반품문의</option>
					    <option value="A/S문의">A/S문의</option>
					    <option value="환불문의">환불문의</option>
					    <option value="주문결제문의">주문결제문의</option>
					    <option value="회원정보문의">회원정보문의</option>
					    <option value="취소문의">취소문의</option>
					    <option value="교환문의">교환문의</option>
					    <option value="상품정보문의">상품정보문의</option>
					    <option value="기타문의">기타문의</option>
					</select>
                  </div>
	                  <div class="form-group">
	                    <input type="text" class="form-control"  placeholder="제목 입력" name="title">
	                  </div>
                  
                  <div class="form-group"> 주문조회<p>
                    <input type="text"  placeholder="주문번호입력" name="order_id" >
                    <button type="button" style="background-color: #795B8F" id="orderId">주문조회</button>
                  </div>
                  
                  <div class="form-group">
	                    <input type="text"  placeholder="이메일 입력" >
	                    <input type="checkbox" name="emailChk">답변 수신을 이메일로 받겠습니다.
	                  </div>
	                  
	                   <div class="form-group">
	                    <input type="text"  placeholder="전화번호 입력" >
	                    <input type="checkbox" name="messagechk">답변 수신을 문자메세지로 받겠습니다.
	                  </div>
                  
                  
                  <div>
	                  <font size="4em" style="font-weight: bold;">1:1 문의 작성 전 확인해주세요!</font><p><p>
		                  <div>
			                  <font size="3em" style="font-weight: bold;">반품/환불<p></font>
			                  <font size="2em">-제품 하자 혹은 이상으로 반품 (환불)이 필요한 경우 사진과 함께 구체적인 내용을 남겨주세요.</font>
		                  </div>
		                  
		                  <div>
			                  <font size="3em" style="font-weight: bold;">주문취소<p></font>
			                  <font size="2em">-배송 단계별로 주문취소 방법이 상이합니다.</font>
			                  <font size="2em"><br>[입금확인] 단계 : [마이컬리 > 주문내역 상세페이지] 에서 직접 취소 가능</font>
			                  <font size="2em"><br>[입금확인] 이후 단계 : 고객행복센터로 문의</font>
		                  </div>
		                  
		                  <div>
		                  		<font size="2em">- 생산이 시작된 [상품 준비중] 이후에는 취소가 제한되는 점 고객님의 양해 부탁드립니다.</font>
		                  		<font size="2em"><br>- 비회원은 모바일 App 또는 모바일 웹사이트에서 [마이컬리 > 비회원 주문 조회 페이지] 에서 취소가 가능합니다.</font>
		                  		<font size="2em"><br>- 일부 예약상품은 배송 3~4일 전에만 취소 가능합니다.</font>
		                  		<font size="2em"><br>- 주문상품의 부분 취소는 불가능합니다. 전체 주문 취소 후 재구매 해주세요.</font>
		                  </div>
		                  
		                  <div>
		                  		<font size="3em" style="font-weight: bold;">배송<p></font>
		                  		<font size="2em">- 주문 완료 후 배송 방법(샛별 / 택배)은 변경이 불가능합니다.</font>
		                  		<font size="2em"><br>- 배송일 및 배송시간 지정은 불가능합니다. (예약배송 포함)</font>
		                  		<font size="2em"><br>※ 전화번호, 이메일, 주소, 계좌번호 등의 상세 개인정보가 문의 내용에 저장되지 않도록 주의해 주시기 바랍니다.</font>
		                  </div>
                  </div>
                  
                  
                  <div class="form-group">
                     <textarea class="form-control" name="content" onkeyup="adjustHeight();"></textarea>
                  </div>
                  	<form action="" method="post" enctype="multipart/form-data" name="">
					    <input type="file" name="FileName">
					</form>
                  
                <!-- /.card-body -->

                <div class="card-footer">
                  <button type="button" class="btn btn-info" id="bt_write">등록</button>
                  <button type="button" class="btn btn-info" onClick="location.href='/admin/customer/my_qna'">목록</button>
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
<script>
$(function () {
	  bsCustomFileInput.init();
	});
	
</script>
<script>/* 텍스트에리아 자동 높이 조절 글을 쓰면 알아서 높이가 조절됨 */
function adjustHeight() {
	  var textEle = $('textarea');
	  textEle[0].style.height = 'auto';
	  var textEleHeight = textEle.prop('scrollHeight');
	  textEle.css('height', textEleHeight);
		};
		var textEle = $('textarea');
		textEle.on('keyup', function() {
		  adjustHeight();
		});
</script>
<script>
$(function(){
	
  $("#bt_write").click(function(){
	  write();
  });
  
})

function write(){
	$("form[name='form1']").attr({
		action:"/admin/customer/write",
		method:"post"
	})
	$("form[name='form1']").submit();
		alert("정상적으로 등록되었습니다.");
};





</script>
</body>
</html>
