<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- bootstrap CDN -------------------------------------------------------------------------------->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- /bootstrap CDN ------------------------------------------------------------------------------->

<title>Good Job 구인구직</title>

<style>
.jumbotron {
	background-color: #2667EE;
	margin-top: 1em;
	height: 150px;
}

#logo {
	border: 3px solid white;
	border-radius: 50px;
	height: 75px;
	width: 250px;
	background-color: #F5F5F5;
	color: #2667EE;
	text-align: center;
	position: absolute;
	top: 50px;
}

h1 {
	font-size: 50px; /* 로고 : 글씨 크기 (여기서 줘야지 글씨 크기의 폭 높이가 동일해짐) */
}

.middle {
	border: 1px solid black;
	/* height: 2100px; */
	width: auto;
	position: relative;
	top: -30px;
}

.navbar {
	border: 2px solid #2667EE;
	border-radius: 5px;
}

#navbarDiv1 {
	border: 1px solid white; /*색을 black으로 바꾸면 테두리 범위를 확인 할 수 있다*/
	width: 450px;
	margin-top: 1.5px;
	margin-bottom: 1.5px;
}

#MenuButton {
	margin-right: 5.5px;
	margin-left: 5.5px;
}

#navbarDiv2 {
	border: 1px solid white; /*색을 black으로 바꾸면 테두리 범위를 확인 할 수 있다*/
	width: 450px;
	margin-top: 1.5px;
	margin-bottom: 1.5px;
}

#searchForm { /* 검색칸이 너무 짧아서 길이를 늘리고 테두리를 설정함*/
	width: 340px;
	border: 2px solid #2667EE;
	margin-left: 4px;
	margin-right: 2px;
}

#searchButton {
	background-color: #2667EE;
	color: white;
	font-weight: bold;
	margin-left: 2px;
}

#navbarDiv3 {
	border: 1px solid white; /*색을 black으로 바꾸면 테두리 범위를 확인 할 수 있다*/
	width: 220px;
	margin-top: 1.5px;
	margin-bottom: 1.5px;
}

#logins {
	margin-left: 5px;
	margin-right: 10px;
}

#privateID {
	font-size: 14.5px;
	font-weight: bold;
	height: 58px;
}

#companyID {
	font-size: 14.5px;
	font-weight: bold;
	height: 58px;
}

.aa {
	border: 2px solid #2667EE;
	border-radius: 5px;
	margin-top: 3px;
	height: 300px;
}

.notice {
	border: 2px solid #2667EE;
	margin-top: 0.2em;
	/* height: 800px; */
}

.noticeLeft {
	border: 1px solid red;
	/* margin-top: 0.2em;
        margin-left: 0.1em;
        margin-right: 0.1em;
        margin-bottom: 0.2em; */
	height: 790px;
	width: 551px;
	float: left;
}

.noticeRight {
	border: 1px solid red;
	/* margin-top: 0.2em;
        margin-left: 0.1em;
        margin-right: 0.1em;
        margin-bottom: 0.2em; */
	height: 790px;
	width: 551px;
	float: right;
}


</style>

</head>
<body>
<c:set var="myctx" value="${pageContext.request.contextPath}"/>			
	<div class="container">
		<div class="jumbotron">
			<div id="logo">
				<h1>
					<a href="../index" style='text-decoration: none'> Good Job </a>
				</h1>
			</div>
		</div>
			

			
	<div class="py-5">
    <div class="container">
      <div class="row">
        <div class="col-md-12">
        	<h1 class="text-center">${loginUserC.cname}[${loginUserC.cid}]님의 공고</h1>
        	<%-- ${cartArr} --%> 
        	<button type="button" onclick="location.href='jobForm'">공고 작성</button>
        	<!-- <button>지원자 현황 보기</button> -->
        </div>
      </div>
      
      <div>
        <div class="col-md-12">
      	<!-- 이력서 리스트-------------------------- -->
       <form name="jobList" id="jobList">
          
          <table class="table table-striped">
             <thead>
                <tr class="info text-center">
                   <th>사진</th>
                   <th>이름</th>
                   <th>아이디</th>
                   <th class="col-md-3">수정|삭제|지원자 보기</th>                   
                </tr>
             </thead>
             <tbody>
                <!-- -------------------- -->
                <c:forEach var="jvo" items="${jobList}" varStatus="state">
                
                <tr>
                	
                   <td>
                   <a href="../jobview/${jvo.cidx}" target="_blank"><img src="${pageContext.request.contextPath}/images/${jvo.cimage}"
                    class="img-thumbnail" style="width:140px"></a>
                   </td>
                   
                   <td>
                   ${jvo.cname}
                   </td>
                   
                   <td>
                   ${jvo.cid}
                   </td>
                   
                   <td>
                  
                   <button type="button" onclick="jobEdit('${jvo.cidx}')">수정</button>
                   <button type="button" onclick="jobDel('${jvo.cidx}')">삭제</button>
                   <button type="button" onclick="aply('${jvo.cidx}')">지원자 보기</button>
                   
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
  	<form name="jf" method="post">
  		<input type="hidden" name="cidx" id="cidx">
  	</form>
  <!-- -------------------------------------- -->	

  <script>
  	function jobEdit(num){
  		$('#cidx').val(num);
  		jf.action="jobEditForm";
  		jf.submit();
  	}
  
  	function jobDel(num){
  		var yn=confirm(num+"번 공고를 삭제할까요?");
  		if(yn){
  			$('#cidx').val(num);
  			jf.action="jobDel";
  			jf.submit();
  		}
  	}
  	function aply(num){
  		$('#cidx').val(num);
  		jf.action="../apply/applyList";
  		jf.submit();
  	}
  </script>
			
			<hr color="black">
        <div class="text-center" style="margin-bottom:0">
			<p>GoodJob @Copyright  연락처:02-1111-3333</p>
			<a href="#">GoodJob Project 소개</a>
		</div>

	
	</div>
</body>