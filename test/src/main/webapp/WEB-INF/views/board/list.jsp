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
							<a href="<%=request.getContextPath()%>/board/detail?num=${board.num}">
								${board.title}
							</a>
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
</div>
</body>
</html>