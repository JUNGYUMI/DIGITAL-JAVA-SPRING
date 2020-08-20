<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<div class="main-head">
        <div class="container-sign">
        	<div class="box-sign">
	            <div class="box-signin"><a href="<%=request.getContextPath()%>/signin" class="link-signin">로그인</a></div>
	            <div class="box-signup"><a href="<%=request.getContextPath()%>/signup" class="link-signup">회원가입</a></div>
            </div>
        </div>
        <div class="container-list">
            <ul class="nav-list">
                <li class="eudia-list">
                    <a href="#demo" class="link-list" data-toggle="collapse">EUDIA STORY</a>
                    <div id="demo" class="collapse">
                        <a href="#cafe_introduce.html">카페소개</a><br>
                        <a href="#cafe_location.html">찾아오시는 길</a> 
                      </div>
                </li>
                <li class="eudia-list">
                    <a href="#demo2" class="link-list" data-toggle="collapse">EUDIA MENU</a>
                    <div id="demo2" class="collapse">
                        <a href="#drink_menu.html">음료메뉴</a><br>
                        <a href="#dessert_menu.html">디저트 메뉴</a>
                      </div>
                </li>
                <li class="eudia-list">
                    <a href="#demo3" class="link-list" data-toggle="collapse">DRINK&DESSERT ORDER</a>
                    <div id="demo3" class="collapse">
                        <a href="#online_order.html">온라인 주문</a><br>
                        <a href="#takeout_order.html">TAKE OUT</a>
                      </div>
                </li>
                <li class="eudia-list">
                    <a href="#demo4" class="link-list" data-toggle="collapse">COMMUNITY</a>
                    <div id="demo4" class="collapse">
                        <a href="#notice_list.html">공지사항</a><br>
                        <a href="#customer_list.html">고객문의</a><br>
                        <a href="#membership.html">가맹문의</a>
                      </div>
                </li>
            </ul>
        </div> 
    </div>