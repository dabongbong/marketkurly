<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.kurly.marketkurly.domain.ProductDetail"%>
<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	Product product = (Product)request.getAttribute("product");
%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<%@ include file="../inc/head_link.jsp" %>
<title>Insert title here</title>
</head>
<body>
  <!-- Navbar -->
  <%@ include file="../inc/navbar.jsp" %>
  <!-- /.navbar -->
  <!-- Main Sidebar Container -->
  <%@ include file="../inc/sidebar.jsp" %>  
  <div class="content-wrapper">
      <!-- Content Header (Page header) -->
    <div class="content-header">
      <div class="container-fluid">
        <div class="row mb-2">
          <div class="col-sm-6">
            <h1 class="m-0">Dashboard</h1>
          </div><!-- /.col -->
          <div class="col-sm-6">
            <ol class="breadcrumb float-sm-right">
              <li class="breadcrumb-item"><a href="#">Home</a></li>
              <li class="breadcrumb-item active">Dashboard v1</li>
            </ol>
          </div><!-- /.col -->
        </div><!-- /.row -->
      </div><!-- /.container-fluid -->
    </div>
    <!-- /.content-header -->
  	<!-- Main content -->
  	<section class="content">
  		<div class="container-fluid">
  			<div class="row">
  				<div class="col-5">
  					<img class="col-12"alt="상품대표이미지" src="/resources/productImg/<%=product.getProduct_img()%>">
  				</div>
  				<div class="col-7">
  					<p class="goods_name">
	  					<h1 class="font-weight-bold"><%=product.getTitle() %></h1>
	  					<h6><%=product.getSubTitle() %></h6>
  					</p>
  					<%if(product.getSale()>0){ %>
  					<p>회원할인가</p>
  					<p class="goods_price">
  						<span class="dc_pirce h1 font-weight-bold"><%=product.getPrice()/100*(100-product.getSale()) %></span>
  						<span class="won h3">원</span>
  						<span class="h1 font-weight-bold text-danger">&nbsp;<%=product.getSale() %>%</span>
  					</p>
  					<h4><del><%=product.getPrice() %>원</del></h4>
					<p>로그인 후, 회원할인가와 적립혜택이 제공됩니다.</p>
  					<%} else{%>
  					<p class="goods_price">
						<span class="h1 font-weight-bold"><%=product.getPrice()%></span>
						<span class="won h3">원</span>
					</p>
  					<%}; %>
  					<hr>
  					<div >
					<%int i = 1; %>
					<%for(ProductDetail detail : product.getProduct_detail_list()){ %>
					<dl class="d-flex">
						<dt class="col-3"><%=detail.getItem() %></dt>
						<dd class="col-9"><%=detail.getContent() %><dd>
					</dl>
					<%if(i!=1){ %>
					<hr>
					<%}i++;}; %>
					</div>
  				</div>
  			</div>
  			<div class="row">
 				<div class="col-12 d-flex flex-wrap justify-content-center">
 				<%=product.getDetail() %>
 				</div>
  			</div>
  			<div class="container">
				<h5>Product Q/A</h5>
				<p>상품에 대한 문의를 남기는 공간입니다. 해당 게시판의 성격과 다른 글은 사전동의 없이 담당 게시판으로 이동될 수 있습니다.</p> 
				<p>배송관련, 주문(취소/교환/환불)관련 문의 및 요청사항은 마이컬리 내 1:1문의에 남겨주세요.</p> 
				<table class="table">
					<thead>
						<tr>
							<th class="col-8 text-center">제목</th>
							<th class="col-1 text-center">작성자</th>
							<th class="col-1 text-center">작성일</th>
							<th class="col-2 text-center">답변상태</th>
						</tr>
					</thead>
				<tbody>
					<tr>
						<td>John</td>
						<td class="text-center">Doe</td>
						<td class="text-center">john@example.com</td>
						<td class="text-center">john@example.com</td>
					</tr>
				</tbody>
				</table>
  			</div>
  			<button onClick="location.href='/admin/product/updateForm?product_id=<%=product.getProduct_id()%>';">수정</button>
  			<button onClick="location.href='/admin/product/delete?product_id=<%=product.getProduct_id()%>';">삭제</button>
  			<button onClick="location.href='/admin/product/list';">목록</button>
  		</div>
  	</section>
  </div>
  <%@ include file="../inc/footer.jsp" %>  
  <%@ include file="../inc/bottom_link.jsp" %>  
<script>

</script>
</body>
</html>