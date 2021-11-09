<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

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




    .ResumePanel1{
        border: 2px solid #2667EE;
        border-radius: 5px;
        height: auto;
        margin-top: 0.2em;
 
    }
    .ResumePanel{
        border: 1px solid blue;
        height: auto;
        width:auto;
        margin: 0.2em;
    }


    
    .row1{
        /* border: 2px solid black; */
        height: auto;
        width: auto;
        margin: 0.2em;
    }
    .rowLeft{
        border: 1px solid black;
        height: 426px;
        width: 537px;
        margin: 0.2em;
        float: left;
        background-color: whitesmoke;
    }
    #photo{
        /* border: 1px solid red; */
        width: 405px;
        margin: 0 auto;
        margin-top: 14px;
    }



    .rowRight{
        border: 1px solid black;
        height: 426px;
        width: 537px;
        margin: 0.2em;
        float: right;
        background-color: whitesmoke;
    }
    #info{
        /* border: 1px solid red; */
        width: 405px;
        margin: 0 auto;
        margin-top: 14px;
    }









    .row2{
        /* border: 2px solid black; */
        height: auto;
        width:auto;
        margin: 0.2em;
        /* background-color: whitesmoke; */
    }

    .rowLeft2{
        border: 1px solid black;
        height: 246px;
        width: 537px;
        margin: 0.2em;
        float: left;
        background-color: whitesmoke;
    }

    .rowRight2{
        border: 1px solid black;
        height: 246px;
        width: 537px;
        margin: 0.2em;
        float: left;
        background-color: whitesmoke;
    }
    #experience{
        /* border: 1px solid red; */
        width: 305px;
        margin: 0 auto;
        margin-top: 14px;
    }

    #Div{
        margin-bottom: 20px;
    }







    
    .row3{
        /* border: 2px solid black; */
        height: 440px;
        width:auto;
        margin: 0.2em;
        background-color: whitesmoke;
    }
    #career{
        /* border: 1px solid red; */
        width: 420px;
        height: auto;
        margin: 0 auto;
        margin-top: 18px;  
    }


    .row4{
        border: 1px solid black;
        height: 300px;
        width:auto;
        margin: 0.2em;
        margin-left: 0.4em;
        margin-right: 0.8em;
        background-color: whitesmoke;
    }
    #intro{
        /* border: 1px solid  red; */
        width: auto;
        height: 292px;
        margin: 0.2em;
    }
    #introduction{
        height: 190px;
        width: 98%;
        margin-top:10px;
        margin-left:auto;
        margin-right:auto;
        margin-bottom: 10px;
        
    }






    .row5{
        /* border: 1px solid black; */
        height: 60px;
        width: auto;
        margin: 0.2em;
        /* background-color: whitesmoke; */
    }
  
    .button{
        /* border: 1px solid red; */
        height: auto;
        width: 250px;
        margin: 0.2em auto;
    }
    #saveButton{
        margin-right: 1.2em;
    }
    




   


    
    .footer{
        border: 2px solid #2667EE;
        height: 150px;
        margin: 0.1em;
        border-radius: 5px;
    }
	
</style>
  


<title> Good Job 구인구직 </title>
  
</head>

<body>

<div class="container"> 
    <div class="jumbotron">
        <div id="logo">
        <h1>   <a href="../../index" style='text-decoration:none'> Good Job </a>   </h1> 
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
            
            
            <div class="dropdown">
            <c:if test="${loginUserP eq null and loginUserC eq null}">        
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target= "#privateLogin"  id= "privateID"> 개인회원<p>로그인 </button>
			</c:if>
			
			<c:if test="${loginUserP ne null }">
			<b> ${loginUserP.pid}</b> 님 환영합니다<br>
			<div class="form-inline">
			
            <button class="btn btn-outline-primary  dropdown-toggle" type="button" id="MenuButton" name="findType" value="3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 마이페이지 </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="${myctx}/user/userPEditForm">유저정보수정</a>
				<a class="dropdown-item" href="${myctx}/resume/resumePage">내 이력서</a>
				<a class="dropdown-item" href="${myctx}/liked/likedList">찜한목록</a>
				
  			</div>
  			<a href="${myctx}/logout"><button class="btn btn-outline-danger">로그아웃</button></a>
  			</div>
            <!-- 메뉴 넣는곳-->
            </c:if>
        </div>
			
			
			
			
			
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

			<div class="dropdown">
            <c:if test="${loginUserC eq null and loginUserP eq null }">        
            <button type="button" class="btn btn-primary" data-toggle="modal" data-target="#companyLogin" id= "companyID"> 기업회원<p>로그인 </button>
			</c:if>
			
			<c:if test="${loginUserC ne null }">
			<b> ${loginUserC.cid}</b> 님 환영합니다<br>
			<div class="form-inline">
			
            <button class="btn btn-outline-primary  dropdown-toggle" type="button" id="MenuButton" name="findType" value="3" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false"> 마이페이지 </button>
            <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
				<a class="dropdown-item" href="${myctx}/job/jobPage">공고관리</a>
				<a class="dropdown-item" href="${myctx}/user/userCEditForm">유저정보수정</a>
				
  			</div>
  			<a href="${myctx}/logout"><button class="btn btn-outline-danger">로그아웃</button></a>
  			</div>
            <!-- 메뉴 넣는곳-->
            </c:if>
        </div>
			
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



