<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form>
	<div class="form-group">
	  <label>게시글 번호</label>
	  <input type="text" class="form-control" name="num" value="${board.num}" readonly>
	</div>
	<div class="form-group">
	  <label>게시글 제목</label>
	  <input type="text" class="form-control" name="title" value="${board.title}" readonly>
	</div>
	<div class="form-group">
	  <label>작성자</label>
	  <input type="text" class="form-control" name="writer" value="${board.writer}" readonly>
	</div>
	<div class="form-group">
	  <label>작성일</label>
	  <input type="text" class="form-control" name="registerDate" value="${board.regisetrDate}" readonly>
	</div>
	<div class="form-group">
	  <label>조회수</label>
	  <input type="text" class="form-control" name="views" value="${board.views}" readonly>
	</div>
	<button>
		<a href="/board/list">버튼</a>
	</button>
</form>