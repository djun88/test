<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isErrorPage="true"%>
<%
	response.setStatus(200); // 로그인 에러났을때 익스플로러에서 화면 오류 창 안뜨게 #0909
%>


<!-- #0908 -->
<script>
	alert('${pageContext.exception.message}');
	location.href='${pageContext.request.contextPath}/index';

</script>