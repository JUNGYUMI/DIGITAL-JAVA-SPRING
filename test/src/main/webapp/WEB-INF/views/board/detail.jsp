<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <script src="https://kit.fontawesome.com/20695271aa.js" crossorigin="anonymous"></script>
<c:if test = "${board eq null}">
	<h1>해당 게시물은 없는 게시물입니다.</h1>
</c:if>

<c:if test = "${board ne null}">
	<c:if test="${board.isDel == 'Y'.charAt(0)}">
		<h1>해당 게시물은 삭제되었습니다.</h1>	
	</c:if>
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
		  <input type="text" class="form-control" name="registerDate" value="${board.registerDate}" readonly>
		</div>
		<div class="form-group">
		  <label>조회수</label>
		  <input type="text" class="form-control" name="views" value="${board.views}" readonly>
		</div>
		<div class="form-group">
		  <label>추천</label>
		  <input type="text" class="form-control text-like" name="views" value="${board.up}" readonly>
		</div>
	</form>
		<div>
			${board.content}
		</div>
		<span class="float-right btn-like"><i class="far fa-thumbs-up"></i></span>
		<a href="<%=request.getContextPath()%>/board/list?page=${cri.page}&search=${cri.search}&type=${cri.type}"><button class="btn btn-outline-success">목록</button></a>
			<c:if test="${user != null }">
				<a href="<%=request.getContextPath()%>/board/register"><button class="btn btn-outline-success">등록</button></a>
				<c:if test="${user.id == board.writer}">
					<a href="<%=request.getContextPath()%>/board/modify?num=${board.num}"><button class="btn btn-outline-success">수정</button></a>
					<a href="<%=request.getContextPath()%>/board/delete?num=${board.num}"><button class="btn btn-outline-success">삭제</button></a>
				</c:if>
			</c:if>
</c:if>
<input type="hidden" id="num" value="${board.num}">
<script>
$(function(){
	$('.btn-like').click(function(){
		var num = $('#num').val();
		 $.ajax({
	        async:true,
	        type:'POST',
	        data: num,
	        url:"<%=request.getContextPath()%>/board/up",
	        dataType:"json",
	        contentType:"application/json; charset=UTF-8",
	        success : function(data){
				// 로그인한 회원이면
	        	if(data['isUser']){
		        	// 게시글의 추천수가 0보다 크면 => 추천수를 증가시켜야하면
		        	// == 처음 추천을 누른다면
					if(data['up'] > 0){
						$('.text-like').val(data['up'])
					// 이미 추천을 눌렀다면
					}else{
						alert('이미 추천한 게시글입니다.')
					}
				// 로그인하지 않았으면
	        	}else{
					alert('추천은 로그인을 해야 가능합니다.');
	        	}
	        }
	    });
	})
})
</script>