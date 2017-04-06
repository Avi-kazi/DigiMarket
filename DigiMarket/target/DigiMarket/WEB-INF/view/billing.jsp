<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
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
    <h2 style="text-align: center;">Billing Address</h2>
</td>
</div>
<form:form action="${ctp}/shippingpage" method="post" modelAttribute="u" >

<div class="form-group">
 <label class="control-label col-sm-2">User Name:</label>
  <div class="col-sm-10">
<input type="text" class="form-control" name="name" value="${u.name}"  disabled><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">Email :</label>
 <div class="col-sm-10">
<input type="text" class="form-control" name="email" value="${u.email}"  disabled><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">City :</label>
<div class="col-sm-10">
 <input type="text" class="form-control" name="city" value="${u.city}"  disabled><br>
 </div>
 </div>
  <div class="form-group">
  <label class="control-label col-sm-2">Pin Code :</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="pincode" value="${u.pincode}"  disabled><br>
</div>
</div>
<div class="form-group">
  <label class="control-label col-sm-2">State :</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="state" value="${u.state}"  disabled><br>
</div>
</div>
<br>
<div class="form-group ">

<center><input type="submit" value="Confrom" class="btn btn-primary"></center>

</div>
</form:form>
<%@include file="Footer.jsp" %>
</div>
</div>
</body>
</html>