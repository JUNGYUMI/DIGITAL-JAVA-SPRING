<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
    <div class="container-content">
	<h2>고객문의</h2>
		<table class="table table-bordered">
			<thead>
				<tr>
				<th>번호</th>
				<th>제목</th>
				<th>작성자</th>
				<th>작성일</th>
				<th>조회수</th>
				</tr>
			</thead>
			<tbody>
				<tr>
				<td>1</td>
				<td>제목1</td>
				<td>작성자1</td>
				<td>작성일1</td>
				<td>조회수1</td>
				</tr> 
			</tbody>
		</table>
				<ul class="pagination justify-content-center">
				    <li class="page-item">
					  	<a class="page-link" href="#">
	                          <i class="fas fa-angle-double-left"></i>
	                    </a>
	                </li>		  	
					<li class="page-item"><a class="page-link" href="#"><i class="fas fa-chevron-left"></i></a></li>
					<li class="page-item"><a class="page-link" href="#">현재페이지</a></li>
					<li class="page-item"><a class="page-link" href="#"><i class="fas fa-chevron-right"></i></a></li>
					<li class="page-item"><a class="page-link" href="#"><i class="fas fa-angle-double-right"></i></a></li>
				</ul>
				<form>
					<div class="input-group mb-3">
						<select class="form-control" id="sel1" name="type">
							<option value="0">전체</option>
							<option value="1">작성자</option>
							<option value="2">제목</option>
							<option value="3">내용</option>
						  </select>
						  <input type="text" class="form-control" id="search" placeholder="Search" name="search">
						<div class="input-group-append">
						  <button class="btn btn-success" type="submit">Go</button>
						</div>
					</div>
				</form>
			</div>