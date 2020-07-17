<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Insert title here</title>
<meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container">
  <h4>게시글</h4>         
  <table class="table">
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
      <c:if test="${list.size() != 0}">
				<c:forEach var="board" items="${list}">
					<tr>
						<td>${board.num}</td>
						<td>
							<a href="<%=request.getContextPath()%>/board/detail?num=${board.num}&page=${pm.cri.page}&search=${pm.cri.search}&type=${pm.cri.type}">
							${board.title}
						</td>
						<td>${board.writer}</td>
						<td>${board.registerDate}</td>
						<td>${board.views}</td>
					</tr>
				</c:forEach>
			</c:if>
			<c:if test = "${list.size() == 0}">
				<tr>
					<td colspan="5">등록된 게시글이 없습니다.</td>
				</tr>
			</c:if>
    </tbody>
  </table>
  <!-- 페이지네이션 start -->
	<ul class="pagination justify-content-center">
	  	<li class="page-item <c:if test="${!pm.prev}">disabled</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pm.startPage-1}&search=${pm.cri.search}&type=${pm.cri.type}">Previous</a></li>
		<c:forEach var="index" begin="${pm.startPage}" end="${pm.endPage}">
	  		<li class="page-item <c:if test="${pm.cri.page == index}">active</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${index}&search=${pm.cri.search}&type=${pm.cri.type}">${index}</a></li>
	  	</c:forEach>
	  	<li class="page-item <c:if test="${!pm.next}">disabled</c:if>"><a class="page-link" href="<%=request.getContextPath()%>/board/list?page=${pm.endPage+1}&search=${pm.cri.search}&type=${pm.cri.type}">Next</a></li>
	</ul>
	<!-- 페이지네이션 end -->
	<!-- 검색 박스 start -->
	<form action="<%=request.getContextPath()%>/board/list">
	<div class="input-group mb-3">
		<select class="form-control" name="type">
			<option value="0" <c:if test="${pm.cri.type == 0}">selected</c:if>>전체</option>
			<option value="1" <c:if test="${pm.cri.type == 1}">selected</c:if>>작성자</option>
			<option value="2" <c:if test="${pm.cri.type == 2}">selected</c:if>>제목</option>
			<option value="3" <c:if test="${pm.cri.type == 3}">selected</c:if>>내용</option>
		</select>
		<input type="text" class="form-control" placeholder="Search" name="search" value="${pm.cri.search}">
		<div class="input-group-append">
			<button class="btn btn-success" type="submit">검색</button>
		</div>
	</div>
</form>
	<!-- 검색 박스 end -->
</div>
</body>
</html>