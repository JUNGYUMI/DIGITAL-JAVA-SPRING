<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

    <div class="container-content">
        <div id="myCarousel" class="carousel slide" data-ride="carousel">
            <!-- Indicators -->
            <ol class="carousel-indicators">
              <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
              <li data-target="#myCarousel" data-slide-to="1"></li>
              <li data-target="#myCarousel" data-slide-to="2"></li>
              <li data-target="#myCarousel" data-slide-to="3"></li>
            </ol>
<!-- 넘어 갈 사진들 -->
            <div class="carousel-inner" role="listbox">
              <div class="item active">
                <img src="<%=request.getContextPath()%>/resources/img/cafe_image2.jpg" alt="EUDIA" width="1200" height="700">      
              </div>
        
              <div class="item">
                <img src="<%=request.getContextPath()%>/resources/img/cafe_image2.jpg" alt="SCONE" width="1200" height="700">
                <div class="carousel-caption">
                  <h3>스콘 사진</h3>
                </div>      
              </div>
            
              <div class="item">
                <img src="<%=request.getContextPath()%>/resources/img/cafe_image3.jpg" alt="DRINK" width="1200" height="700">
                <div class="carousel-caption">
                  <h3>음료사진</h3>   
                </div>      
              </div>
              <div class="item">
                <img src="<%=request.getContextPath()%>/resources/img/cafe_image3.jpg" alt="etc" width="1200" height="700">
                <div class="carousel-caption">
                  <h3>기타사진</h3>   
                </div>      
              </div>
            </div>
<!-- 이전, 다음 버튼 -->
            <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
              <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
              <span class="sr-only">Previous</span>
            </a>
            <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
              <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
              <span class="sr-only">Next</span>
			</a>
		</div>
<!-- sns -->
		<div class="box-container-wrapper">
			<ul class="container-sns">
				<li class="list-sns">
					<a class="link-sns" href="https://www.instagram.com/eudia_coffee/">
						<img src="<%=request.getContextPath()%>/resources/img/White.jpg" alt="eudia" width=314px height=314px>
					</a>
					<span class="icon-insta">
						<img src="<%=request.getContextPath()%>/resources/img/instaIcon.jpg" alt="instagram" width=30px height=30px>
					</span>
				</li>
				<li class="list-sns">
					<a href="https://www.instagram.com/eudia_coffee/">
						<img src="<%=request.getContextPath()%>/resources/img/White.jpg" alt="eudia" width=314px height=314px>
					</a>
					<span class="icon-insta">
						<img src="<%=request.getContextPath()%>/resources/img/instaIcon.jpg" alt="instagram" width=30px height=30px>
					</span>
				</li>
				<li class="list-sns">
					<a href="https://www.instagram.com/eudia_coffee/">
						<img src="<%=request.getContextPath()%>/resources/img/White.jpg" alt="eudia" width=314px height=314px>
					</a>
					<span>
						<img  class="icon-insta" src="<%=request.getContextPath()%>/resources/img/instaIcon.jpg" alt="instagram" width=30px height=30px>
					</span>
				</li>
			</ul>
		</div>
    </div> 
