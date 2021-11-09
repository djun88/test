<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>  



<c:if test="${puid ne null  }">
<script>
	alert('${message}');
	opener.document.UserP.pid.value="${puid}";
	self.close();
</script>
</c:if>
<c:if test="${puid eq null }">
<script>
	alert('${message}');
	location.href='${loc}';
</script>
</c:if>