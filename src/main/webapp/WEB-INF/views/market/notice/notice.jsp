<%@page import="com.kurly.marketkurly.domain.Notice"%>
<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	List<Notice> noticeList = (List)request.getAttribute("noticeList");
	Pager pager = (Pager)request.getAttribute("pager");
	
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
              <div class="col-lg-10">
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th class="col-6"><center>제목</center></th>
                      <th>작성자</th>
                      <th>작성일</th>
                      <th>조회</th>
                    </tr>
                  </thead>
                  <tbody>
				    <tr>
	 		    	    <%int curPos=pager.getCurPos(); %>
				        <%int num=pager.getNum(); %>
				        <%for(int i =0; i<=pager.getPageSize();i++) {%>
				        <%if(num<1)break; %>
				        <%Notice notice=noticeList.get(curPos++); %>
				        <tr>
					          <td><%=num-- %></td>
					          <td><a href="/admin/notice/detail?notice_no=<%=notice.getNotice_no()%>"><%=notice.getTitle() %></a></td>
					          <td><%=notice.getWriter() %></td>
							  <td><%=notice.getRegdate() %></td>
							  <td><%=notice.getHit() %></td>
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
                    		<button type="button" class="btn btn-info" style="background-color: #5F0080" onClick="location.href='/admin/notice/write';">공지사항 등록</button>
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




</body>
</html>