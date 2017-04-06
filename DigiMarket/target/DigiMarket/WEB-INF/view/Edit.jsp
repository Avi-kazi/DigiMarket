 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
    <form:errors path ="s.*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="formoid_files/formoid1/formoid-solid-light-green.css" type="text/css" />
<script type="text/javascript" src="formoid_files/formoid1/jquery.min.js"></script>
<%@include file="navbar2.jsp" %>
</head>
<h2 align="center">Update Product </h2>
<body>
<form:form action="${ctp}/edit" method="post" modelAttribute="p" enctype="multipart/form-data">

<input type="hidden" name="proid" value="${p.proid}"><br>
<div class="form-group">
 <label class="control-label col-sm-2">Product Name:</label>
  <div class="col-sm-10">
<input type="text" class="form-control" name="proname" value="${p.proname}"><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">Product Price:</label>
 <div class="col-sm-10">
<input type="text" class="form-control" name="proprice" value="${p.proprice}"><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">Product Category:</label>
<div class="col-sm-10">
 <input type="text" class="form-control" name="procategory" value="${p.procategory}"><br>
 </div>
 </div>
  <div class="form-group">
  <label class="control-label col-sm-2">Product Description :</label>
<div class="col-sm-10">
<input type="text" class="form-control" name="prodetails" value="${p.prodetails}"><br>
</div>
</div>
<div class="form-group">
<label class="control-label col-sm-2">File to upload:</label>
<div class="col-sm-10">
<input type="file" class="form-control" name="File" value=""><br>
</div>
</div>
<br>
<div class="form-group ">

<center><input type="submit" value="Update" class="btn btn-primary"></center>

</div>

</form:form>
<br>
<%@include file="Footer.jsp" %>
</body>
</html>
