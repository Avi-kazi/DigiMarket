<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib prefix="ctp" uri="http://java.sun.com/jsp/jstl/core" %>
    <form:errors path ="s.*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert product here</title>

<%@include file="navbar2.jsp" %>
</head>
<h2 align="center">Add New Product </h2>
<body>
<form:form action="${ctp}/def" method="post" modelAttribute="p" enctype="multipart/form-data">

<div class="container">

  <form class="form-horizontal">
  <div class="form-group">
 <label class="control-label col-sm-2">Product Name:</label>
  <div class="col-sm-10">
 <input type="text" class="form-control" name="proname"/><br>
 </div>
 </div>

 <div class="form-group">
 <label class="control-label col-sm-2">Product Price:</label>
  <div class="col-sm-10">
  <input type="text" class="form-control" name="proprice"/><br>
</div>
</div>

                        
 <!-- <div class="form-group">
 <label class="control-label col-sm-2">Product Category:</label>
  <div class="col-sm-10">
 <input type="text" class="form-control" name=""/><br>
 </div>
 </div> -->

<div class="form-group">
 <label class="control-label col-sm-2">Product Details:</label>
  <div class="col-sm-10">
 <input type="text" class="form-control" name="prodetails"/><br>
 </div>
 </div>
 <div class="form-group">
                           
                                <div class="col-sm-2">
                                <label for="procategory class="control-label col-sm-6">
                                Product Category</label>
                            <select id="procategory" name="procategory" class="form-control" required="required">
                                <option value="na" selected="">Choose One:</option>
                                <option value="Mobile">Mobile</option>
                                <option value="Laptops">Laptops</option>
                                <option value="Gamingconsoles">Gamingconsoles</option>
                            </select>
                            </div>
                             
                        </div>
<div class="form-group">
 <label class="control-label col-sm-2">Product Picture:</label>
  <div class="col-sm-10">
<input type="file" class="form-control"  name="File"/><br>
<center><input type="submit" value="Submit"class="btn btn-primary"></center>
</div>
</div>

</form>
</div>
</form:form>
<br>
<%@include file="Footer.jsp" %>
</body>
</html>