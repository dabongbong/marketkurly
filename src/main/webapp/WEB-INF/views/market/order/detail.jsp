<%@page import="com.kurly.marketkurly.domain.OrderDetail"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<!-- Header Section Begin -->
<%@ include file="../inc/header.jsp"%>
<%
	String id = request.getParameter("order_summary_id");
	List<OrderDetail> orderDetail = (List)request.getAttribute("orderDetail");
%>
<style type="text/css">
  	.pageStyle {
    font-weight:bold;
    font-size:15px;
}
  </style>
<!-- Header End -->


<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="./index.html"><i class="fa fa-home"></i> 마켓컬리</a> <a
						href="./shop.html">마이페이지</a> <span>주문내역</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
	   <div class="container">
            <form action="#" class="checkout-form">
                <div class="row">
                    <div class="col-lg-12">
                        <div class="place-order">
                            <h4>주문 상세 내역</h4>
                            <div class="order-total">
                                <ul class="order-table">
                                	<%for(OrderDetail orderDetailList : orderDetail){ %>
                                    <li class="fw-normal">
                                    	<img alt="." src="/resources/productImg/<%=orderDetailList.getProduct().getProduct_img()%>" width="60" height="60">
                                    	  &nbsp; &nbsp;<%=orderDetailList.getProduct().getTitle() %> &nbsp;<%=orderDetailList.getOrder_count() %>개
                                    	<span display="table"><%=orderDetailList.getProduct().getPrice() %> 원</span>
                                   	</li>
                                   	<%} %>
                                </ul>
                                <div class="order-btn">
                                	  <button type="button" class="site-btn place-btn" onclick="location.href='/orderList'">주문 목록</button>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </form>
        </div>
</section>
<!-- Shopping Cart Section End -->

<!-- Footer Section Begin -->
<%@ include file="../inc/footer.jsp"%>
<!-- Footer Section End -->