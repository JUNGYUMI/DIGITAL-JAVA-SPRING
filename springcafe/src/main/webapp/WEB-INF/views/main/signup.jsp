<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <div class="container-content">
	    <div class="container-signup"> 
			<div class="signup-logo"> 
				<span>회원가입 정보</span> 
			</div> 
			<div class="container-id"> 
				<div class="text-id">아이디</div> 
				<div class="box-id box-signup"> 
					<input type="text" name="id" id="id" placeholder="5~16자의 영/소문자와 숫자"> 
				</div> 
			</div> 
			<div class="container-pw"> 
				<div class="text-pw">비밀번호</div> 
				<div class="box-pw box-signup"> 
					<input type="password" name="pw" id="pw" placeholder="5~16자의 영/소문자와 숫자"> 
				</div> 
			</div> 
			<div class="container-pw"> 
				<div class="text-pw">비밀번호 확인</div> 
				<div class="box-pw box-signup"> 
					<input type="password" name="pw2" id="pw2" placeholder="비밀번호를 한번 더 입력해주세요"> 
				</div> 
			</div> 
			<div class="container-name"> 
				<div class="text-name">이름</div> 
				<div class="box-name box-signup"> 
					<input type="text" name="name" id="name"> 
				</div> 
			</div>  
			<div class="container-gender"> 
				<div class="text-gender">성별</div> 
				<div class="box-gender box-signup"> 
					<select name="gender" id="gender"> 
						<option value="">성별</option> 
						<option value="male">남자</option> 
						<option value="female">여자</option> 
					</select> 
				</div> 
			</div> 
			<div class="container-email"> 
				<div class="text-bold">본인확인 이메일 <span class="text-small">(선택)</span></div> 
				<div class="box-email box-signup"> 
					<input type="text" name="email" id="email" placeholder="이메일 주소를 입력하세요"> 
				</div> 
			</div> 
			<div class="container-phone"> 
				<div class="text-bold">휴대전화</div> 
				<div class="box-phone"> 
					<div class="box-country box-signup"> 
						<select name="country" id="country">  
							<option value="+82" selected>대한민국 +82</option> 
						</select> 
					</div> 
				</div> 
			</div> 
			<button class="btn-submit">가입하기</button> 
		</div>
	</div>