<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>

<html lang="en">

<head>

<meta charset="UTF-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1.0">

<!-- bootstrap CDN -------------------------------------------------------------------------------->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
<!-- /bootstrap CDN ------------------------------------------------------------------------------->

<title> Good Job 구인구직 </title>

<style>

.jumbotron{
    background-color: #2667EE; 
    margin-top: 1em;   
    height:150px;
}
#logo{
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
h1{
    font-size: 50px;         /* 로고 : 글씨 크기 (여기서 줘야지 글씨 크기의 폭 높이가 동일해짐) */
}




.middle{                      
        border: 1px solid black;  
        /* height: 2100px; */
        width: auto;                
        position: relative;          
        top: -30px;                   
    }
    .navbar{
        border: 2px solid #2667EE;   
        border-radius: 5px;
    }


    #navbarDiv1{
        border: 1px solid white;  /*색을 black으로 바꾸면 테두리 범위를 확인 할 수 있다*/
        width: 450px;
        margin-top: 1.5px;
        margin-bottom: 1.5px;
    }
    #MenuButton{
        margin-right: 5.5px;
        margin-left: 5.5px;
    }



    #navbarDiv2{
        border: 1px solid white;  /*색을 black으로 바꾸면 테두리 범위를 확인 할 수 있다*/
        width: 450px;
        margin-top: 1.5px;
        margin-bottom: 1.5px;
    }
    #searchForm{                 /* 검색칸이 너무 짧아서 길이를 늘리고 테두리를 설정함*/
        width: 340px;
        border: 2px solid #2667EE;
        margin-left: 4px;
        margin-right: 2px;
    }
    #searchButton{
        background-color: #2667EE;
        color: white; 
        font-weight: bold;
        margin-left: 2px;
    }



    #navbarDiv3{
        border: 1px solid white;  /*색을 black으로 바꾸면 테두리 범위를 확인 할 수 있다*/
        width: 220px;
        margin-top: 1.5px;
        margin-bottom: 1.5px;
    }
    #logins{
        margin-left: 5px;
        margin-right: 10px;
    }
    #privateID{
        font-size: 14.5px;
        font-weight: bold;
        height: 58px;
    }
    #companyID{
        font-size: 14.5px;
        font-weight: bold;
        height: 58px;
    }







    .aa{
        border: 2px solid #2667EE;   
        border-radius: 5px;
        margin-top: 3px;
        height: 300px;
    }
    







    .notice{
        border: 2px solid #2667EE; 
        margin-top: 0.2em;
        /* height: 800px; */
    }
    .noticeLeft{
        border: 1px solid red; 
        /* margin-top: 0.2em;
        margin-left: 0.1em;
        margin-right: 0.1em;
        margin-bottom: 0.2em; */
        height: 790px;
        width: 551px;
        float: left;
    }

    .noticeRight{
        border: 1px solid red; 
        /* margin-top: 0.2em;
        margin-left: 0.1em;
        margin-right: 0.1em;
        margin-bottom: 0.2em; */
        height: 790px;
        width: 551px;
        float: right;
    }

    td{
        border: 1px solid black;
        width: 540px;
        height: 262.2px;
    }
  	
</style>
  
</head>



<body>

<div class="container"> 
    <div class="jumbotron">
        <div id="logo">
        <h1>   <a href="index" style='text-decoration:none'> Good Job </a>   </h1> 
        </div> 
    </div> 
</div>




<div class="container">

<div class="middle"> 

