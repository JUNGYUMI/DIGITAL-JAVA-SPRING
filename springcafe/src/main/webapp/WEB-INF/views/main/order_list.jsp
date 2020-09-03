<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<form action="<%=request.getContextPaht()%>/order_list" method="post">  
	<div class="container-orderlist">
	  <h5 class="h5-list">주문확인 리스트</h5>     
	  <table class="table-list">
	    <thead>
	      <tr>
	        <th class="th-list">리스트번호</th>
	        <th class="th-list">리스트주문번호</th>
	        <th class="th-list">리스트상품</th>
	        <th class="th-list">리스트수량</th>
	      </tr>
	    </thead>
	    <tbody>
	      <tr>
	        <td>리스트번호0</td>
	        <td>리스트주문번호0</td>
	        <td>리스트상품0 <img src="<%=request.getContextPath()%>/resources/img/background.jpg" alt="product_img" width="60" heigh="60"></td>
			<td>
				<a href="#"><i class="fas fa-minus"></i></a> 
				리스트수량0 
				<a href="#"><i class="fas fa-plus"></i></a></td>
	      </tr>
	    </tbody>
	  </table>
	</div>
</form>

