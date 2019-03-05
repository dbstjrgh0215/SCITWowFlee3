<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>공간보기</title>

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
    
    <script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
	
 	<script src="resources/js/wow-js.js"></script>
</body>
</html>