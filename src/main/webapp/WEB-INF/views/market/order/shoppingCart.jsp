<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	
%>
<!-- Header Section Begin -->
<%@include file="../inc/header.jsp"%>
<!-- Header End -->
<style>
.container {
	padding: 10px;
}

.breacrumb-section {
	padding: 50px 0px 51px;
	font-size: 28px;
	font-weight: bold;
}
.cart-price{
	color:#4C4C4C;
	padding: 9px;
}
.total-price{
	color:#4C4C4C;
	padding: 2px 0px 0px;
	font-size:22px;
}
.pr-price{
	color:#333333;
	padding: 30px;
	font-size:16px;
}
.ct-price{
	padding:9px 18px 18px 20px;
}
.topi{
	margin:17px 0px 0px;
	padding:17px 0px 0px;
}
.updown-dd{

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
		<div class="col-lg-9" >
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
							<td class="pr-price">21000 원</td>
							<td class="qua-col first-row">
								<div class="quantity">
									<div class="pro-qty">
										<input type="text" value="1" readonly>
									</div>
								</div>
							</td>
							<td class="close-td first-row"><i class="ti-close"></i></td>
						</tr>
						<!-- 여기까지 반복문 -->
					</tbody>
				</table>
			</div>
		</div>
		<div class="col-lg-3" style="margin:0px; padding:0px;">
			<div class="proceed-checkout updown-dd" style="padding:9px 18px 18px 20px;">
				<ul>
					<li class="cart-price">상품금액 <span>21000 원</span></li>
					<li class="cart-price">상품할인금액<span>-1500 원</span></li>
					<hr>
					<div class="topi">
						<li class="total-price">결제예정금액 <span>19500 원</span></li>
					</div>
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