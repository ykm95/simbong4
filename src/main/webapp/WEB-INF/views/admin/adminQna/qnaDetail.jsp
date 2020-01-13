<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />
    
<!-- CSS -->
<link rel="stylesheet" href="/resources/css/qna.css">


<style type="text/css">
section {
	width: 100%;
}
</style>

<br><br><br>

<div class="container">
    <div class="page-header">
        <h1>QnA 상세보기</h1><hr>
    </div>
    <div class="row">
    	<div class="col">

<div class="panel panel-success">
  <div class="panel-leftheading">
      <h3 class="panel-lefttitle">Panel title</h3>
  </div>
  <div class="panel-rightbody">
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
      <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla pariatur. Excepteur sint occaecat cupidatat non proident, sunt in culpa qui officia deserunt mollit anim id est laborum.</p>
  </div>
    <div class="clearfix">
    </div>
</div>
    </div>
</div>

<div class="container">
<div class="row">
<div class="col-sm-12">
<h3>User Comment Example</h3>
</div><!-- /col-sm-12 -->
</div><!-- /row -->
<div class="row">
<div class="col-1">
<div class="thumbnail">
<img width="50" height="50" class="img-responsive user-photo" src="https://ssl.gstatic.com/accounts/ui/avatar_2x.png">
</div><!-- /thumbnail -->
</div><!-- /col-sm-1 -->

<div class="col-11">
<div class="panel panel-default">
<div class="panel-heading">
<strong>심봉사</strong><!-- 글 쓸때마다 심봉사뜨게 고정할수는 없나..?현재로서는 일일히 쓰는건가..? --> 
<span class="text-muted">commented 5 days ago</span><hr>
</div>
<div class="panel-body">
고객님 어쩌구 저쩌구... 감사합니다 ♡
</div><!-- /panel-body -->
</div><!-- /panel panel-default -->
</div><!-- /col-sm-5 -->

</div><!-- /container -->

<jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />