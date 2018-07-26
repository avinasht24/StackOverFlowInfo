<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
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
    <div class="row-2">
      <!-- nav box begin -->
      <div class="nav-box">
        <div class="left">
          <div class="right">
            <ul>
              <li><a href="<c:url value="/" /> " class="first"><em><b>HOME</b></em></a></li>
              <li><a href="QuestionPostPage"><em><b>QA BOT CONFIG</b></em></a></li>
              
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
                            <h2><b><font color="red">StackOverFlow</font></b></h2>
                           
                           <p>Subject       :
                           <input name="inputValue" id="inputValue" size="50"></input>
                           <p>Description: <textarea name="inputValue" id="inputValue" size="50" style="margin: 0px; width: 318px; height: 92px;"></textarea></p>
                           
                              <input value="Post New Questions"  type="submit" style="background-color: #f44336 ; color:whilte"></input>
                              </p>
                              
                              
     					</div>
     					             					<div class="inner">
     					
        <c:forEach var="getAllQuestions" items="${getAllQuestions}">
        
                <p><b><h2><font color="red">Question : <a href="">${getAllQuestions.getInputSubject()}</a></font></h1></p>
                <td><h3>Description: ${getAllQuestions.getInputQuestion()}</h3></td>
				<p>Answers:
				 
					 <c:if test="${empty getAllQuestions.getInputAnswers()}">
					 <br> </br>
				   No comments yet, add your comments to the issue/question.
				    <br> </br>
				</c:if>
				        <c:forEach var="getAllAnswers" items="${getAllQuestions.getInputAnswers()}">
				
	                <p>${getAllAnswers.getInputAnswer() }</p>
	                
	                            </c:forEach>
	                <p>Add New Comment: <textarea name="inputValue" id="inputValue" size="50" style="margin: 0px; width: 318px; height: 92px;"></textarea></p>
	                
                
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
