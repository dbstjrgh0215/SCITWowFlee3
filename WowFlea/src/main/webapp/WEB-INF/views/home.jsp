<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>WOWFLEE</title>

<link rel="stylesheet" href="resources/css/wow-css.css"> 



</head>
<body>
	<header class="site-header">
		<div class="top-header">
			<div class="top-header-left">
                <a href="goSignUp">Sign Up</a>
                <c:if test="${sessionLogin==null}">
	                <a href="goLogin">LogIn</a>
                </c:if>
                <c:if test="${sessionLogin!=null}">
	                <a href="logout">LogOut</a>
                </c:if>
       		</div> <!-- /.top-header-left -->   
		</div>
		<div class="main-header">
			<div class="logo">
				<h1><a href="goHome">WOWFLEE</a></h1>
			</div>
			<div class="menu">
			
			</div> 
		</div>
		<div class="main-nav">
	        <div class="list-menu">
	            <ul>
	                <li><a href="goBoardSpace">공간보기</a></li>
	                <li><a href="goBoardSeller">셀러보기</a></li>
	                <li><a href="">매거진</a></li>
	            </ul>
	        </div> <!-- /.list-menu -->
		</div>
	</header>
     
    <div class="main-content">
    	<div class="event">
    		<div class="event-header">
    			이벤트
    		</div>
    		<div class="event-content">
    			<img alt="logo" id="logo-login" src="resources/images/tm-170x80-1.jpg">
    		</div>
    	</div>
    	<div class="recommend-space">
    		<div class="r-space-header">
    			추천공간
    		</div>
    		<div class="r-space-content">
    			<table id="r-space-table">
    				<tr>
	    				<td id="r-space-image"><img alt="logo" id="logo-login" src="resources/images/gallery-image-1.jpg"></td>
		    			<td id="r-space-image"><img alt="logo" id="logo-login" src="resources/images/gallery-image-1.jpg"></td>
		    			<td id="r-space-image"><img alt="logo" id="logo-login" src="resources/images/gallery-image-1.jpg"></td>
    				</tr>
    				<tr>
    					<td><a href="">추천 공간 1번</a></td>
	    				<td><a href="">추천 공간 2번</a></td>
	    				<td><a href="">추천 공간 3번</a></td> 
    				</tr>
    			</table>
    		</div> 
    	</div>
    	<div class="recommend-seller">
    		
    		<div class="r-seller-header"> 
    			추천셀러
    		</div> 
    		
    		<div class="r-seller-content">
    			<div class="r-seller-image">
    				<table id="r-space-table">
    				<tr>
	    				<td id="r-seller-image"><img alt="logo" id="logo-login" src="resources/images/gallery-image-2.jpg"></td>
		    			<td id="r-seller-image"><img alt="logo" id="logo-login" src="resources/images/gallery-image-2.jpg"></td>
		    			<td id="r-seller-image"><img alt="logo" id="logo-login" src="resources/images/gallery-image-2.jpg"></td>
    				</tr>
    				<tr>
    					<td><a href="">추천 셀러 1번</a></td>
	    				<td><a href="">추천 셀러 2번</a></td>
	    				<td><a href="">추천 셀러 3번</a></td>
    				</tr>
    			</table>
    			</div>
    			
    		</div>
    	</div>
    </div>
</body>
 
	<script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
	
 	<script src="resources/js/wow-js.js"></script>
</html>