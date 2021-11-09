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

td {
   border: 0px solid black;
   width: 400px;
   height: 110.2px;
}

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
   margin-top: 0.1em;
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

.SignUpPanel1 {
   border: 2px solid #2667EE;
   border-radius: 5px;
   height: auto;
   margin-top: 0.2em;
   margin-bottom: 0.2em;
}

.SignUpPanel2 {
   /* border: 1px solid red; */
   height: auto;
   width: auto;
   margin-top: 0.2em;
   margin-bottom: 0.2em;
   background-color: #F5F5F5;
}

#suarea {
   border: 1px solid black;
   border-radius: 5px;
   width: 450px;
   margin: 0 auto;
}

table {
   border: 0px solid black;
   margin: 1em;
   width: auto;
}

#titleFont {
   border: 1px solid #2667EE;
   text-align: center;
   background-color: rgb(107, 160, 97);
   width: auto;
}

.suarea {
   border: 1px solid black;
   width: 500px;
   margin: 0 auto;
}

#pname, #pid, #ppw, #prepw, #pbirth, #addr, #addr2 {
   width: 400px;
}

#addr, #addr2 {
   margin-bottom: 0.5em;
}

#pid {
   width: 300px;
}

#idcheck {
   margin-left: 0.5em;
}

#chp1, #chp2, #chp3 {
   width: 128px;
}

.footer {
   border: 2px solid #2667EE;
   height: 150px;
   margin: 0.1em;
   border-radius: 5px;
}
</style>

</head>
<body>
   <c:set var="myctx" value="${pageContext.request.contextPath}" />
   <div class="container">
      <div class="jumbotron">
         <div id="logo">
            <h1>
               <a href="../index" style='text-decoration: none'> Good Job </a>
            </h1>
         </div>
      </div>







      <div class="container">




         <div id="suarea">
            <form name="UserC" id="UserC" action="userCEdit" method="post">
               <table>
                  <tr>
                     <div id="titleFont">
                        <h4>
                           <b> 기업회원정보 수정 </b>
                        </h4>
                     </div>

                  </tr>

                  <tr>
                     <td>
                        <div class="form-group">
                           <label for="cname"> <b> 기업이름 : </b>
                           </label> <input type="text" name="cname" id="cname" placeholder=""
                              class="form-control" value="${userc.cname}">
                        </div>
                     </td>
                  </tr>

                  <tr>
                     <td>
                        <div class="form-group">
                           <label for="cnum"> <b> 사업자번호 : </b>
                           </label> <input type="text" name="cnum" id="cnum" class="form-control" value="${userc.cnum}">
                        </div>
                        </div>
                     </td>
                  </tr>

                  <tr>
                     <td>
                        <div class="form-group">
                           <label for="cname"> <b> 대표자 이름 : </b>
                           </label> <input type="text" name="cdname" id="cdname" placeholder=""
                              class="form-control" value="${userc.cdname}">
                        </div>
                     </td>
                  </tr>

                  <tr>
                     <td>
                        <div class="form-group">
                           <label for="cid"> <b> 아이디 : </b>
                           </label>

                           <div class="form-inline">
                              <input type="text" name="cid" id="cid" placeholder=""
                                 class="form-control" value="${userc.cid}">
                              <button type="submit" class="btn btn-primary" id="idcheck">
                                 중복확인</button>
                           </div>
                        </div>
                     </td>
                  </tr>

                  <tr>
                     <td>
                        <div class="form-group">
                           <label for="cpw"> <b> 비밀번호 : </b>
                           </label> <input type="password" name="cpw" id="cpw" placeholder=""
                              class="form-control" value="${userc.cpw}">
                        </div>
                     </td>
                  </tr>

                  <tr>
                     <td>
                        <div class="form-group">
                           <label for="prepw"> <b> 비밀번호 확인 : </b>
                           </label> <input type="password" id="prepw" placeholder=""
                              class="form-control">
                        </div>
                     </td>
                  </tr>



                  <tr>
                     <td><label for="php1"> <b> 연락처 : </b>
                     </label> <!-- 강사님한테 물어보니 하나만 지정해도 된다 함-->
                        <div class="form-inline">
                           <input type="text" name="chp1" id="chp1" placeholder=""
                              class="form-control" value="${userc.chp1}"> <b> - </b> <input type="text"
                              name="chp2" id="chp2" placeholder="" class="form-control" value="${userc.chp2}">
                           <b> - </b> <input type="text" name="chp3" id="chp3"
                              placeholder="" class="form-control" value="${userc.chp3}">
                        </div></td>
                  </tr>




                  <tr>
                     <td>
                        <div class="form-group">

                           <label for="addr"> <b> 주소 </b>
                           </label> <input type="text" id="caddr" name="caddr" placeholder=""
                              class="form-control" value="${userc.caddr}"> 
                              
                             <label for="addr2"> <b>
                                 상세 주소 </b>
                           </label> <input type="text" id="caddr2" name="caddr2" placeholder=""
                              class="form-control" value="${userc.caddr2}">

                           <!-- </div> -->

                        </div> <!-- form-group -->
                     </td>
                  </tr>

                  <tr>
                     <td align="center">
                        <div class="form-group">
                           <button class="btn btn-primary"
                              style="height: 50px; width: 160px">
                              <b> 수정하기</b>
                           </button>

                           <button class="btn btn-primary"
                              style="height: 50px; width: 160px" type="reset">
                              <b> 다시쓰기</b>
                           </button>
                        </div>
                     </td>
                  </tr>

               </table>
            </form>
         </div>
         <!-- suarea -->


      </div>
      <!-- container -->
</body>

</html>