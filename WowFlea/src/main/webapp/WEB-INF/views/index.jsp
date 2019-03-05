<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<html>
<head>
<meta charset="utf-8">
<title>WOWFLEE</title>

<meta name="description" content="">
<meta name="viewport" content="width=device-width">

<link href="http://fonts.googleapis.com/css?family=Open+Sans:400,300,600,700,800" rel="stylesheet">

<link rel="stylesheet" href="resources/css/bootstrap.css">
<link rel="stylesheet" href="resources/css/normalize.min.css">
<link rel="stylesheet" href="resources/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/css/animate.css">
<link rel="stylesheet" href="resources/css/templatemo-misc.css">
<link rel="stylesheet" href="resources/css/templatemo-style.css">

<script src="resources/js/vendor/modernizr-2.6.2.min.js"></script>

<style>
	.main-content{
		width:80%; 
		margin: 0 auto; 
		position: relative;
	}
	.event, .recommend-space, .recommend-seller{
		text-align:center; 
		margin: 3% auto; 
	}
	.event{  
		height:30%;
	}
	.event-content img{
		width:100%;
		height:100%;
	}
	.recommend-space, .recommend-seller{
		height:40%;
	}
	.event-content, .r-space-content, .r-seller-content{
		margin: 1% 0;
		height:90%;
	}
	#r-space-table{
		text-align:center;
		margin: 0 auto; 
	}
	#r-space-table img{
		width:95%;
		height:90%;
		padding: 5%;
	}
	#r-space-table td{
		text-align:center;
	}
	
</style>

</head>
<body>
    <header class="site-header">
        <div class="top-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-6">
                        <div class="top-header-left">
                            <a href="goSignUp">Sign Up</a>
                            <a href="goLogin">Log In</a>
                        </div> <!-- /.top-header-left -->
                    </div> <!-- /.col-md-6 -->
                    <div class="col-md-6 col-sm-6">
                        <div class="social-icons">
                            <ul>
                                <li><a href="#" class="fa fa-facebook"></a></li>
                                <li><a href="#" class="fa fa-dribbble"></a></li>
                                <li><a href="#" class="fa fa-twitter"></a></li>
                                <li><a href="#" class="fa fa-linkedin"></a></li>
                            </ul>
                            <div class="clearfix"></div>
                        </div> <!-- /.social-icons -->
                    </div> <!-- /.col-md-6 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.top-header -->
        <div class="main-header">
            <div class="container">
                <div class="row">
                    <div class="col-md-4 col-sm-6 col-xs-8">
                        <div class="logo">
                            <h1><a href="goHome">WOWFLEE</a></h1>
                        </div> <!-- /.logo -->
                    </div> <!-- /.col-md-4 -->
                    <div class="col-md-8 col-sm-6 col-xs-4">
                        <div class="main-menu">
                            <a href="#" class="toggle-menu">
                                <i class="fa fa-bars"></i>
                            </a>
                            <ul class="menu">
                                <li><a href="#">Home</a></li>
                                <li><a href="#">Catalogs</a></li>
                                <li><a href="#">FAQs</a></li>
                                <li><a href="#">Policies</a></li> 
                                <li><a href="#">About</a></li>
                            </ul>
                        </div> <!-- /.main-menu -->
                    </div> <!-- /.col-md-8 -->
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.main-header -->
        <div class="main-nav">
            <div class="container">
                <div class="row">
                    <div class="col-md-6 col-sm-7">
                        <div class="list-menu">
                            <ul>
                                <li><a href="goBoardSpace">공간보기</a></li>
                                <li><a href="goBoardSeller">셀러보기</a></li>
                                <li><a href="">매거진</a></li>
                            </ul>
                        </div> <!-- /.list-menu -->
                    </div> <!-- /.col-md-6 -->
                    
                </div> <!-- /.row -->
            </div> <!-- /.container -->
        </div> <!-- /.main-nav -->
    </header> <!-- /.site-header -->
    
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
</html>