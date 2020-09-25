<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<form action="<%=request.getContextPath()%>/order_list" method="post">
	<div class="order_list-container">
		<div class="container-content">
			<div class="container-orderlist">
			  <h4 class="h5-list">주문확인 리스트</h4>     
			  <table class="table">
			    <thead>
			      <tr>
			        <th>리스트번호</th>
			        <th>리스트주문번호</th>
			        <th>리스트상품</th>
			        <th>리스트수량</th>
			      </tr>
			    </thead>
			    <tbody>
			      <tr>
			        <td>1</td>
			        <td>DRINK15</td>
			        <td>카페라떼　　<img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="product_img" width="60" height="60"></td>
					<td>
						<a href="#" id="decreaseQuantity"><i class="fas fa-minus"></i></a> 
		          		<span id="numberUpDown">　1　</span>
					    <a href="#" id="increaseQuantity"><i class="fas fa-plus"></i></a></td>
			      </tr>
			      <tr>
			        <td>2</td>
			        <td>DRINK06</td>
			        <td>보라구마　　<img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="product_img" width="60" height="60"></td>
					<td>
						<a href="#" id="decreaseQuantity"><i class="fas fa-minus"></i></a> 
		          		<span id="numberUpDown">　1　</span>
					    <a href="#" id="increaseQuantity"><i class="fas fa-plus"></i></a></td>
			      </tr>
			      <tr>
			        <td>3</td>
			        <td>DRINK08</td>
			        <td>초코나무숲　　<img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="product_img" width="60" height="60"></td>
					<td>
						<a href="#" id="decreaseQuantity"><i class="fas fa-minus"></i></a> 
		          		<span id="numberUpDown">　1　</span>
					    <a href="#" id="increaseQuantity"><i class="fas fa-plus"></i></a></td>
			      </tr>
			      <tr>
			        <td>4</td>
			        <td>DRINK12</td>
			        <td>쉐이크(밀크)　　<img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="product_img" width="60" height="60"></td>
					<td>
						<a href="#" id="decreaseQuantity"><i class="fas fa-minus"></i></a> 
		          		<span id="numberUpDown">　1　</span>
					    <a href="#" id="increaseQuantity"><i class="fas fa-plus"></i></a></td>
			      </tr>
			    </tbody>
			  </table>
			  <div class="btn-order_list">
			  	<div class="box-btn-submit"><button class="btn-order">확인</button></div>
			  </div>
			</div>
		</div>
	</div>
</form>
<script>
	$(function(){
		$('.box-btn-submit').click(function(){
			alert('주문이 접수되었습니다.');
		})

		$('#decreaseQuantity').click(function(e){
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var num = parseInt(stat,10);
			num--;
			if(num<=0){
				alert('1개부터 주문이 가능합니다.');
				num =1;
			}
			$('#numberUpDown').text(num);
		});
		$('#increaseQuantity').click(function(e){
			e.preventDefault();
			var stat = $('#numberUpDown').text();
			var num = parseInt(stat,10);
			num++;

			if(num>5){
				alert('더 이상 추가할 수 없습니다.');
				num=5;
			}
			$('#numberUpDown').text(num);
		});
	});
</script>

