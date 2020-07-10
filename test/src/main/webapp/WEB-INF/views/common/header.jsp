<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<nav class="navbar navbar-expand-md bg-dark navbar-dark">
	<div class="container">
	  	<a class="navbar-brand" href="#">스프링</a>
	  	<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
	    	<span class="navbar-toggler-icon"></span>
	  	</button>
	  	<div class="collapse navbar-collapse" id="collapsibleNavbar">
	    	<ul class="navbar-nav">
		      	<li class="nav-item">
		        	<a class="nav-link" href="<%=request.getContextPath()%>/board/">Link</a>
		      	</li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="<%=request.getContextPath()%>/board/signin">Sign in</a>
		      	</li>
		      	<li class="nav-item">
		        	<a class="nav-link" href="<%=request.getContextPath()%>/board/signup">Sign Up</a>
		      	</li>    
	    	</ul>
		</div> 
	</div> 
</nav>