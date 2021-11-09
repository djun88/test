<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
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

    <title>Document</title>

     <style>
     .container{
    border:3px solid blue;
    border-radius: 15px;
    height:auto;
    background-color: whitesmoke;
}

.top{
    border:1px solid whitesmoke;
    height: auto;
    width: auto;
    margin: 1em;
}

#title{
    border: 1px solid  #2667EE;
    height: auto;
    width: 500px;
    margin: 0.5em;
}

#save{
    margin-left: 17em;
}

#apply{
    margin-left:1em;
}

.info{
    border: 2px solid #2667EE;
    height: auto;
    width: auto;
    margin: 1em;
    background-color: white;
}

.topInfo{
    border: 1px solid whitesmoke;
    height: auto;
    margin: 0.5em;

}

#topInfoLeft{
    /* border: 1px solid black; */
    height: auto;
    width: 525px;
    /* margin:0.5em; */
    float: left;
}

#topInfoRight{
    /* border: 1px solid black; */
    height: auto;
    width: 525px;
    /* margin:0.5em; */
    float: right;
}

#tdRight{
    border:1px solid black;
    /* width: 100px; */
    height:50px;
    width: 506px;
}

#tdLeft{
    border:1px solid black;
    width:300px;
    background-color: whitesmoke;
}


.downInfo{
    border: 1px solid whitesmoke;
    height: auto;
    margin: 0.5em;
}

/* #downInfoCenter{
    margin: 0.5em;
} */


.jobImage{
    border: 2px solid whitesmoke;
    height: auto;
    width: auto;
    margin: 1em;
}

img{
    display:block;
    margin-left:auto;
    margin-right:auto;
}


.infoo{
    border: 2px solid #2667EE;
    height: auto;
    width: auto;
    margin: 1em;
}

#tdBelow{
    border: 0.5px solid black;
    width: 533px;
    height: 140px;
    background-color: white;
}
     
     </style>
</head>

<body>
    <div class="container">

        <div class="top">

            <div class="form-inline">

                ${job.cjobt}
                
                

            </div> <!-- form-inline -->
            
        </div> <!-- top -->



        <div class="info">
    
            <div class="topInfo">
            <div class="form-inline">

                <div id="topInfoLeft">
                    <table>
                        <tr>
                            <td id="tdLeft">
                                <span style="border:1px solid whites; margin-left: 2.5em"> <b> 경력 </b> </span>
                            </td>


                            <td>
                            	${job.ce}
                  			</td>   
                        </tr>


                        <tr>
                            <td id="tdLeft">
                                <span style="border:1px solid whites; margin-left: 2.5em"> <b> 학력 </b> </span>
                            </td>


                            <td>
                            	${job.cc}
                     		</td>
                        </tr>


                        <tr>
                            <td id="tdLeft">
                                <span style="border:1px solid white; margin-left: 1.7em"> <b> 우대사항 </b> </span>
                            </td>


                            <td width="80%">
                            	${job.cpr}
                            </td>  
                        </tr>
                    </table>
                </div> <!-- topInfoLeft -->

                <div id="topInfoRight">
                    <table>
                        <tr>
                            <td id="tdLeft">
                                <span style="border:1px solid white; margin-left: 1.7em"> <b> 근무형태 </b> </span>
                            </td>


                            <td width="80%">
                            	${job.ctype}
                     		</td>
                        </tr>


                        <tr>
                            <td id="tdLeft">
                                <span style="border:1px solid white; margin-left: 2.5em"> <b> 급여 </b> </span>
                            </td>


                            <td width="80%">
                            	${job.cpay}
                     		</td>
                        </tr>


                        <tr>
                            <td id="tdLeft">
                                <span style="border:1px solid white; margin-left: 2.5em"> <b> 직책 </b> </span> 
                            </td>


                            <td width="80%">
                            	${job.cposition}
                     		</td>  
                        </tr>
                    </table>
                </div> <!-- topInfoRight-->
            </div> <!-- form-inline -->
            </div> <!-- topInfo -->





            <div class="downInfo">
                <div id="downInfoCenter">
                    <div class="form-inline">
                        <table>
                            <tr>
                                <td id="tdLeft">
                                    <span style="border:1px solid whites"> <b> 근무지 </b> </span>
                                </td>
                
                                <td width="80%">
                                	${job.caddr}
                     			</td>
                            </tr>
    
                        </table>


                       
                    </div> <!-- form-inline -->
                   
                </div>
            </div>



        
        </div> <!-- info -->


        <div class="jobImage">
            
               
                     <b>상세설명</b>
                    <img
                        src="${pageContext.request.contextPath}/images/${job.cmsg}"
                        class="img-fluid img-thumbnail" style="width: 70%;"> <br>
                   

        </div>

        <div class="infoo">
            <div class="form-inline">


                <table>
                    <tr>
                        <td id="tdBelow">
                                <img src="${pageContext.request.contextPath}/images/${job.cimage}"
            				class="img-fluid img-thumbnail"  style="width: 20%;">
                        </td>
                </table>

                <table>
                    <tr>
                        <td id="tdBelow">
                            기업규모 : ${job.ccategory} <br>
                            담당자 : ${job.cdname}
                        </td>
                </table>


            </div> <!-- form-inline -->


        </div> <!-- infoo -->

    </div> <!-- container-->


    
</body>




</html>