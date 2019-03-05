<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>추가 정보 입력</title>
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
		<form action="exInfoSave" id="exInfoSave" method="post">
			<input type="hidden" name="id" value="${mem.id}">
			<input type="hidden" name="pw" value="${mem.pw}">
			<div class="signUp-table">
				<div class="signUp-MemAccount"> 
					<fieldset id="fieldAccount">
					<legend>기본정보</legend>
						<table id="tableBasic" > 
							<tr>
								<th><p>셀러 프로필 사진</p></th>
							</tr>
							<tr> 
								<td rowspan="2">사진</td>
								<td><p>파일유형:jpg,jpeg,png,gif</p><p> 최대파일크기:10MB</p></td>
								<td></td>
								<th><p>활동명</p></th>
								<td></td>
								<td></td>  
							</tr>
							<tr>
								<td colspan="2"><button>파일첨부</button></td>
								<td colspan="3"><input type="text" name="nickname" autofocus></td>
							</tr>
							<tr>
								<th colspan="3"><p>이름</p></th>
								<th colspan="3"><p>회원종류</p></th>
							</tr>
							<tr>
								<td colspan="3"><input type="text" name="name" value="${mem.name}"></td>
								<td colspan="3"><select disabled><option <c:if test="${memberType=='seller'}">selected</c:if>>셀러</option>
								<option <c:if test="${memberType=='spacer'}">selected</c:if>>공간제공자</option></select>
								<input type="hidden" name="membertype" value="${memberType}"></td>
							</tr>  
							<tr>
								<th colspan="2">생년월일</th>
								<th>성별</th>
								<th colspan="3">이메일주소</th>
							</tr>
							<tr>
								<td colspan="2"><input type="date" name="birthdate" value="${mem.birthdate}"></td>
								<td><select name="gender"><option>남</option><option>녀</option></select></td>
								<td colspan="3"><p><input type="text" style="width:40%;" name="email" value="${mem.email}">@<select style="width:40%;" name="mailaddr">
								<option <c:if test="${mem.mailaddr=='naver.com'}">selected</c:if>>naver.com</option>
								<option <c:if test="${mem.mailaddr=='nate.com'}">selected</c:if>>nate.com</option></select></p></td>
							</tr>
							<tr>
								<th colspan="3">핸드폰번호</th>
								<th colspan="3">전화번호</th>
							</tr>
							<tr>
								<td colspan="2"><input type="text" name="phone" value="${mem.phone}"></td>
								<td><button>인증</button></td>
								<td colspan="3"><input type="text" name="tel"></td>
							</tr>
							<tr>
								<th colspan="3">주소</th>
								<th colspan="3">상세주소</th>
							</tr>
							<tr>
								<td colspan="3"><input type="text" name="address1"></td>
								<td colspan="3"><input type="text" name="address2"></td>
							</tr>
						</table>
					</fieldset>	
				</div>
				
				<div class="signUp-busiInfo"> 
					<fieldset id="fieldAccount">
					<legend>사업자정보</legend>
						<table id="tableBusi" > 
							<tr>
								<th><p>사업자등록번호</p></th>
								<td></td>
								<td></td>
								<th><p>사업자종류</p></th>
								<td></td>
								<td></td>
							</tr>
							<tr>
								<td colspan="3"><input type="text" name="licensenum"></td>
								<td colspan="3"><input type="text" name="busi_type"></td>
							</tr>
							<tr>
								<th colspan="3"><p>사업장전화번호</p></th>
							</tr>
							<tr>
								<td colspan="3"><input type="text" name="busi_tel"></td>
							</tr>
							<tr>
								<th colspan="3">사업장주소</th>
								<th colspan="3">상세주소</th>
							</tr>
							<tr>
								<td colspan="3"><input type="text" name="busi_addr1"></td>
								<td colspan="3"><input type="text" name="busi_addr2"></td>
							</tr>
						</table>
					</fieldset>	
				</div>
			</div>
			
			<div class="signUp-prodInfo"> 
				<fieldset id="fieldAccount">
				<legend>물품정보</legend>
					<table id="tableProd" > 
						<tr>
							<th colspan="6"><p>물품종류</p></th>
						</tr>
						<tr>
							<td colspan="2"><select><option>대분류</option></select></td>
							<td colspan="2"><select><option>중분류</option></select></td>
							<td colspan="2"><select><option>소분류</option></select></td>
						</tr>
						<tr>
							<th colspan="6"><p>물품키워드</p></th>
						</tr>
						<tr>
							<td colspan="5"><input type="text"></td>
							<td><button style="width:45px;">추가</button></td>
						</tr>
						<tr>
							<th colspan="6">물품사진</th>
						</tr>
						<tr>
							<td>사진</td>
							<td>사진</td>
							<td>사진</td>
							<td>사진</td>
							<td>사진</td>
							<td><button style="width:45px;">추가</button></td>
						</tr>
					</table>
				</fieldset>	
			</div>
			
			<div>
				<p><c:if test="${memberType=='seller'}">셀러</c:if><c:if test="${memberType=='spacer'}">공간제공자</c:if>소개</p>
				<textarea name="comments" style="width:80%; height:400px; color:black;" placeholder="소개를 입력해주세요!">
				
				</textarea>
			</div>
			
			<div class="signUp-btn">
				<input type="submit" value="저장" style="border:none;">
				<input type="submit" name="back" value="취소" style="border:none;">
			</div>   
 		
		</form>
    </div>

<script src="resources/js/vendor/jquery-1.10.1.min.js"></script>
	
 	<script src="resources/js/wow-js.js"></script>
</body>
</html>