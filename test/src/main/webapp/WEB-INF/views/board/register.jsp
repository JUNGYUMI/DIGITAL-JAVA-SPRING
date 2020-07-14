<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<form action="<%=request.getContextPath()%>/board/register" method="POST">
		<div class="form-group">
		  <label>게시글 제목</label>
		  <input type="text" class="form-control" name="title" value="${board.title}">
		</div>
		<div class="form-group">
		  <label>게시글 작성자</label>
		  <input type="text" class="form-control" name="writer" value="${board.writer}">
		</div>
		<div class="form-group">
		  <label>내용</label><br>
			<textarea rows="10" cols="155" name="content"></textarea>
		</div>
			<button type=submit>전송</button>
	</form>