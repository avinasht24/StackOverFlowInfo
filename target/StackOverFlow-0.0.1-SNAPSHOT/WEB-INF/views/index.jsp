﻿<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html xmlns="http://www.w3.org/1999/xhtml" xml:lang="en" lang="en">
<head>
<title>Stackoverflow</title>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
<link href="<c:url value="/resources/css/style.css" />"  rel="stylesheet" type="text/css" />


<link href="<c:url value="/resources/css/layout.css" />" rel="stylesheet" type="text/css" />
<link href="<c:url value="/resources/css/img/coviamIcon.jpg" />" rel="icon" type="text/css" />


<script src="<c:url value="resources/css/maxheight.js" />" type="text/javascript"></script>
<!--[if lt IE 7]><link href="ie_style.css" rel="stylesheet" type="text/css" /><![endif]-->
</head>
<body id="page1" onload="new ElementMaxHeight();">
<!-- header -->
<div id="header">
  <div class="container">
    <div class="row-1">
            <div class="logo"><a href="#"><img alt="" src="<c:url value="/resources/css/img/coviamlogoqa.JPEG" />" height="100" width="400" /></a></div>
      
      <ul class="top-links">
        
      </ul>
    </div>
    <style>
#text-position {
   position: absolute;
   bottom: 255px;
   left: 218px;
   text-align: right;
   width: 30%;

}
input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}
.datedAside {
     background: linear-gradient(0deg, transparent 89%,  grey 5%, transparent 91%);
}
.datedAside span{
     background: #FFF;
     padding: 0 0.5rem;
}
</style>
    <div class="row-2">
      <!-- nav box begin -->
      <div class="nav-box">
        <div class="left">
          <div class="right">
            <ul>
              <li><a href="<c:url value="/" /> " class="first"><em><b>HOME</b></em></a></li>
              <li><a href="QuestionPostPage"><em><b>POST QUESTIONS?</b></em></a></li>
             
              
              
            </ul>
          </div>
        </div>
      </div>
      <!-- nav box end -->
    </div>
  </div>
</div>
<!-- content -->
<div id="content">
  <div class="container">
              
    <!-- main-banner-big begin -->
    <!-- main-banner-big end -->
    <div class="wrapper">
    
      <div class="col-1 maxheight">
        <!-- box begin -->
        <div class="box maxheight">
          <div class="border-top maxheight">
            <div class="border-right maxheight">
              <div class="border-bot maxheight">
                <div class="border-left maxheight">
                  <div class="left-top-corner maxheight">
                    <div class="right-top-corner maxheight">
                      <div class="right-bot-corner maxheight">
                        <div class="left-bot-corner maxheight" style="width: 963px; ">
                          <div class="inner">
                          <form method="get" action="getAllQuestionsBySubject">
                                 <input name="searchInput" placeholder="Search for Questions here..." id="searchInput" size="100" style="height: 34px; width: 294px"></input>&nbsp;
&nbsp;
</t><input type="submit" value="Search" style="height: 36px; width: 120px">
                                 </input>
                                 </form>
                                 
                            
     					</div>
     					             					<div class="inner">
     		<b><h2><font color="grey">Browse below for all questions</h2></font></b>			
        <c:forEach var="getAllQuestions" items="${getAllQuestions}">
        <div class="datedAside"><span></span><br/><br/>
                        <p><b><h2><font color="red">Question : <a href="">${getAllQuestions.getInputSubject()}</a></font></h1></p>
                <td><h4>Description: ${getAllQuestions.getInputQuestion()}</h3></td>
				 
					 <c:if test="${empty getAllQuestions.getInputAnswers()}">
					 <br> </br>
				   No Answers yet, add your Answers to the Question below.
				    <br> </br>
				</c:if>
				<c:if test="${ not empty getAllQuestions.getInputAnswers()}">
								<p><h3><font color="green">Answers:</h3></p></font>
				
								</c:if>
				
								<ol>
				
				        <c:forEach var="getAllAnswers" items="${getAllQuestions.getInputAnswers()}">
	               <p><li>&nbsp;&nbsp;${getAllAnswers.getInputAnswer() }</li></p>
	                            </c:forEach>
	                            	                </ol>
	                            
	                <p>Add New Answer:<form method="post" action="postAnswers">
	               
	                <input type="hidden" id="inputSubject" name="inputSubject" value="${getAllQuestions.getInputSubject()}" />
	                 <textarea name="inputPost" id="inputPost" size="50" style="margin: 0px; width: 318px; height: 92px;"></textarea><input type="submit" value="POST ANSWER"></input></form></p>
	                
               </div> 
            </c:forEach>
                           
                                                  </div>
                   
                                
                               </div>
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- box end -->
     
        <!-- box end -->
      </div>
     
    </div>
  </div>
</div>
<!-- extra-content -->
<div id="extra-content">
  <div class="container">
    <div class="wrapper">
      <div class="col-1 maxheight">
        <!-- box begin -->
        <div class="box maxheight">
          <div class="border-top maxheight">
            <div class="border-right maxheight">
              <div class="border-bot maxheight">
                <div class="border-left maxheight">
                  <div class="left-top-corner maxheight">
                    <div class="right-top-corner maxheight">
                      <div class="right-bot-corner maxheight">
                        <div class="left-bot-corner maxheight">
                          
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- box end -->
      </div>
      <div class="col-2 maxheight">
        <!-- box begin -->
        <div class="box maxheight">
          <div class="border-top maxheight">
            <div class="border-right maxheight">
              <div class="border-bot maxheight">
                <div class="border-left maxheight">
                  <div class="left-top-corner maxheight">
                    <div class="right-top-corner maxheight">
                      <div class="right-bot-corner maxheight">
                        <div class="left-bot-corner maxheight">
                          
                        </div>
                      </div>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
        <!-- box end -->
      </div>
    </div>
  </div>
</div>
<!-- footer -->
<div id="footer">
  <div class="container">
    <ul class="nav">
      <li><a href="<c:url value="/" /> ">Home</a>|</li>
      <li><a href="https://www.coviam.com">About Us</a>|</li>
      <li><a href="https://www.coviam.com">Solutions</a>|</li>
      <li><a href="https://www.coviam.com">Partners</a>|</li>
      <li><a href="https://www.coviam.com">Consulting</a>|</li>
      <li><a href="https://www.coviam.com">Contact Us</a></li>
    </ul>
    <div class="wrapper">
      <div class="fleft">Copyright &copy; 2018 <a href="#"> QA Team</a>. All Rights Reserved</div>
    </div>
  </div>
</div>
</body>
</html>
