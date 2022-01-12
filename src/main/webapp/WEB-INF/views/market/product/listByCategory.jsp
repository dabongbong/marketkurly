<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>

<%
	List<Product> productList = (List)request.getAttribute("productList");
	
%>
    <!-- Header Section Begin -->
    <%@ include file="../inc/header.jsp" %>
    <!-- Header End -->
		<section class="content">
			<div class="container">
					<ul class="row">
						<%for(Product product : productList){ %>
							<li class="col-md-4">
								<img alt="대표이미지" src="/resources/productImg/<%=product.getProduct_img()%>">
								<p class="h4"><%=product.getTitle() %></p>
								<p class="h6"><%=product.getSubTitle() %></p>
							</li>
						<%} %>
					</ul>
			</div>
		</section>
   <!-- Footer Section Begin -->
 <%@include file="../inc/footer.jsp" %>
    <!-- Footer Section End -->