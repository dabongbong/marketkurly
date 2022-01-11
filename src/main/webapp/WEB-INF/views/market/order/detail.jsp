<%@ page contentType="text/html; charset=UTF-8"%>
<!-- Header Section Begin -->
<%@include file="../inc/header.jsp"%>
<!-- Header End -->

<!-- Breadcrumb Section Begin -->
<div class="breacrumb-section">
	<div class="container">
		<div class="row">
			<div class="col-lg-12">
				<div class="breadcrumb-text product-more">
					<a href="./index.html"><i class="fa fa-home"></i> Home</a> <a
						href="./shop.html">Shop</a> <span>Check Out</span>
				</div>
			</div>
		</div>
	</div>
</div>
<!-- Breadcrumb Section Begin -->

<!-- Shopping Cart Section Begin -->
<section class="checkout-section spad">
	<div class="page_aticle aticle_type2">
		<div id="snb" class="snb_my">
			<h2 class="tit_snb">마이컬리</h2>
			<div class="inner_snb">
				<ul class="list_menu">
					<li class="on"><a href="/shop/mypage/mypage_orderlist.php">주문 내역</a></li>
					<li><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_gift.php', 'select_my_kurly_gift_list')">선물 내역</a></li>
					<li><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_pick.php', 'select_my_kurly_pick_list')">찜한 상품</a></li>
					<li><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/destination/list.php', 'select_shipping_address_list')">배송지 관리</a></li>
					<li><a href="/shop/mypage/mypage_review.php">상품 후기</a></li>
					<li><a href="/shop/mypage/product_inquiry.php">상품 문의</a></li>
					<li><a href="#none"	 onclick="KurlyTrackerLink('/shop/mypage/mypage_emoney.php', 'select_my_kurly_point_history', {selection_type: 'mypage'})">적립금</a></li>
					<li><a href="#none" onclick="KurlyTrackerLink('/shop/mypage/mypage_coupon.php', 'select_my_kurly_coupon_list', {selection_type: 'mypage'})">쿠폰</a></li>
					<li><a href="/shop/member/myinfo.php">개인 정보 수정</a></li>
				</ul>
			</div>
			<a href="/shop/mypage/mypage_qna_register.php?mode=add_qna" 	class="link_inquire">
				<span class="emph">도움이 필요하신가요 ?</span>
				1:1 문의하기
			</a>
		</div>
		<div id="viewOrderList" class="page_section section_orderlist">
			<div class="head_aticle">
				<h2 class="tit">
					주문 내역 <span class="tit_sub">지난 3년간의 주문 내역 조회가 가능합니다</span>
				</h2>
			</div>
			<div class="search_date">
				<h3 class="screen_out">기간 선택</h3>
				<a href="#none" class="btn_layer">전체기간</a>
				<ul class="layer_search">
					<li><a href="#none" class="on">전체기간</a></li>
					<li><a href="#none" data-year="2022">2022 년</a></li>
					<li><a href="#none" data-year="2021">2021 년</a></li>
					<li><a href="#none" data-year="2020">2020 년</a></li>
				</ul>
			</div>
			<ul class="list_order">
				<li><div class="date">2019.05.17 (22시 29분)</div>
					<div class="order_goods">
						<div class="name">
							<a>[이베리쿡] 이베리코 목살 외 2건</a>
						</div>
						<div class="order_info">
							<div class="thumb">
								<img src="https://img-cf.kurly.com/shop/data/goods/1543384335581s0.jpg" alt="해당 주문 대표 상품 이미지">
							</div>
							<div class="desc">
								<dl>
									<dt>주문번호</dt>
									<dd>1558099662551</dd>
								</dl>
								<dl>
									<dt>결제금액</dt>
									<dd>27,335원</dd>
								</dl>
								<dl>
									<dt>주문상태</dt>
									<dd class="status end">배송완료</dd>
								</dl>
							</div>
						</div>
						<div class="order_status">
							<span class="inner_status">
								<!----> <!----> <a class="link ga_tracking_event">1:1 문의</a>
							</span>
						</div>
					</div></li>
				<li><div class="date">2018.01.09 (14시 23분)</div>
					<div class="order_goods">
						<div class="name">
							<a>[신규회원 이벤트] 창화당 납작 고기왕군만두 외 2건</a>
						</div>
						<div class="order_info">
							<div class="thumb">
								<img src="https://img-cf.kurly.com/shop/data/goods/1513303033286s0.jpg"	alt="해당 주문 대표 상품 이미지">
							</div>
							<div class="desc">
								<dl>
									<dt>주문번호</dt>
									<dd>1515474565048</dd>
								</dl>
								<dl>
									<dt>결제금액</dt>
									<dd>12,210원</dd>
								</dl>
								<dl>
									<dt>주문상태</dt>
									<dd class="status end">배송완료</dd>
								</dl>
							</div>
						</div>
						<div class="order_status">
							<span class="inner_status">
								<!----> <!----> <a class="link ga_tracking_event">1:1 문의</a>
							</span>
						</div>
					</div></li>
				<!---->
			</ul>
			<div class="layout-pagination">
				<div class="pagediv">
					<a href="#viewOrderList"	class="layout-pagination-button layout-pagination-first-page">맨 처음 페이지로 가기</a>
					<a href="#viewOrderList" class="layout-pagination-button layout-pagination-prev-page">이전 페이지로 가기</a>
					<span>
						<!---->
					<strong class="layout-pagination-button layout-pagination-number __active">1</strong>
					</span>
					<a href="#viewOrderList" class="layout-pagination-button layout-pagination-next-page">다음 페이지로 가기</a>
					<a href="#viewOrderList" class="layout-pagination-button layout-pagination-last-page">맨 끝 페이지로 가기</a>
				</div>
			</div>
		</div>
	</div>
</section>
<!-- Shopping Cart Section End -->

<!-- Footer Section Begin -->
<%@include file="../inc/footer.jsp"%>
<!-- Footer Section End -->