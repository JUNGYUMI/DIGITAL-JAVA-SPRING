<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<form method="POST" action="<%=request.getContextPath()%>/board/register">
 	<div class="form-group">
      <label>게시글 제목</label>
      <input type="text" class="form-control"  name="title" value="${board.title}">
    </div>
    
    <div class="form-group">
      <label>작성자</label>
      <input type="text" class="form-control"  name="writer" value="${user.id}" readonly>
    </div>
    
    <div class="form-group">
      <label>내용</label>
      <textarea class="form-control" rows="5" id="comment" name="content">${board.content}</textarea>
    </div>
	<button type="submit" class="btn btn-outline-secondary">등록</button>
</form>
<a href="<%=request.getContextPath()%>/board/list"><button class="btn btn-outline-secondary">목록</button></a>
