<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>

<link rel="stylesheet" href="resources/css/wow-css.css"> 

<script>
	function submitA(){
		var memberType = document.getElementById("btn_mem_seller").value;
		document.getElementById("memberTypeForm").submit(memberType);
	}
	function submitB(){
		var memberType = document.getElementById("btn_mem_spacer").value;
		document.getElementById("memberTypeForm").submit(memberType);
	}
</script>

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
		<div class="memType-Comment">
			<p>회원가입에 성공하였습니다!</p>
        	<p>활동분야를 선택하고 추가정보를 입력하여주세요!</p>     
		</div>
		                                                          
        <form action="memberType" method="post" id="memberTypeForm">
			<input type="hidden" name="id" value="${mem.id}">
			<input type="hidden" name="pw" value="${mem.pw}">
			<input type="hidden" name="name" value="${mem.name}">
			<input type="hidden" name="phone" value="${mem.phone}">
			<input type="hidden" name="email" value="${mem.email}">
			<input type="hidden" name="mailaddr" value="${mem.mailaddr}">
			<input type="hidden" name="birthdate" value="${mem.birthdate}">
			<div class="memType-Select">
				<table id="memType-Table">
					<tr>
						<td id="td_seller"><button id="btn_mem_seller" name="memberType" onclick="javascript:submit()" value="seller">x</button></td>
						<td style="width:50px;"></td>
						<td id="td_spacer"><button id="btn_mem_spacer" name="memberType" onclick="javascript:submit()" value="spacer">x</button></td>
					</tr>
					<tr>
						<td><p><font style="color:aqua;">셀러</font>로 이용할래요!</p></td>
						<td style="width:50px;"></td>
						<td><p><font style="color:orange;">공간제공자</font>로 이용할래요!</p></td>
					</tr>
					<tr>
						<td><p>제품을 생산하고 공간에</p><p>납품하고자 하는 분</p></td>
						<td style="width:50px;"></td>
						<td><p>유휴공간을 공유하고자 하는 분</p></td> 
					</tr>
					<tr>
						<td colspan="2"><a href="">아니요! 나중에 추가할래요!</a></td>
					</tr>
				</table>
			</div>
			
		
		</form>
    </div>
	
	<script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
	
 	<script src="resources/js/wow-js.js"></script>
</body>
</html>