<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<c:if test="${user == null}">
<h1 class="nav-login">
	로그인
</h1>
	<form action="<%=request.getContextPath()%>/" method="post">
	  <div class="form-group">
	    <label>ID:</label>
	    <input type="text" class="form-control" placeholder="아이디를 입력하세요" name="id">
	  </div>
	  <div class="form-group">
	    <label>Password:</label>
	    <input type="password" class="form-control" placeholder="비밀번호를 입력하세요" name="pw">
	  </div>
	  	<button class="home-login">로그인</button>
	</form>
	<input type="hidden" value="${isLogin }" id="isLogin">
	<input type="hidden" value="${id}" id="id">
</c:if>

	<script type="text/javascript">
		$(function(){
			var id = $('#id').val();
			var isLogin = $('#isLogin').val()
			if(isLogin == 'false' && id != '')
				alert(id +'가 없거나 비밀번호가 잘못 되었습니다.')
			})
	</script>


