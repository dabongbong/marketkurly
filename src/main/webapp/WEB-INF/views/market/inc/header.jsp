<%@page import="com.kurly.marketkurly.domain.Member"%>
<%@page import="com.kurly.marketkurly.domain.Category"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
 <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%
	List<Category> categoryList = (List)request.getAttribute("categoryList");
	Member member=(Member)session.getAttribute("member");
	
%>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>마켓컬리 :: 내일의 장보기, 마켓컬리</title>
    
    <!-- Google Font -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Noto+Sans+KR:wght@300&display=swap" rel="stylesheet">

    <!-- Css Styles -->
    <link rel="stylesheet" href="/resources/market/css/bootstrap.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/font-awesome.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/themify-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/elegant-icons.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/owl.carousel.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/nice-select.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/jquery-ui.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/slicknav.min.css" type="text/css">
    <link rel="stylesheet" href="/resources/market/css/style.css" type="text/css">
   
</head>
<script type="text/javascript">
</script>
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <a href="#" class="delivery-panner"><img src="/resources/market/img/categoryIcons/delivery_210801.webp" alt="샛별,택배배송안내" width="121" height="22"></a>
                <div class="ht-right" id="userMenu">
                <ul class="drop">
                
                <!-- 로그인 하지 않은 상태 -->
                <c:if test="${member.user_id==null }">
                    <li><a href="/registform" class="join-panel">회원가입</a></li>
                    <li><a href="/loginform" class="login-panel">로그인</a></li>
                  </c:if>
                  
                  <!-- 로그인한 상태 -->
                <c:if test="${ member.user_id != null }">
                            <li><a href="#" class="login-panel" id="loginSuccess" ><%=member.getMember_name() %><img src="./resources/market/img/categoryIcons/ico_down_16x10.webp" width="10px"></a>
			                    <ul class="sub">
			                        <li><a href="/detailform">개인정보수정</a></li>
			                        <li><a href="/orderList">주문내역</a></li>
			                        <li><a href="/logout" >로그아웃</a></li>
			                    </ul>
                            </li>
                          
               	 </c:if>
                    <li><a href="#" class="customer-panel menu">고객센터<img src="./resources/market/img/categoryIcons/ico_down_16x10.webp" width="10px"></a>
	                    <ul class="sub">
	                        <li><a href="/market/notice/notice">공지사항</a></li>
	                        <li><a href="#">자주하는질문</a></li>
	                        <li><a href="/myQnaList">1:1문의</a></li>
	                    </ul>
                    </li>
	             </ul> 
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="logo">
                    <a href="/">
                        <img src="./resources/market/img/categoryIcons/logo_x2.webp" alt="">
                    </a>
                </div>
            </div>
        </div>
        <div class="nav-item">
            <div class="container">
                <div class="nav-depart">
                    <div class="depart-btn">
                        <i class="ti-menu"></i>
                        	<span>전체 카테고리 </span>
                        		<ul class="depart-hover">
                            <li class="active">
                            
                         	<%for(int i=0; i<categoryList.size(); i++){ %>
                         	<%Category category=categoryList.get(i); %>
                         		<a id="category" style='color:#64646' href="#" onMouseOver="hoverCategory(<%=category.getCategory_id()%>, <%=i%>)">
                         		<img src="/resources/categoryImg/<%=category.getCategory_logo()%>" width="35px"><%=category.getCategory_name() %>
                         		</a>
                         	<%} %>
                         	 
		                    	<ul class="sub-hover" id="subBox">
									<!-- 서브카테고리 비동기방식 -->
		                    	</ul>
                            </li>
    					</ul>
                    </div>
                </div>
                <nav class="nav-menu mobile-menu">
                    <ul class="nav__menu">
                        <li class="active"><a href="./index.html">신상품</a></li>
                        <li><a href="./shop.html">베스트</a></li>
                        <li><a href="#">알뜰쇼핑</a></li>
                        <li><a href="./blog.html">특가/혜택</a></li>
                    </ul>
                  <div class="advanced-search">
                        <div class="input-group">
                            <input type="text" placeholder="검색어를 입력해주세요." class="search">
                            <input type="image" src="/resources/market/img/categoryIcons/ico_search_x2.webp" class="search-icon">
                        </div>
                    </div> 
                    <div class="icon-group">
                        <ul class="nav-right">
                            <li class="location-icon">
                                <a href="#"></a>
                            </li>
                            <li class="heart-icon">
                                <a href="#"></a>
                            </li>
                            <li class="cart-icon">
                                <a href="/myCart"></a>
                            </li>
                        </ul> 
                    </div>
                </nav>
                <div id="mobile-menu-wrap"></div>
            </div>
        </div>
    </header>
    <!-- Header End -->
    <script>
    function hoverCategory(category_id, index){
    	 /* $("#subCategory").show();  */
    		$.ajax({
    			url:"/rest/category",
    			type:"get",
    			success:function(result, status, xhr){
    				categoryList= result;
    				//console.log(result);
    				console.log(categoryList[index].subList);
    	 		
    				var tag="";
    				for(var i=0; i<categoryList[index].subList.length; i++){
    					var name=result[index].subList[i];
    		 			
    					tag+="<li id='subCategory' class='active'>";
    					tag+="<a href='#'>"+name.subcategory_name+"</a></li>";
    					
    				}
    				console.log(tag);
    				$("#subBox").empty();
    				$("#subBox").append(tag);
    			}
    		});
    	 }
    </script>