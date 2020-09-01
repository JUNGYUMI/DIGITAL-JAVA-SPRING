<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
        <div class="container-content">
       		<div class="container-order">
	        	<p>TAKE-OUT</p>
		        <div class="box-order">
              		<ul class="ul-drink-dessert">
                    	<div class="box-drink">
	                        <li class="list-drink">
                            <a href="#" class="link-drink">음료</a>
	                        </li>
	                    </div>
	                    <div class="box-dessert">
                        	<li class="list-dessert">
                            <a href="#" class="link-dessert">디저트</a>
	                        </li>
	                    </div>
	              </ul>  
		        </div>
		        <form>
		            <div class="box-cafe-menu drinkMenu">
		                <div class="box-menu-line1">
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName1">
	                                <span class="menu-name">유디아라떼</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName2">
	                                <span class="menu-name">아메리카노</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName3">
	                                <span class="menu-name">카페라떼</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName4">
	                                <span class="menu-name">샷달고나라떼</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName5">
	                                <span class="menu-name">샷말차라떼</span>
	                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line2">
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName6">
	                                <span class="menu-name">달고나밀크</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName7">
	                                <span class="menu-name">보라구마</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName8">
	                                <span class="menu-name">말차밀크</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName9">
	                                <span class="menu-name">초코나무숲</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName10">
	                                <span class="menu-name">레몬에이드</span>
	                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line3">
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName11">
	                                <span class="menu-name">요거트스무디<br>(플레인)</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName12">
	                                <span class="menu-name">요거트스무디<br>(베리베리)</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName13">
	                                <span class="menu-name">쉐이크(밀크)</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName14">
	                                <span class="menu-name">쉐이크(초코)</span>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="drinkName15">
	                                <span class="menu-name">자몽우롱</span>
	                            </div>
		                    </div>
		                </div>
		            </div>
		
		            <div class="box-cafe-menu dessertMenu display-none">
		                <div class="box-menu-line1">
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName1">
		                                <span class="menu-name">유디아스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName2">
		                                <span class="menu-name">바질치즈스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName3">
		                                <span class="menu-name">말차화이트초코스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName4">
		                                <span class="menu-name">초코듬뿍스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName5">
		                                <span class="menu-name">앙버터스콘</span>
		                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line2">
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName6">
		                                <span class="menu-name">얼그레이스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName7">
		                                <span class="menu-name">옥수수스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName8">
		                                <span class="menu-name">상큼레몬스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName9">
		                                <span class="menu-name">시나몬호두롤스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName10">
		                                <span class="menu-name">모카초코스콘</span>
		                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line3">
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName11">
		                                <span class="menu-name">솔티카라멜스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName12">
		                                <span class="menu-name">치즈폭탄스콘</span>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName13">
		                                <span class="menu-name">바스크치즈케이크</span>
		                            </div>
		                    </div>
	                    <div class="container-box-menu">
                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
                            <div class="box-menu-name">
                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName14">
                                <span class="menu-name">허니레몬케이크</span>
                            </div>
	                    </div>
	                    <div class="container-box-menu">
                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
                            <div class="box-menu-name">
                                <input type="checkbox" name="메뉴이름" id="cafe-menu-name" value="dessertName15">
                                <span class="menu-name">아이스크림 브라우니</span>
                       		</div>
	                    </div>
	                </div>
	            </div>
            </div>
            <button class="btn-order">주문</button> <!--주문 버튼 누른 후 주문리스트로 이동-->
        
        </form>
    </div>
    <script>
        $(function(){
            $('.link-dessert').click(function(){
                $('.box-cafe-menu').removeClass('display-none');
                $('.drinkMenu').addClass('display-none')
            })
            $('.link-drink').click(function(){
                $('.dessertMenu').addClass('display-none');
                $('.drinkMenu').removeClass('display-none');
            })
        })
    </script>