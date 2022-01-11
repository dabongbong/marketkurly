<%@page import="com.kurly.marketkurly.domain.Subcategory"%>
<%@page import="com.kurly.marketkurly.domain.Category"%>
<%@page import="java.util.List"%>
<%@ page contentType="text/html; charset=UTF-8"%>
<%
	List<Category> categoryList = (List)request.getAttribute("categoryList");
	List<Subcategory> subcategoryList = (List)request.getAttribute("subcategoryList");
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
<body>
    <!-- Page Preloder -->
    <div id="preloder">
        <div class="loader"></div>
    </div>

    <!-- Header Section Begin -->
    <header class="header-section">
        <div class="header-top">
            <div class="container">
                <a href="#" class="delivery-panner"><img src="./resources/market/img/categoryIcons/delivery_210801.webp" alt="샛별,택배배송안내" width="121" height="22"></a>
                <div class="ht-right" id="userMenu">
                <ul class="drop">
                    <li><a href="#" class="join-panel">회원가입</a></li>
                    <li><a href="/market/member/login" class="login-panel">로그인</a></li>
                    <li><a href="#" class="customer-panel menu">고객센터<img src="./resources/market/img/categoryIcons/ico_down_16x10.webp" width="10px"></a>
	                    <ul class="sub">
	                        <li><a href="#">공지사항­</a></li>
	                        <li><a href="#">자주하는질문</a></li>
	                        <li><a href="#">1:1문의</a></li>
	                    </ul>
                    </li>
	             </ul> 
                </div>
            </div>
        </div>
        <div class="container">
            <div class="inner-header">
                <div class="logo">
                    <a href="./index.html">
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
<%--                         <%for(Category category : categoryList){ %> --%>
<!--                             	<a id="category"  style='color:#646464' href="#" > -->
<%--                             		<img src="/resources/categoryImg/<%=category.getCategory_logo()%>" width="35px"> --%>
<%--                             		<%=category.getCategory_name() %> --%>
<!--                             	</a> -->
<%--                     	<%} %> --%>
		                    	<ul class="sub-hover">
		                    		<li class="active">
		                    			<a id="subCategory" href="#"><input type="hidden" name="category_id">서브카테고리</a>
		                    		</li>
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
                            <input type="image" src="./resources/market/img/categoryIcons/ico_search_x2.webp" class="search-icon">
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
                                <a href="#"></a>
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
    $(function(){
    	$("#category").hover(function(){
    		$("#subCategory").show();
    	});
    })
    </script>