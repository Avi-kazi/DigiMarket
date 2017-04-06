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
    <title>Sign up</title>


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
	padding:3px 3px 3px 3px;
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
<form:form class="form-horizontal" action="regs"  method="post" modelAttribute="u">
<div id="div-regForm">

<div class="form-title">Sign Up</div>
<div class="form-sub-title">Create your account</div>


<table>
<tbody>
<tr>

	<td><label for="name">Name:</label></td>
	<td><div class="input-container">
	<input name="name" id="name" type="text"placeholder="Name" />
	</div></td>

</tr>
<tr>

	<td><label for="email">Email:</label></td>
	<td><div class="input-container">
	<input name="email" id="email" type="text" placeholder="Email"/>
	</div></td>

</tr>
<tr>

	<td><label for="phonenum">Phone:</label></td>
	<td><div class="input-container">
	<input name="phonenum" id="phonenum" type="text" placeholder="Phone number"/>
	</div></td>

</tr>
<tr>

	<td><label for="password">Password:</label></td>
	<td><div class="input-container">
	<input name="password" id="password" type="password" placeholder="Password"/>
	</div></td>

</tr>
<!-- <tr>

	<td><label for="cpassword"> Confirm Password:</label></td>
	<td><div class="input-container">
	<input name="cpassword" id="cpassword" type="password" />
	</div></td>

</tr> -->

<tr>

	<td><label for="address">Address:</label></td>
	<td><div class="input-container">
	<input name="address" id="address" type="text" placeholder="Address"/>
	</div></td>

</tr>
<tr>

	<td><label for="city">City:</label></td>
	<td><div class="input-container">
	<input name="city" id="city" type="text" placeholder="City"/>
	</div></td>

</tr>
<tr>

	<td><label for="pincode">Pin code:</label></td>
	<td><div class="input-container">
	<input name="pincode" id="pincode" type="text"placeholder="Pin code" />
	</div></td>

</tr>
<tr>

	<td><label for="state">State:</label></td>
	<td><div class="input-container">
	<input name="state" id="state" type="text"placeholder="State" />
	</div></td>

</tr>
<tr>

	<td><label for="role"></label></td>
	<td><div class="input-container">
	<input name="role" id="role" type="hidden" value="user" />
	</div></td>

</tr>
<tr>
</tr>
<tr>
</tr>
<tr>

	<td>&nbsp;</td>
	<td><input type="submit" class="greenButton" value="Sign Up" />
	<br>
	 <h6>Already have an account?</h6><a href="${ctp}/login1" class="greenButton:active btn-danger btn-xs">Log In</a></td>
	  
	</td>

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
<%@include file="Footer.jsp" %>
</body>
</html>