<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<form action="<%=request.getContextPath()%>/board/register" method="POST" enctype="multipart/form-data">
	
		<div class="form-group">
		  <label>게시글 제목</label>
		  <input type="text" class="form-control" name="title" 	placeholder="제목">
		</div>
		
		<div class="form-group">
		  <label>내용</label><br>
			<textarea rows="10" cols="155" name="content">${board.content}</textarea>
		</div>
		
		<div class="form-group">
	        <label>파일</label>
	        <input class="form-control" type="file"  name="file2">
    	</div>
    	
			<a href="<%=request.getContextPath()%>/board/list"><button class="btn btn-outline-success" type="button">목록</button></a>
			<button type=submit>등록하기</button>
	</form>