<form name="jobP" id="jobP" action="jobEdit" method="post"
			enctype="multipart/form-data">
  
    <div class="ResumePanel">
      
        
     
            
            <div class="row1">
                <div class="form-inline">
                      





                    <div class="rowLeft">
                    <div id="photo">

                        <table>
                            <tr>
                                <td>
                                	<label>기업로고</label>
                                	<img src="${pageContext.request.contextPath}/images/${job.cimage}">
									<input type="file" name="cimagename">
                                    
                                </td>
                            </tr>

                            <tr>
                                <td>
                                    
                                </td>
                            </tr>

                        </table>

                    </div> <!-- photo-->
                    </div> <!-- rowLeft -->
                   

    
                   

                    <div class="rowRight">
                    <div id="info">

                            <table>
								
								<tr>
                                    <td>
                                        <label for="cjobt" style="width:88px;"> <b> 공고제목 : </b> </label>
                                        <input type="text" id="cjobt"  name="cjobt" class="form-control" style="height: 32px; width: 300px; margin-bottom:0.5em;" value="${job.cjobt}"/>
                                    </td>
                                </tr>
								
                                <tr>
                                    <td>
                                        <label for="cname" style="width:58px;"> <b> 기업명 : </b> </label>
                                        <input type="text" id="cname"  name="cname" class="form-control" style="height: 32px; width: 300px; margin-bottom:0.5em;" value="${job.cname}"/>
                                    </td>
                                </tr>
                                

                                <tr>
                                    <td>
                                        <label for="cdname" style="width:58px;"> <b> 담당자 : </b> </label>
                                        <input type="text" id="cdname" name="cdname" class="form-control" style="height: 32px; width: 300px; margin-bottom:0.5em;" value="${job.cdname}"/>
                                    </td>
                                </tr>


                                <tr>
                                    <td>
                                        <label for="chp1" style="width:64px;"> <b> 연락처 : </b> </label>

                                        <div class="form-inline" style="margin-bottom:0.5em;">
                                            <input type="text" id="chp1" name="chp1" class="form-control"style="height: 32px; width: 90px" value="${job.chp1}"/>
                                            <span class=mx-1> <b> - </b> </span>
                                            <input type="text" id="chp2" name="chp2" class="form-control"style="height: 32px; width: 90px" value="${job.chp2}"/>
                                            <span class=mx-1> <b> - </b> </span>
                                            <input type="text" id="chp2" name="chp3" class="form-control"style="height: 32px; width: 90px;" value="${job.chp3}"/>
                                        </div>
                                    </td>
                                </tr>



                                <tr>
                                    <td>
                                        <label for="ccategory" style="width:74px;"> <b> 기업규모 : </b> </label>


                                        <select class="select form-control" id="ccategory" name="ccategory" style="height: 36px; width: 300px;  margin-bottom:0.5em; value="${job.ccategory}"">
                                            <!-- select 주고 뒤에 form control 붙히기 : 강사님 해결책-->
                                            <option selected> 선택하세요 </option>
                                            <option value="소기업"> 소기업 </option>
                                            <option value="중소기업"> 중소기업 </option> 
                                            <option value="중기업"> 중기업 </option>
                                            <option value="대기업"> 대기업 </option>
                                          </select>
                                    </td>
                                </tr>



                                <tr>
                                    <td>
                                        <label for="caddr" style="width:48px;"> <b> 주소 : </b> </label>
                                        <input type="text" id="caddr" name="caddr" class="form-control" style="height: 32px; width: 400px; margin-bottom:0.2em; value="${job.caddr}""/>
                                        
                                    </td>
                                </tr>

       

                            </table>

                    </div> <!-- info-->
                    </div> <!-- rowRight-->
                      
                    



                </div> <!-- form-inline -->
            </div> <!-- row1-->
            

        
            <div class="row2">
                <div class= "form-inline">


                    <div class="rowLeft2">
                    <div id="experience">

                        <table>
                            <tr>
                                <td>
                                    <label for="cc" style="width:48px;"> <b> 학력 : </b> </label>

                                    <select class="select form-control" id="cc" name="cc" style= "width: 300px; margin-bottom:0.2em" value="${job.cc}">                           
                                        <option selected> 선택하세요 </option>
                                        <option value="고등학교 졸업"> 고등학교 졸업 </option>
                                        <option value="전문대학 졸업"> 전문대학 졸업 </option>
                                        <option value="대학 졸업"> 대학 졸업 </option>
                                    </select>    
                                </td>
                            </tr>



                            <tr>
                                <td>
                                    <label for="ce" style="width:78px;"> <b> 경력유무 : </b> </label>

                                    <select class="select form-control" id="ce" name="ce" style= "width: 300px; margin-bottom:0.2em" value="${job.ce}">                           
                                        <option selected> 선택하세요 </option>
                                        <option value="신입"> 신입 </option>
                                        <option value="경력"> 경력 </option>
                                    </select>    
                                </td>
                            </tr>



                            <tr>
                                <td>
                                    <label for="cpr" style="width:78px;"> <b> 우대사항 : </b> </label>

                                    <select class="select form-control" id="cpr" name="cpr" style= "width: 300px; margin-bottom:0.2em" value="${job.cpr}">                           
                                        <option selected> 선택하세요 </option>
                                        <option value="관련자격증"> 관련자격증 소지자 </option>
                                        <option value="운전면허"> 운전면허 </option>

                                    </select>    
                                </td>
                            </tr>

                        </table>

                    </div> <!--experince-->
                    </div> <!-- rowLeft-->


                    <div class="rowRight2">
                        <div id="experience">

                            <table>
                                <tr>
                                    <td>
                                        <label for="ctype" style="width:74px;"> <b> 근무형태 : </b> </label>
    
                                        <select class="select form-control" id="ctype" name="ctype" style= "width: 300px; margin-bottom:0.2em" value="${job.ctype}">                           
                                            <option selected> 선택하세요 </option>
                                            <option value="인턴"> 인턴 </option>
                                            <option value="정규직"> 정규직 </option>
                                        </select>    
                                    </td>
                                </tr>
    
    
    
                                <tr>
                                    <td>
                                        <label for="cpay" style="width:48px;"> <b> 급여 : </b> </label>
    
                                        <input type="text" id="cpay" name="cpay" class="form-control" style="height: 32px; width: 300px; margin-bottom:0.5em;" value="${job.cpay}"/>
                                    </td>
                                </tr>
    
    
    
                                <tr>
                                    <td>
                                        <label for="cposition" style="width:48px;"> <b> 직책 : </b> </label>
    
                                        <select class="select form-control" id="cposition" name="cposition" style= "width: 300px; margin-bottom:0.2em" value="${job.cposition}">                           
                                            <option selected> 선택하세요 </option>
                                            <option value="서원"> 사원 </option>
                                            <option value="대리"> 대리 </option>
                                            <option value="과장"> 과장 </option>
                                            <option value="차장"> 차장 </option>
                                            <option value="부장"> 부장 </option>
                                        </select>   
                                    </td>
                                </tr>
    
                            </table>
    
                        </div> <!--experince-->
                    </div>



                </div> <!-- form-inline -->
            </div> <!-- row2-->




            <div class="row4">
            <div id="intro">
                   
                <br>
                <label for="cmsg"> <b style="margin-top:100px; margin-left:20px;"> 기업소개 : </b> </label>
                <textarea class="form-control" id="cmsg" name="cmsg" style="height:200px">${job.cmsg} </textarea>

                <br>

               
                
            </div>
            </div> <!-- row4-->



            <div class="row5">
                <div class="button">
                <div class="form-inline">

                    <div id="saveButton">
                        <button class="btn btn-primary btn-lg" type="submit"> 수정하기 </button>
                    </div>
                    

                    <!-- <div id="rewriteButton">
                        <button class="btn btn-primary btn-lg" type="submit"> 다시쓰기 </button>
                    </div> -->

                </div>
                </div> <!-- button -->
             </div> <!-- row5 -->

		

                
         
        </div>  <!-- ResumePanel -->
  		<input type="hidden" value="${loginUserC.cid}" id="cid" name="cid" >
  		<input type="hidden" value="${job.cidx}" id="cidx" name="cidx" >
		</form>


        <div class= "footer">
            마지막 
        </div>

    </div> <!-- middle -->
    </div> <!-- container -->
        

 


</body>

</html>