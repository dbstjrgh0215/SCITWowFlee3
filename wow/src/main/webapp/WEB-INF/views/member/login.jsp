<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>로그인</title>

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
			<div class="login-logo">
				<img alt="logo" id="logo-login" src="resources/images/gallery-image-5.jpg">
			</div>
			<div class="member-Type">
			    <input type="radio" checked class="toggle_option" id="first_toggle" name="toggle_option">
			    　　<input type="radio" class="toggle_option" id="second_toggle" name="toggle_option">
			    <label for="first_toggle">셀러</label>
			    <label for="second_toggle">공간 제공자</label>
			    <div class="toggle_option_slider">  
			    </div>
			</div>
			<div class="login-Form">
				<form action="login" method="post">
				<div class="login-Check">
					<input type="checkbox" id="loginKeep" name="useCookie" value="true"> 로그인 유지　　　　
					<input type="checkbox" id="idSaveCheck" name="idSaveCheck" value="아이디 저장"> 아이디 저장   
				</div>
				<table id="login-Table">     
					<tr>
						<td id="td-id" ><input type="text" name="id" placeholder="아이디 " autofocus="autofocus" tabindex="1"></td> 
						<td id="td-btnLogin" rowspan="2"><input type="submit" id="btnLogin" tabindex="3" value="로그인" ></td>
					</tr>
					<tr>
						<td id="td-pw"><input type="password" name="pw" placeholder="비밀번호" tabindex="2"></td>
					</tr>
				</table>
				</form>
				<font style="color:red;">${loginFail}</font>
			</div>
			<div class="login-Menu">
				<ul>
					<li><a href="goSignUp">회원가입</a></li>
					<li><a href="findId">아이디 찾기</a></li>
					<li><a href="findPw">비밀번호 찾기</a></li>
				</ul>
			</div>
		</div>
	
		
		
		
		<script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
	
 	<script src="resources/js/wow-js.js"></script>
		
	
	

</body>
</html>