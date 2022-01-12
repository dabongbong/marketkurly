<%@page import="com.kurly.marketkurly.domain.Notice"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
	Notice notice = (Notice)request.getAttribute("notice");
%>
<%@ include file="../inc/header.jsp"%>

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

<div class="container">
	<div class="row">
			<div class="col-lg-2">
				<div class="filter-widget">
					<h4 class="fw-title">고객센터</h4>
					<ul class="filter-catagories">
						<li><a href="/noticeList">공지사항</a></li>
						<li><a href="/faq">자주하는 질문</a></li>
						<li><a href="/myQnaList">1:1 문의</a></li>
					</ul>
				</div>
			</div>
              <form name="form1">
              		<input type="hidden" name="notice_no" value="<%=notice.getNotice_no() %>">
				    
				 <div class="col-lg-8">
				 	<div class="form-group">
				 	<th>제목</th><p>
					    <input type="text"  	name="title" class="form-control" value="<%=notice.getTitle() %>">
					</div>
					
					<div class="form-group">
					<th>작성자</th><p>
					    <input type="text"  	name="writer" class="form-control" value="<%=notice.getWriter() %>">
					</div>
					
					<div class="form-group">
					<th>내용</th><p>
					    <textarea id="summernote" name="content" class="form-control" style="height:450px"><%=notice.getContent() %></textarea>
					</div>
					
					
          
				</div>
            </form>
            <!-- /.card -->
          </div>
            
            <!-- /.card -->
          </div>         
  
  <%@ include file="../inc/footer.jsp" %>  
  

  <!-- Control Sidebar -->
  <aside class="control-sidebar control-sidebar-dark">
    <!-- Control sidebar content goes here -->
  </aside>
  <!-- /.control-sidebar -->
</div>
<!-- ./wrapper -->


<!-- bs-custom-file-input 파일컴포넌트 커스터마이징 -->
<script src="/resources/admin/plugins/bs-custom-file-input/bs-custom-file-input.min.js"></script>
<script src="https://cdn.jsdelivr.net/npm/summernote@0.8.18/dist/summernote.min.js"></script>



</body>
</html>