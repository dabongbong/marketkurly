<%@page import="com.kurly.marketkurly.domain.My_qna"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	My_qna my_qna = (My_qna)request.getAttribute("my_qna");
%>


<%@ include file="../inc/header.jsp"%>

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text">
					<a href="#"><i class="fa fa-home"></i> Home</a> <span>1:1 문의</span>
				</div>
			</div>
		</div>
	</div>
</div>
<p>
	<div class="container">
		<div class="row">
			<div class="col-lg-2">
				<div class="filter-widget">
					<h4 class="fw-title">고객센터</h4>
					<ul class="filter-catagories">
						<li><a href="/">공지사항</a></li>
						<li><a href="/">자주하는 질문</a></li>
						<li><a href="/myQnaList">1:1 문의</a></li>
					</ul>
				</div>
			</div>


		<div class="col-lg-8">
	<form name="form1">
		<input type="hidden" name="my_qna_no" value="<%=my_qna.getMy_qna_no() %>">
			<div class="form-group">
				<th>카테고리</th><p>
					<input type="text" name="my_qna_category" class="form-control" value="<%=my_qna.getMy_qna_category()%>">
					<th>제목</th><p>
						<input type="text" name="title" class="form-control" value="<%=my_qna.getTitle() %>">

					<%-- <th>작성자</th><p>
						<input type="text" name="member" class="form-control" value="<%=my_qna.getMember() %>"> --%>

					<th>내용</th><p>
						<textarea name="content" class="form-control" style="height: 450px"><%=my_qna.getContent() %></textarea>

				<div class="card-footer">
					<button type="button" style="background-color: #5F0080" class="btn btn-info" id="bt_edit">수정</button>
					<button type="button" style="background-color: #5F0080" class="btn btn-info" id="bt_del">삭제</button>
					<button type="button" style="background-color: #5F0080" class="btn btn-info" onClick="location.href='/myQnaList'">목록</button>
				</div>
			</div>
		</div>
	</form>
	</div>
	</div>
<%@ include file="../inc/footer.jsp"%>


<!-- Control Sidebar -->
<aside class="control-sidebar control-sidebar-dark">
</aside>

<!-- bs-custom-file-input 파일컴포넌트 커스터마이징 -->
<script
	src="/resources/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script
	src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>


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
		form1.action="/myQnaUpdate";
		form1.method="post";
		form1.submit();
	}
}
function del(){
	if(confirm("삭제하시겠습니까?")){
		location.href="/myQnaDelete?my_qna=<%=my_qna.getMy_qna_no()%>";
	}
}
 
</script>
</body>
</html>