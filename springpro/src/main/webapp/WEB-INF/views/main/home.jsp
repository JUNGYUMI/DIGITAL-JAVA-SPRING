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
	  	<button class="btn btn-primary btn-block">로그인</button>
	</form>
</c:if>