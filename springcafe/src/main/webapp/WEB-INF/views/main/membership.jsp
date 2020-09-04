<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<form action="<%=request.getContextPath()%>/membership" method="POST">
		<div class="container-content">
	        <div class="container-membership-body">
	            <div class="container-box-word">
	                <p class="container-member-title">가맹 희망지역</p>
	                <div class="container-membership hope-location">
	                    <input type="text" name="ship_location" placeholder="개설 희망지역을 동 단위까지 입력해주세요.">
	                </div>
	            </div>
	            <div class="container-box-word">
	                <p class="container-member-title">원하는 점포형태</p>
	                <div class="container-membership hope-store">
	                    <input type = "radio" name = "ship_store_shape" value="일반매장" id="normal"> <label for ="normal"> 일반매장</label>
	                    <input type = "radio" name = "ship_store_shape" value="드라이브 인/스루" id="drive"> <label for ="drive"> 드라이브 인/스루</label>
	                    <input type = "radio" name = "ship_store_shape" value="기타" id="etc"> <label for ="etc"> 기타</label> <input type="text">
	                </div>
	            </div>
	
	            <div class="container-box-word">
	                <p class="container-member-title">점포 소유 여부</p>
	                <div class="container-membership get-store">
	                    <input type="radio" name="ship_possession" value="Y" id="Y"> <label for="Y">예</label>
	                    <input type="radio" name="ship_possession" value="N" id="N"> <label for="N">아니오</label>
	                </div>
	            </div>
	            <div class="container-box-word">
	                <p class="container-member-title">연령대</p>
	                <div class="container-membership mem-age">
	                    <input type="radio" name="ship_age" value="20대" id="20대"> <label for="20대">20대</label>
	                    <input type="radio" name="ship_age" value="30대" id="30대"> <label for="30대">30대</label>
	                    <input type="radio" name="ship_age" value="40대" id="40대"> <label for="40대">40대</label>
	                    <input type="radio" name="ship_age" value="50대" id="50대"> <label for="50대">50대</label>
	                    <input type="radio" name="ship_age" value="60대 이상" id="60대 이상"> <label for="60대 이상">60대 이상</label>
	                </div>
	            </div>
	            <div class="container-box-word">
	                <p class="container-member-title">신청자명</p>
	                <div class="container-membership mem-name">
	                    <input type="text" name="ship_name">
	                </div>
	            </div>
	            <div class="container-box-word">
	                <p class="container-member-title">휴대폰 번호</p>
	                <div class="container-membership mem-tel">
	                    <input type="tel" name="ship_phone"> -
	                    <input type="tel" name="ship_phone"> -
	                    <input type="tel" name="ship_phone">
	                </div>
	            </div>
	
	            <p>유디아 가맹문의 개인정보 수집이용 동의 안내</p>
	            <div class="box-container-info">
	                <p>회사는 유디아 가맹설명회 신청에서 수집한 개인정보를 다음의 목적을 위해 활용합니다. 이용자가 제공한 모든 정보는 하기 목적에 필요한 용도 이외로는 사용되지 않으며 이용 목적이 변경될 시에는 사전 동의를 구할 것입니다.</p>
	                <ul class="nav-info-list">
	                    <li class="list-info">
	                        <p>■ 개인정보 수집 이용목적<br>
	                        - 유디아 가맹 및 고객문의 응답처리를 위해 수집</p>
	                    </li>
	                    <li class="list-info">
	                        <p>■ 수집하는 개인정보 항목<br>
	                        - 이름, 연락처(전화번호, 핸드폰번호), 이메일 가맹희망지역, 문의내용</p>
	                    </li>
	                    <li class="list-info">
	                        <p>■ 개인정보 수집 이용목적<br>
	                        - 가맹 및 고객문의 처리 완료되는 시점으로 부터 1개월 보유 후 파기</p>
	                    </li>
	                </ul>
	                <p class="mem-info">※위의 개인정보 수집·이용에 대한 동의를 거부할 권리가 있습니다. 그러나 동의를 거부할 경우 원활한 가맹문의 서비스 제공에 일부 제한을 받을 수 있습니다.</p>
	            </div>
	
	            <div class="box-agree">
	                <div class="box-container-agree">
	                    <input type="radio" name="agree-disagree" class="agree" value="agree" id="agree"> <label for="agree">동의</label>
	                    <input type="radio" name="agree-disagree" class="unagree" value="diagree" id="unagree"> <label for="unagree">미동의</label>
	                </div>
	            </div>
	            <br>
	            <div class="box-btn-submit"><button class="btn-submit">등록하기</button></div>
	        </div>
        </div>
    </form>