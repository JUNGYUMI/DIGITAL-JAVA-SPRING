<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 
<form method="post" action="<%=request.getContextPath()%>/board/modify" enctype="multipart/form-data">
	<div class="form-group">
      <label>게시글 번호</label>
      <input type="text" class="form-control"  name="num" value="${board.num}" readonly>
    </div>
 	<div class="form-group">
      <label>게시글 제목</label>
      <input type="text" class="form-control"  name="title" value="${board.title}">
    </div>
    <div class="form-group">
      <label>작성자</label>
      <input type="text" class="form-control"  name="writer" value="${board.writer}" readonly>
    </div>
    <div class="form-group">
      <label>작성일</label>
      <input type="text" class="form-control"  name="registerDate" value="${board.registerDate}" readonly>
    </div>
    <div class="form-group">
      <label>조회수</label>
      <input type="text" class="form-control"  name="views" value="${board.views}" readonly>
    </div>
    <div class="form-group">
      <label>내용</label>
      <textarea class="form-control" rows="5" id="comment" name="content">${board.content}</textarea>
    </div>
    <button class="btn btn-outline-secondary">수정하기</button>
</form>
<a href="<%=request.getContextPath()%>/board/register"><button class="btn btn-outline-secondary btn-write">글쓰기</button></a>
<a href="<%=request.getContextPath()%>/board/list"><button class="btn btn-outline-secondary">목록</button></a>