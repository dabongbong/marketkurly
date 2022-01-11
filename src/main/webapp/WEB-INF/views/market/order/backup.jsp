<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@page import="com.kurly.marketkurly.domain.OrderDetail"%>
<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="com.kurly.marketkurly.domain.OrderSummary"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<OrderSummary> orderSummaryList = (List)request.getAttribute("orderSummaryList");
	Pager pager = (Pager)request.getAttribute("pager");
	List<OrderDetail> orderDetail = (List)request.getAttribute("orderDetail");
%>
<!-- Header Section Begin -->
<%@ include file="../inc/header.jsp"%>
<!-- Header End -->
    <!-- Breadcrumb Section Begin -->
    <div class="breacrumb-section">
        <div class="container">
            <div class="row">
                <div class="col-lg-12">
                    <div class="breadcrumb-text">
                        <a href="#"><i class="fa fa-home"></i> Home</a>
                        <span>Contact</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <!-- Breadcrumb Section Begin -->

    <!-- Contact Section Begin -->
    <section class="contact-section spad">
        <div class="container">
            <div class="row">
                <div class="col-md-3">
                      <h3>Categories</h3>
                      <div class="blog-catagory">
                            <ul>
                                <li><a href="#">주문 내역</a></li>
                                <li><a href="#">선물 내역</a></li>
                                <li><a href="#">찜한 상품</a></li>
                                <li><a href="#">배송지 관리</a></li>
                                <li><a href="#">상품 후기</a></li>
                                <li><a href="#">상품 문의</a></li>
                                <li><a href="#">적립금</a></li>
                                <li><a href="#">적립금</a></li>
                                <li><a href="#">쿠폰</a></li>
                                <li><a href="#">개인 정보 수정</a></li>
                            </ul>
                        </div>
                </div>
                <div class="col-md-9">
      				<div class="contact-title">
                        <h4>주문 내역</h4>
                    </div>
                    <div class="contact-widget">
                    	<%int curPos=pager.getCurPos(); %>
				        <%int num=pager.getNum(); %>
				        <%for(int i =0; i<=pager.getPageSize();i++) {%>
				        <%if(num<1)break; %>
				        <%OrderSummary orderSummary=orderSummaryList.get(curPos++); %>
                        <div class="cw-item">
	                   		<div class="name">
								<a href="/market/order/detail?order_summary_id=<%=orderSummary.getOrder_summary_id()%>">
<%-- 									<%for(int i=0; i<orderDetail.size(); i++){  --%>
// 											List productDetailList = null;.
<%-- 									%> --%>
<%-- 										<%for(int j=0; j<orderDetail.size(); j++){ productDetailList.add(j, orderDetail.get(i).getProduct()); } %> --%>
<%-- 										<%=orderDetail.get(i).getProduct().getTitle() %> 외  --%>
<%-- 									<%} %> --%>
								</a>
							</div>
							<hr>
                            <div class="ci-icon col-sm-3">
<!--                                <img src="" alt=""> -->asdasd
                            </div>
                            <div class="ci-text col-sm-6">
                            	<dl>
                            		<dt>주문번호</dt>
                            		<dd>15555587654</dd>
                            		<dt>결재금액</dt>
                            		<dd>27,800원</dd>
                            	</dl>
                            	<dl>
                            	</dl>
                            </div>
                        </div>
                        <%} %>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- Contact Section End -->

<!-- Footer Section Begin -->
<%@ include file="../inc/footer.jsp"%>
<!-- Footer Section End -->