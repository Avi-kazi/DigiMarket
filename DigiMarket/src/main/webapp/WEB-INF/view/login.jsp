<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Log in</title>


 <title>Bootstrap Case</title>
  <meta charset="utf-8">
 <%--  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${ctp}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${ctp}/resources/css/style.css">
  <script src="${ctp}/resources/jquery/dist/jquery.min.js"></script>
  <script src="${ctp}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script> --%>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }
body,h1,h2,h3,p,td,quote,small,form,input,ul,li,ol,label{
	margin:0px;
	padding:0px;
}

body{
	margin-top:20px;
	font-family:Arial, Helvetica, sans-serif;
	color:#51555C;
	height:100%;

	font-size:11px;
}

/* Form styles */

input,select{
	padding:3px;
	color:#333333;

	border:1px solid #96A6C5;
	margin-top:2px;
	width:200px;
	font-size:11px;
}

select{
	width:auto;
	padding:2px;
}

.formline{
	padding:3px;
}

label{
	font-size:11px;
	text-align:right;
}

table{
	width:300px;
}

td{
	font-size:11px;
}

.input-container{
	padding:1px;
}

#div-regForm,.registered{
	border:3px solid #eeeeee;
	padding:15px;

	background:url(img/bg.jpg) repeat-x #cbd4e4;
	color:#203360;

	margin:30px auto 40px auto;
	width:400px;
}

.form-title,
.form-sub-title{
	font-size:20px;

	font-family:"Lucida Grande",Tahoma,Verdana,Arial,sans-serif;
	font-size:20px;
	font-weight:bold;
}

.form-sub-title{
	font-weight:normal;
	padding:6px 0 15px 0;
}

.greenButton{
	width:auto;
	margin:10px 0 0 2px;
	padding:3px 4px 3px 4px;
	color:white;
	background-color:#589d39;
	outline:none;
	border:1px solid #006600;
	font-weight:bold;
}

.greenButton:active{
	background-color:#006600;
	padding:4px 3px 2px 5px;
}

#loading{
	left:10px;
	position:relative;
	top:3px;
	visibility:hidden;
}

#error{
	background-color:#ffebe8;
	border:1px solid #dd3c10;
	padding:7px 3px;
	text-align:center;
	margin-top:10px;
	visibility:hidden;
}
</style>
</head>
<body>
<%@include file="navbar2.jsp" %>
<center><h4>${emsg}</h4></center>
<form:form class="form-horizontal" action="validate"  method="post" modelAttribute="u">
<div id="div-regForm">

<div class="form-title">Log in</div>
<div class="form-sub-title"></div>


<table>
<tbody>
<tr>

	<td><label for="email">Email:</label></td>
	<td><div class="input-container">
	<input name="email" id="email" type="text" placeholder="Email" required="required"/>
	</div></td>

</tr>

<tr>

	<td><label for="password">Password:</label></td>
	<td><div class="input-container">
	<input name="password" id="password" type="password" placeholder="Password" required="required"/>
	</div></td>

</tr>


<tr>
</tr>
<tr>
</tr>
<tr>

	<td>&nbsp;</td>
	<%-- <form action="<c:url value='j_spring_security_check' />" method='POST'> --%>
	 <td> <%--  <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}" /> --%>  
	   <input type="submit" class="greenButton" value="Log in" />
	   <br>
	 <h5>New User?</h5><h6>Create a new account</h6><a href="${ctp}/signup" class="greenButton:active btn-danger btn-xs">Sign Up</a></td>
	</td>
<%-- </form> --%>
</tr>

</tbody>
</table>



<div id="error">
&nbsp;
</div>

</div>
 
</form:form> 
</div><!-- end for class "row" -->
</div><!-- end for class "container" -->
<br>
<br>
<br>
<br>
<br>
<br>
<%@include file="Footer.jsp" %>
</body>