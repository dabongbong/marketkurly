<%@page import="com.kurly.marketkurly.util.Pager"%>
<%@page import="com.kurly.marketkurly.domain.Product"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html;charset=UTF-8"%>

<%
	List<Product> productList = (List)request.getAttribute("productList");
	Pager pager = (Pager)request.getAttribute("pager");
%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>프로덕트 리스트</h1>
                <table class="table table-hover text-nowrap">
                  <thead>
                    <tr>
                      <th>No</th>
                      <th>카테고리</th>
                      <th>상품명</th>
                      <th>가격</th>
                      <th>가격</th>
                      <th>가격</th>
                    </tr>
                  </thead>
                   <tbody>
                <%int curPos=pager.getCurPos(); %>
                  <%int num=pager.getNum(); %>
                  <%for(int i =0; i<=pager.getPageSize();i++) {%>
                  <%if(num<1)break; %>
                  <%Product product=productList.get(curPos++); %>
                    <tr>
                      <td><%=num-- %></td>
                      <td><%=product.getSubcategory().getSubcategory_name() %></td>
                      <td><%=product.getTitle() %></td>
                      <td><%=product.getSubTitle() %></td>
                      <td><%=product.getPrice()/100*(100-product.getSale()) %></td>
                      <td><%=product.getDetail() %></td>
                    </tr>
                    <%} %>
                    <tr>
                 	   <td  colspan="4">
                    		<button type="button" class="btn btn-info" onClick="location.href='/admin/product/registForm'">상품등록</button>
                    	</td>
                    </tr>
                  </tbody> 
            
                </table>
</body>
</html>