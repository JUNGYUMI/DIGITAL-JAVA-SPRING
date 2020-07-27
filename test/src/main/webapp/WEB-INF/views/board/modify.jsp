<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
	<form action="<%=request.getContextPath()%>/board/modify" method="POST" enctype="multipart/form-data">
		<div class="form-group">
		  <label>게시글 번호</label>
		  <input type="text" class="form-control" name="num" value="${board.num}" readonly>
		</div>
		<div class="form-group">
		  <label>게시글 제목</label>
		  <input type="text" class="form-control" name="title" value="${board.title}">
		</div>
		<div class="form-group">
		  <label>작성자</label>
		  <input type="text" class="form-control" name="writer" value="${board.writer}" readonly>
		</div>
		<div class="form-group">
		  <label>작성일</label>
		  <input type="text" class="form-control" name="registerDate" value="${board.registerDate}" readonly>
		</div>
		<div class="form-group">
		  <label>조회수</label>
		  <input type="text" class="form-control" name="views" value="${board.views}" readonly>
		</div>
		<div class="form-group">
		  <label>내용</label><br>
			<textarea rows="10" cols="155" name="content">${board.content}</textarea>
		</div>
		
		<c:if test="${board.file != null}">
			<div class="board-file detail form-group">
				<span class="fine-name">${board.oriFile}</span>
				<span class="btn-file-del"><i class="fas fa-times"></i></sapn>
				<input type="hidden" name="file" value="${board.file}">
			</div>
		</c:if>
		<div class="board-add-file detail form-group">
				<input type="file" name="file2">
		</div>
		<a href="<%= request.getContextPath()%>/board/list"><button type="button">목록</button></a>
		<a href="<%= request.getContextPath()%>/board/register"><button type="button">등록</button></a>
		<button>수정하기</button>	
	</form>
	<script>
	$(function(){
		$('.btn-file-del').click(function(){
			$('.board-file').empty();
		})
		$('input[name=file2]').change(function(){				
		if($('input[name=file]').val() == '' || 
		  $('input[name=file]').val() == null ||
		typeof($('input[name=file]').val()) == 'undefined') 
		return;
		$(this).
		alert('첨부파일은 하나만 추가해야합니다. 기존 첨부파일을 삭제하세요')
		})
	})
	</script>