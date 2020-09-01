<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<c:if test="${member == null}">
	<form action="<%=request.getContextPath()%>/signin" method="post">
	    <div class="nav-login">
	        <div class="box-container-login"> 
	            <div class="logo"><span>로그인 Login</span></div> 
	            <div class="container-id"></div> 
	            <div class="box-container-id"></div> 
	        </div>
	 
	        <div class="container-login"> 
	            <div class="text-bold"></div> 
	
	            <div class="box-id"> 
	                <input type="text" name="mem_id" id="mem_id" placeholder="아이디"> 
	            </div>
	
	            <div class="box-password"> 
	                <input type="password" name="mem_pw" id="mem_pw" placeholder="비밀번호">
	            </div>
	            <button type="submit" class="btn-submit">로그인</button>  
	        </div>  
	            
	        <!--비번찾기, 회원가입-->
	        <div class="container-search">
	            <a href="#" class="link-search">비밀번호 찾기</a>
	            <span>│</span>
	            <a href="<%=request.getContextPath()%>/signup" class="link-search">회원가입</a>
	        </div>
	    </div>
    </form>
</c:if>