<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<meta name="viewport" content="width=device-width, initial-scale=1">
<title>Insert title here</title>

<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
body {font-family: Arial, Helvetica, sans-serif;}

input[type=text], select, textarea {
    width: 100%;
    padding: 12px;
    border: 1px solid #ccc;
    border-radius: 4px;
    box-sizing: border-box;
    margin-top: 6px;
    margin-bottom: 16px;
    resize: vertical;
}

input[type=submit] {
    background-color: #4CAF50;
    color: white;
    padding: 12px 20px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

input[type=submit]:hover {
    background-color: #45a049;
}

.container {
    border-radius: 5px;
    background-color: white;
    padding: 20px;
}

.topnav {
    overflow: hidden;
    background-color: grey;
}

.topnav a {
    float: left;
    display: block;
    color: #f2f2f2;
    text-align: center;
    padding: 14px 16px;
    text-decoration: none;
}



/* Change color on hover */
.topnav a:hover {
    background-color: #ddd;
    color: black;
}


.fa {
  padding: 10px;
  font-size: 15px;
  width: 30px;
  text-align: center;
  text-decoration: none;
  margin: 5px 2px;
}

.fa:hover {
    opacity: 0.7;
}

.fa-facebook {
  background: #3B5998;
  color: white;
}

.fa-twitter {
  background: #55ACEE;
  color: white;
}

.fa-google {
  background: #dd4b39;
  color: white;
}

.fa-linkedin {
  background: #007bb5;
  color: white;
}

.fa-youtube {
  background: #bb0000;
  color: white;
}

.fa-instagram {
  background: #125688;
  color: white;
}



/* Footer */

.footer {
    padding: 10px;
    text-align: center;
    background: #333;
}


</style>

</head>
<body bgcolor="#bbb">

<h3>Please post your question</h3>

<div class="topnav">
  <a href="<c:url value="/" /> " >Home</a>
</div>

<div class="container">
  <form method="post" action="postInput">
    <label for="question">Subject</label>
    <input type="text" id="inputSubject" name="inputSubject" placeholder="Write subject">

    <label for="subject">Question</label>
    <textarea id="inputPost" name="inputPost" placeholder="Write question" style="height:200px"></textarea>

    <input type="submit" value="Post">
    ${postQuestionDetails.postMessage} 
  </form>
</div>


<div class="footer">
<a href="https://www.facebook.com/avinash.uppi.5" class="fa fa-facebook"></a>
<a href="https://www.google.com/" class="fa fa-twitter"></a>
<a href="https://www.google.com/" class="fa fa-google"></a>
<a href="https://www.linkedin.com/in/sanjay-n-211802a0/" class="fa fa-linkedin"></a>
<a href="https://www.google.com/" class="fa fa-youtube"></a>
<a href="https://www.google.com/" class="fa fa-instagram"></a>
</div>



</body>

</html>