<nav class="navbar  navbar-expand-lg  navbar-light  bg-light">

    <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
    <div id="navbarDiv1">
    <div class="form-inline">

            
        <div class="dropdown">
            <button class="btn btn-primary  dropdown-toggle" type="button" id="MenuButton" name="findType" value="1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 직업별 </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    			<a class="dropdown-item" name="findKeyword" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=IT">IT</a>
    			<a class="dropdown-item" name="findKeyword" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=기획">기획</a>
    			<a class="dropdown-item" name="findKeyword" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=마케팅">마케팅</a>
    			<a class="dropdown-item" name="findKeyword" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=영업">영업</a>
    			<a class="dropdown-item" name="findKeyword" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=회계">회계</a>
  			</div>
            <!-- 메뉴 넣는곳-->
        </div>
        

        <div class="dropdown">
            <button class="btn btn-primary  dropdown-toggle" type="button" id="MenuButton" name="findType" value="2" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 산업별 </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=서비스업">서비스업</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=제조업">제조업</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=건설업">건설업</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=IT">IT</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=금융업">금융업</a>
  			</div>
            <!-- 메뉴 넣는곳-->
        </div>


        <div class="dropdown">
            <button class="btn btn-primary  dropdown-toggle" type="button" id="MenuButton" name="findType" value="3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 지역별 </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=서울특별시">서울특별시</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=인천광역시">인천광역시</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=부산광역시">부산광역시</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=대전광역시">대전광역시</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=대구광역시">대구광역시</a>
    			<a class="dropdown-item" href="${pageContext.request.contextPath}/jobSearch?jobKeyword=광주광역시">광주광역시</a>
  			</div>
            <!-- 메뉴 넣는곳-->
        </div>
            
        
        <div class="dropdown">
            <button class="btn btn-primary  dropdown-toggle" type="button" id="MenuButton" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 관리자 </button>
            <!-- 메뉴 넣는곳-->
        </div>  
    
    </div> 
    </div> 
    <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

       


    <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
    <form name="js" action="jobSearch">
    <div id= "navbarDiv2">
    <div class= "form-inline">

        <input class="form-control" name="jobKeyword" id="jobKeyword" type="text" placeholder="검색어를 입력하세요">

        <button class="btn btn-outline-primary"> 검색 </button>

    </div> 
    </div>
    </form> 
    <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->

        



    <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
    <div id="navbarDiv3">
    
    	<c:set var="myctx" value="${pageContext.request.contextPath}"/>
    
    <div class="form-inline"> <!-- inline 빼면 됨-->
        
        <div id="logins">
            
            
            
            <c:if test="${loginUserP eq null and loginUserC eq null}">        
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target= "#privateLogin"  id= "privateID"> 개인회원<p>로그인 </button>
			</c:if>
			
			<c:if test="${loginUserP ne null }">
			<b> ${loginUserP.pid}</b>님 로그인 중<br>
			<a href="${myctx}/logout"><button>로그아웃</button></a>
			<a href="${myctx}/resume/resumePage"><button>내 이력서</button></a>
			<a href="${myctx}/resume/resumePage"><button>마이페이지</button></a>
			<a href="${myctx}/user/userPEditForm"><button>유저정보수정</button></a>
			</c:if>
			
            <!-- The Modal -->
            <div class="modal fade" id="privateLogin">
                <div class="modal-dialog  modal-dialog-centered">    
                    <div class="modal-content">
                        

                            <!-- Modal Header -->
                            <div class="modal-header">
							
                                <h4 class="modal-title"> 개인회원 로그인 </h4>
                                <button type="button" class="close" data-dismiss="modal"> &times; </button>

                            </div>
                            

                            <!-- Modal body -->
                            <div class="modal-body">
							<form action="${pageContext.request.contextPath}/userPLogin" method="post">
                                <div class="form-group">
                                    <label for="Email1"> 아이디 :  </label>
                                    <input type="text" class="form-control" value="${cookie.uid.value}" name="pid" id="pid" placeholder="User ID">
                                </div> <br>

                                <div class="form-group">
                                    <label for="Password"> 비밀번호 :  </label>
                                    
                                    <input type="password" class="form-control" name="ppw" id="ppw" placeholder="Password">
                                </div> <br>
                                
                                <!-- Modal footer -->
                            	<div class="modal-footer">

                                	<button type="submit" class="btn btn-primary"> 로그인 </button>
                                	<button type="button"  onclick="location.href='./user/joinP'" class="btn btn-primary"> 회원가입 </button>

                            	</div>
							</form>
                            </div>
                            
                    </div> <!-- model content -->
                </div> <!-- model dialog -->
            </div> <!-- model fade -->
        </div> <!-- logins (private) -->
            
        <div id="logins">

            <c:if test="${loginUserC eq null and loginUserP eq null }">        
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#companyLogin" id= "companyID"> 기업회원<p>로그인 </button>
			</c:if>
			
			<c:if test="${loginUserC ne null }">
			<b> ${loginUserC.cid}</b>님 로그인 중<br>
			<a href="${myctx}/logout"><button>로그아웃</button></a>
			<a href="${myctx}/job/jobPage"><button>공고관리</button></a>
			<a href="${myctx}/job/jobPage"><button>마이페이지</button></a>
			<a href="${myctx}/user/userCEditForm"><button>유저정보수정</button></a>
			</c:if>
			
            <!-- The Modal -->
            <div class="modal fade" id="companyLogin">
                <div class="modal-dialog  modal-dialog-centered">    
                    <div class="modal-content">
                        
                            <!-- Modal Header -->
                            <div class="modal-header">

                                <h4 class="modal-title"> 기업회원 로그인 </h4>
                                <button type="button" class="close" data-dismiss="modal"> &times; </button>

                            </div>
                            

                            <!-- Modal body -->
                            <div class="modal-body">
							<form action="${pageContext.request.contextPath}/userCLogin" method="post">
                                <div class="form-group">
                                    <label for="Email1"> 아이디 :  </label>
                                    <input type="text" class="form-control" name="cid" id="cid" placeholder="User ID">
                                </div> <br>

                                <div class="form-group">
                                    <label for="Password"> 비밀번호 :  </label>
                                    <input type="password" class="form-control" name="cpw" id="cpw" placeholder="Password">
                                </div> <br>
							
                            </div>      
	                            <!-- Modal footer -->
	                            <div class="modal-footer">
	                                <button type="submit" class="btn btn-primary"> 로그인 </button>
	                                <button type="button"  onclick="location.href='./user/joinC'" class="btn btn-primary"> 회원가입 </button>
	                            </div>
	                            </form>
                    </div> <!-- model content -->
                </div> <!-- model dialog -->
            </div> <!-- model fade -->

        </div> <!-- logins (company)-->
        
    </div> <!-- /form-inline -->
    </div> <!-- /navbar3 -->
    <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->     
    </nav>


    <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
    <div class= "aa">
    <div id="demo" class="carousel slide" data-ride="carousel">

        <!-- Indicators -->
        <ul class="carousel-indicators">
            <li data-target="#demo" data-slide-to="0" class="active"></li>
            <li data-target="#demo" data-slide-to="1"></li>
            <li data-target="#demo" data-slide-to="2"></li>
            <li data-target="#demo" data-slide-to="3"></li>
        </ul>
        
        <!-- The slideshow -->
        <div class="carousel-inner">

            <div class="carousel-item active">
                <img src="job_images/job11.png" alt="" class="img-responsive">
            </div>

            <div class="carousel-item">
                <img src="job_images/job12.png" alt="" class="img-responsive">
            </div>

            <div class="carousel-item">
                <img src="resume_images/icon3.png" alt="" class="img-responsive">
            </div>

            <div class="carousel-item">
             <img src="resume_images/icon3.png" alt="" class="img-responsive">
            </div>

        </div>
        
        <!-- Left and right controls -->
        <a class="carousel-control-prev" href="#demo" data-slide="prev"> </a>
        <a class="carousel-control-next" href="#demo" data-slide="next"> </a>

    </div>
    </div>
   <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->






   <!----------------------------------------------------------------------------------------------------------------------------------------------------------------------------->
   <div class="notice">       
   <div class= "form-inline">
        
        <div class="noticeLeft">
        <table class= "tableLeft" id= "fixed">
           <c:forEach var="joba" items="${jobarr}">
            <tr>
				
                <td>	
                		<a href="./jobview/${joba.cidx}" target="_blank">
                        <img src="${pageContext.request.contextPath}/images/${joba.cimage}" alt= "" class="img-fluid">
                        </a>     
                </td>
        
             
		</c:forEach>
        </table>
        </div>  <!-- noticeLeft-->
      

    </div>  <!-- formInline-->
    </div>  <!-- notice-->



    </div> <!-- middle -->
    </div> <!-- container -->
        


</body>

</html>