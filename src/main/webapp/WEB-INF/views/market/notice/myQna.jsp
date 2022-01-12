<%@page import="com.kurly.marketkurly.domain.My_qna"%>
<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	List<My_qna> my_qnaList = (List)request.getAttribute("my_qnaList");
	Pager pager = (Pager)request.getAttribute("pager");
%>

<%@ include file="../inc/header.jsp" %>

    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>FAQ</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->
<div class="card-body table-responsive p-0">
									<table class="table table-hover text-nowrap">
										<thead>
											<tr>
												<th>No</th>
												<th>카테고리</th>
												<th class="col-6"><center>제목</center></th>
												<th>작성자</th>
												<th>작성일</th>
											</tr>
										</thead>
										<tbody>
											<tr>
												<%int curPos=pager.getCurPos(); %>
												<%int num=pager.getNum(); %>
												<%for(int i =0; i<=pager.getPageSize();i++) {%>
												<%if(num<1)break; %>
												<%My_qna my_qna=my_qnaList.get(curPos++); %> 
											
											<tr>
												<td><%=num-- %></td>
												<td><%=my_qna.getMy_qna_category() %></td>
												<td><a href="/market/notice/myQnaDetail?my_qna_no=<%=my_qna.getMy_qna_no()%>"><%=my_qna.getTitle() %></a></td>
												<td><%=my_qna.getMember().getUser_id() %></td>
												<td><%=my_qna.getRegdate() %></td>
											</tr>
											<%} %>
											<tr>
												<td colspan="6" align="center">
													<%for(int i = pager.getFirstPage();i<=pager.getLastPage();i++) {%>
													<%if(i>=pager.getTotalPage())break; %> <%=i %> 
												</td>
													<%} %>
											</tr> 
											<form>
								              <input type="hidden" name="category_id">
								              <div class="card-body p-0">
								                <table class="table table-hover" >
								                  <tbody id="subList">
								                  </tbody>
											<tr>
												<td colspan="4">
													<button type="button" class="btn btn-info"
														onClick="location.href='/market/notice/write';"
														style="float: right;">문의 등록</button>
												</td>
											</tr>
													</table>
												</div>
											</form>
											
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

<%@ include file="../inc/footer.jsp"%>





    <!-- Js Plugins -->
    <script src="js/jquery-3.3.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/jquery-ui.min.js"></script>
    <script src="js/jquery.countdown.min.js"></script>
    <script src="js/jquery.nice-select.min.js"></script>
    <script src="js/jquery.zoom.min.js"></script>
    <script src="js/jquery.dd.min.js"></script>
    <script src="js/jquery.slicknav.js"></script>
    <script src="js/owl.carousel.min.js"></script>
    <script src="js/main.js"></script>
</body>

</html>