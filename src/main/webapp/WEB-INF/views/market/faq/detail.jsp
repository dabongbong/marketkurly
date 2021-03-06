<%@page import="com.kurly.marketkurly.domain.Faq"%>
<%@ page contentType="text/html; charset=UTF-8" %>
<%
	Faq faq= (Faq)request.getAttribute("faq");
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
              <!-- /.card-header -->
              <!-- form start -->
              <form name="form1" >
              		<input type="hidden" name="faq_no" value="<%=faq.getFaq_no() %>">
				    
				 <div class="col-lg-8">
				 	<div class="form-group">
				 	<th>제목</th><p>
					    <input type="text"  	name="title" class="form-control" value="<%=faq.getTitle() %>">
					</div>
					
					
					<div class="form-group">
					<th>내용</th><p>
					    <textarea id="summernote" name="content" class="form-control" style="height:450px"><%=faq.getContent() %></textarea>
					</div>
					
          
				</div>
            </form>
            <!-- /.card -->
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

</body>
</html>