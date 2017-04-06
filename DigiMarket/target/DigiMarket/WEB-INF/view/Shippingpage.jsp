<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <form:errors path ="s.*"/>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">

</head>
<body>
  <%@include file="navbar2.jsp" %>
  <div class="container">
<div class="row">
<div class="page-header">
<td style="vertical-align: middle;">
    <h2 style="text-align: center;">Shipping Details</h2>
</td>
</div>
<form class="form-horizontal" method="post" action="orderconfirm" modelAttribute="s"  >
<div class="form-group">
<label for="fullname" class="col-sm-2 control-label"></label>
<div class="col-sm-6">
<input type="hidden" name="email" class="form-control" id="email" placeholder="Contact Person Name" required="required">
</div>
</div>
<div class="form-group">
<label for="fullname" class="col-sm-2 control-label">Contact Name*:</label>
<div class="col-sm-6">
<input type="text" name="username" class="form-control" id="username" placeholder="Contact Person Name" required="required">
</div>
</div>
<div class="form-group">
<label for="fullname" class="col-sm-2 control-label">Email*:</label>
<div class="col-sm-6">
<input type="email" name="email" class="form-control" id="email" placeholder="Contact Person Email" required="required">
</div>
</div>
<div class="form-group">
<label for="phno" class="col-sm-2 control-label">Phone No*:</label>
<div class="col-sm-6">
<input type="text" name="phno" class="form-control datepicker" id="phno" placeholder="Contact No" required="required">
</div>
</div>
<div class="form-group">
<label for="address" class="col-sm-2 control-label">Address*:</label>
<div class="col-sm-6">
<input type="text" name="address" class="form-control" id="address" placeholder="Contact Address" required="required">
</div></div>
 <div class="form-group">
<label for="cityy" class="col-sm-2 control-label">City*:</label>
<div class="col-sm-6">
<input type="text" name="cityy" class="form-control" id="cityy" placeholder="City" required="required">
</div>
</div>
<div class="form-group">
<label for="pincode" class="col-sm-2 control-label">Pin code*:</label>
<div class="col-sm-6">
<input type="text" name="pincode" class="form-control" id="pincode" placeholder="Pin code" required="required">
</div>
</div>
<div class="form-group">
<div class="col-sm-offset-2 col-sm-10">
<center><input type="submit" value="Register" class="btn btn-primary"></center>
</div>
</div>

</form>
<%@include file="Footer.jsp" %>
</body>
</html>