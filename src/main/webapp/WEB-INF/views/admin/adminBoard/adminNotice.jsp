<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>

<jsp:include page="/WEB-INF/views/layout/adminHeader.jsp" />

<!-- 게시판>공지사항 게시판 -->
<br><br>
공지사항

<a href="/admin/adminBoard/adminWrite"><button>글쓰기</button></a>


 <jsp:include page="/WEB-INF/views/layout/adminFooter.jsp" />