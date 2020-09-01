<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="main-head">
        <div class="container-sign">
        	<div class="box-sign">
        		<div class="box-home"><a href="<%=request.getContextPath()%>/" class="link-home">홈</a></div>
        		<c:if test="${member == null}">
	            	<div class="box-signin"><a href="<%=request.getContextPath()%>/signin" class="link-signin">로그인</a></div>
	            </c:if>
	            <c:if test="${member != null}">
            		<div class="box-sign-up"><a href="<%=request.getContextPath()%>/signout" class="link-signup">로그아웃</a></div>
            	</c:if>
	            <div class="box-sign-up"><a href="<%=request.getContextPath()%>/signup" class="link-signup">회원가입</a></div>
            	
            </div>
        </div>
        <div class="container-list">
            <ul class="nav-list">
                <li class="eudia-list">
                    <a href="#demo" class="link-list" data-toggle="collapse">EUDIA STORY</a>
                    <div id="demo" class="collapse">
                        <a href="<%=request.getContextPath()%>/introduce">카페소개</a><br>
                        <a href="<%=request.getContextPath()%>/location">찾아오시는 길</a> 
                      </div>
                </li>
                <li class="eudia-list">
                    <a href="#demo2" class="link-list" data-toggle="collapse">EUDIA MENU</a>
                    <div id="demo2" class="collapse">
                        <a href="<%=request.getContextPath()%>/drink_menu">음료메뉴</a><br>
                        <a href="<%=request.getContextPath()%>/dessert_menu">디저트 메뉴</a>
                      </div>
                </li>
                <li class="eudia-list">
                    <a href="#demo3" class="link-list" data-toggle="collapse">DRINK&DESSERT ORDER</a>
                    <div id="demo3" class="collapse">
                        <a href="<%=request.getContextPath()%>/online_order">온라인 주문</a><br>
                        <a href="<%=request.getContextPath()%>/takeout_order">TAKE OUT</a>
                      </div>
                </li>
                <li class="eudia-list">
                    <a href="#demo4" class="link-list" data-toggle="collapse">COMMUNITY</a>
                    <div id="demo4" class="collapse">
                        <a href="<%=request.getContextPath()%>/notice_list">공지사항</a><br>
                        <a href="<%=request.getContextPath()%>/customer_list">고객문의</a><br>
                        <a href="<%=request.getContextPath()%>/membership">가맹문의</a>
                      </div>
                </li>
            </ul>
        </div> 
    </div>