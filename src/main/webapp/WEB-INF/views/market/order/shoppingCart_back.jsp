<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	
%>
<!-- Header Section Begin -->
<%@include file="../inc/header.jsp"%>
<!-- Header End -->
<style>
.container {
	padding: 20px;
}

.breacrumb-section {
	padding: 20px;
	font-size: 28px;
	font-weight: bold;
}
</style>
<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12" align="center">장바구니</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<div class="container">
	<div class="d-flex">
		<div class="col-lg-8">
			<div class="cart-table">
				<table>
					<thead>
					</thead>
					<tbody>
						<!-- 여기부터 반복문 -->
						<tr>
							<td class="cart-pic first-row"><img
								src="img/cart-page/product-1.jpg" alt=""></td>
							<td class="cart-title first-row">
								<h5>Pure Pineapple</h5>
							</td>
							<td class="p-price first-row">$60.00</td>
							<td class="qua-col first-row">
								<div class="quantity">
									<div class="pro-qty">
										<input type="text" value="1">
									</div>
								</div>
							</td>
							<td class="total-price first-row">$60.00</td>
							<td class="close-td first-row"><i class="ti-close"></i></td>
						</tr>
						<!-- 여기까지 반복문 -->
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-lg-4">
			<div class="proceed-checkout">
				<ul>
					<li class="subtotal">상품금액 <span>$240.00</span></li>
					<li class="saletotal">상품할인금액<span>$240.00</span></li>
					<li class="cart-total">결제예정금액 <span>$240.00</span></li>
				</ul>
				<a href="/orderForm" class="proceed-btn" id="login-btn">주문하기</a>
			</div>
		</div>
	</div>
</div>
<!-- Shopping Cart Section End -->

<script>
	
</script>
<%@include file="../inc/footer.jsp"%>