<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
 
<div class="container-content">
	<form>
		<div class="form-group"> 
	      <label>게시글 번호</label> 
	      <input type="text" class="form-control"  name="num" value="${community.com_num}" readonly> 
	    </div> 
	 	<div class="form-group"> 
	      <label>게시글 제목</label> 
	      <input type="text" class="form-control"  name="title" value="${community.com_title}" readonly> 
	    </div> 
	    <div class="form-group"> 
	      <label>작성자</label> 
	      <input type="text" class="form-control"  name="writer" value="${community.com_writer}" readonly> 
	    </div> 
	    <div class="form-group"> 
	      <label>작성일</label> 
	      <input type="text" class="form-control"  name="registerDate" value="${community.com_date}" readonly> 
	    </div> 
	    <div class="form-group"> 
	      <label>조회수</label> 
	      <input type="text" class="form-control"  name="views" value="${community.com_views}" readonly> 
	    </div> 
	    <div class="form-group"> 
	      <label>내용</label> 
	      <textarea class="form-control" rows="5" id="comment" name="content" readonly>${community.com_content}</textarea> 
	    </div>
	</form> 
	<a href="<%=request.getContextPath()%>/notice_list"><button type="button" class="btn btn-default">목록</button></a>
	
	<a href="<%=request.getContextPath()%>/register"><button type="button" class="btn btn-default">글쓰기</button></a> 

	<a href="<%=request.getContextPath()%>/modify"><button type="button" class="btn btn-default">수정</button></a> 
 
	<a href="<%=request.getContextPath()%>/delete"><button type="button" class="btn btn-default">삭제</button></a>
</div> 
