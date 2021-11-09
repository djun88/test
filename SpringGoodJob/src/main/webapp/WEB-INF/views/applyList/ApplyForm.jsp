<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<!-- bootstrap CDN -------------------------------------------------------------------------------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- /bootstrap CDN ------------------------------------------------------------------------------->

	<div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
        	<h1 class="text-center">${loginUserP.pname}[${loginUserP.pid}]님의 이력서</h1>
        	<%-- ${cartArr} --%> 
        	<button type="button" onclick="location.href='../resume/resumeForm'">이력서 작성</button>
        </div>
      </div>
      
      <div class="row">
        <div class="col-md-12">
      	<!-- 이력서 리스트-------------------------- -->
       <form name="resumeList" id="resumeList">
          
          <table class="table table-striped">
             <thead>
                <tr class="info text-center">
                   <th>이력서 제목</th>
                   <th>선택</th>                   
                </tr>
             </thead>
             <tbody>
                <!-- -------------------- -->
                <c:forEach var="rvo" items="${resumeList}" varStatus="state">
                
                <tr>
                   <td>
                   <a href="resume/resumeview/${rvo.idx}" target="_blank"><img src="${pageContext.request.contextPath}/images/${rvo.pimage}"
                    class="img-thumbnail" style="width:140px"></a>
                    ${rvo.pimage}
                   </td>
               
                   <td>
                   <button type="button" onclick="resumeEdit('${rvo.idx}')">선택</button>
                   </td>

                </tr>
                </c:forEach>
                <!-- -------------------- -->
             </tbody>
             
          </table>
       </form>
       <!-- ----------------------------------- -->
      	</div>
      </div>
     
      
    </div>
  </div>
  
  <!-- 삭제 또는 수정 form---------------------- -->
  	<form name="rf" method="post">
  		<input type="hidden" name="idx" id="idx">
  		<input type="hidden" name="cidx" id="cidx" value="${cidx}">
  	</form>
  	
  <!-- -------------------------------------- -->	

  <script>
  	function resumeEdit(num){
  		var yn=confirm("지원 하시겠습니까?")
  		if(yn){
  			alert(num)
  		$('#idx').val(num);
  		$('#cidx').val();
  		alert($('#cidx'));
  		rf.action="insertApplyAction";
  		rf.submit();
  		}
  	}
  
  	function resumeDel(num){
  		var yn=confirm(num+"번 이력서를 삭제할까요?");
  		if(yn){
  			$('#idx').val(num);
  			rf.action="resumeDel";
  			rf.submit();
  		}
  	}
  </script>
  
  
  
