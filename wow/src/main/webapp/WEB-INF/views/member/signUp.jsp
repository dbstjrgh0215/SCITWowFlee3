<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

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
				<h1><a href="goHome">WOWFLEE </a></h1>
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
		<form action="insertMember" id="insertMember" method="post">
			<div class="signUp-table">
				<div class="signUp-MemAccount"> 
					<fieldset id="fieldAccount">
					<legend>계정정보</legend>
						<table id="tableAccount" > 
							<tr> 
								<td id="td-1">아이디</td>
								<td id="td-2"><input type="text" name="id" autofocus
								style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
							</tr>
							<tr>
								<td id="td-1">비밀번호</td>
								<td id="td-2"><input type="password" name="pw"
								style="border:none;border-right:0px; border-top:0px; boder-left:0px; boder-bottom:0px;"></td>
							</tr>
						</table>
					</fieldset>	
				</div>
				<div class="signUp-MemInfo">
					<fieldset>
					<legend>회원정보</legend>
						<table id="tableMemInfo">
							<tr>
								<td id="td-1">이름</td>
								<td id="td-2"><input type="text" name="name"></td>
							</tr>
							<tr>
								<td id="td-1">전화번호</td>
								<td id="td-2"><input type="tel" name="phone" placeholder="xxx-xxxx-xxxx"></td>
							</tr>
							<tr>
								<td id="td-1">이메일</td>
								<td id="td-2"><input type="text" name="email" style="width:40%;">@<select name="mailaddr" style="width:40%;">
								<option>naver.com</option><option>nate.com</option></select></td>
							</tr>
							<tr>
								<td id="td-1">생년월일</td>
								<td id="td-2"><input type="date" name="birthdate"></td>
							</tr>
						</table> 
					</fieldset>
				</div>
			</div>
			
			<div class="signUp-btn">
				<input type="submit" value="회원가입" style="border:none;">
				<input type="submit" name="back" value="취소" style="border:none;">
			</div>   
 		
		</form>
	</div>
	
	<script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
	
 	<script src="resources/js/wow-js.js"></script>
		
      
		
	
</body>
</html>