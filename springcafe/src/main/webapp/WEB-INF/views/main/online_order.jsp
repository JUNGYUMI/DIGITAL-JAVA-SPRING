<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <form action="<%=request.getContextPath()%>/online_order" method="post">
        <div class="container-content">
       		<div class="container-order">
	        	<p>ONLINE-ORDER</p>
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
		         
		            <div class="box-cafe-menu drinkMenu">
		                <div class="box-menu-line1">
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="유디아라떼" id="eudia_latte" value="drinkName1">
	                                <label for="eudia_latte"><span class="menu-name">유디아라떼</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="아메리카노" id="americano" value="drinkName2">
	                                <label for="americano"><span class="menu-name">아메리카노</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="카페라떼" id="cafe_latte" value="drinkName3">
	                                <label for="cafe_latte"><span class="menu-name">카페라떼</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="샷달고나라떼" id="shot_dalkona" value="drinkName4">
	                                <label for="shot_dalkona"><span class="menu-name">샷달고나라떼</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="샷말차라떼" id="shot_malcha" value="drinkName5">
	                                <label for="shot_malcha"><span class="menu-name">샷말차라떼</span></label>
	                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line2">
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="달고나밀크" id="dalkona_milk" value="drinkName6">
	                                <label for="dalkona_milk"><span class="menu-name">달고나밀크</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="보라구마" id="borakuma" value="drinkName7">
	                                <label for="borakuma"><span class="menu-name">보라구마</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="말차밀크" id="malcha_milk" value="drinkName8">
	                                <label for="malcha_milk"><span class="menu-name">말차밀크</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="초코나무숲" id="choco_namu" value="drinkName9">
	                                <label for="choco_namu"><span class="menu-name">초코나무숲</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="레몬에이드" id="lemonade" value="drinkName10">
	                                <label for="lemonade"><span class="menu-name">레몬에이드</span></label>
	                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line3">
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="요거트스무디(플레인)" id="yogurt_plain" value="drinkName11">
	                                <label for="yogurt_plain"><span class="menu-name">요거트스무디<br>(플레인)</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="요거트스무디(베리베리)" id="yogurt_berry" value="drinkName12">
	                                <label for="yogurt_berry"><span class="menu-name">요거트스무디<br>(베리베리)</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="쉐이크(밀크)" id="shake_milk" value="drinkName13">
	                                <label for="shake_milk"><span class="menu-name">쉐이크(밀크)</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="쉐이크(초코)" id="shake_choco" value="drinkName14">
	                                <label for="shake_choco"><span class="menu-name">쉐이크(초코)</span></label>
	                            </div>
		                    </div>
		                    <div class="container-box-menu">
	                            <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="메뉴" width="150" height="130">
	                            <div class="box-menu-name">
	                                <input type="checkbox" name="자몽우롱" id="grape_fruit" value="drinkName15">
	                                <label for="grape_fruit"><span class="menu-name">자몽우롱</span></label>
	                            </div>
		                    </div>
		                </div>
		            </div>
		
		            <div class="box-cafe-menu dessertMenu display-none">
		                <div class="box-menu-line1">
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="유디아스콘" id="eudia_scone" value="dessertName1">
		                                <label for="eudia_scone"><span class="menu-name">유디아스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="바질치즈스콘" id="basil_cheese_scone" value="dessertName2">
		                                <label for="basil_cheese_scone"><span class="menu-name">바질치즈스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="말차화이트스콘" id="malcha_whitechoco_scone" value="dessertName3">
		                                <label for="malcha_whitechoco_scone"><span class="menu-name">말차화이트초코스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="초코듬뿍스콘" id="choco_scone" value="dessertName4">
		                                <label for="choco_scone"><span class="menu-name">초코듬뿍스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="앙버터스콘" id="ang_butter" value="dessertName5">
		                                <label for="ang_butter"><span class="menu-name">앙버터스콘</span></label>
		                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line2">
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="얼그레이스콘" id="earlgrey_scone" value="dessertName6">
		                                <label for="earlgrey_scone"><span class="menu-name">얼그레이스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="옥수수스콘" id="corn_scone" value="dessertName7">
		                                <label for="corn_scone"><span class="menu-name">옥수수스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="상큼레몬스콘" id="lemon_scone" value="dessertName8">
		                                <label for="lemon_scone"><span class="menu-name">상큼레몬스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="시나몬호두롤스콘" id="cinnamon_walnut_scone" value="dessertName9">
		                                <label for="cinnamon_walnut_scone"><span class="menu-name">시나몬호두롤스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="모카초코스콘" id="mocha_choco_scone" value="dessertName10">
		                                <label for="mocha_choco_scone"><span class="menu-name">모카초코스콘</span></label>
		                            </div>
		                    </div>
		                </div>
		
		                <div class="box-menu-line3">
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="솔티카라멜스콘" id="salty_caramel_scone" value="dessertName11">
		                                <label for="salty_caramel_scone"><span class="menu-name">솔티카라멜스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="치즈폭탄스콘" id="cheese_scone" value="dessertName12">
		                                <label for="cheese_scone"><span class="menu-name">치즈폭탄스콘</span></label>
		                            </div>
		                    </div>
		                    <div class="container-box-menu">
		                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
		                            <div class="box-menu-name">
		                                <input type="checkbox" name="바스크치즈케이크" id="basque_cheese_cake" value="dessertName13">
		                                <label for="basque_cheese_cake"><span class="menu-name">바스크치즈케이크</span></label>
		                            </div>
		                    </div>
	                    <div class="container-box-menu">
                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
                            <div class="box-menu-name">
                                <input type="checkbox" name="허니레몬케이크" id="honey_lemon_cake" value="dessertName14">
                                <label for="honey_lemon_cake"><span class="menu-name">허니레몬케이크</span></label>
                            </div>
	                    </div>
	                    <div class="container-box-menu">
                            <img src="<%=request.getContextPath()%>/resources/img/background2.jpg" alt="메뉴" width="150" height="130">
                            <div class="box-menu-name">
                                <input type="checkbox" name="아이스크림브라우니" id="ice_cream_brownie" value="dessertName15">
                                <label for="ice_cream_brownie"><span class="menu-name">아이스크림 브라우니</span></label>
                       		</div>
	                    </div>
	                </div>
	            </div>
            </div>
            <button class="btn-order">주문</button> <!--주문 버튼 누른 후 주문리스트로 이동-->
	    </div>
	   </form>
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