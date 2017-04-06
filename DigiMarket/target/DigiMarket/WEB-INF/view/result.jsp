<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <form:errors path ="s.*"/>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home page</title>



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
  body{
  th{color: blue;}
  }

</style>
<%@include file="navbar2.jsp" %>
</head>

<body>
<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        <h2 align="center">Product Page</h2>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                  
                   <thead>
                   
                   <th></th>
				   <th>Product Picture</th>
                   <th>Product id</th>
                    <th>Product Name</th>
                     <th>Product Price</th>
                     <th>Product Category</th>
                     <th>Product Detils</th>
                      <c:if test="${empty amsg }">
                     <th>View</th>
                     </c:if>
                     <c:if test="${not empty amsg }">
                       <th>Edit</th>
                      <th>Delete</th>
                        </c:if>
                   </thead>
  
     <c:forEach items="${pro}" var="pp" >
       <tbody>
    <tr>
   
    <td><td><img alt="" src="${ctp}/resources/img/product/${pp.proid}.png" height="100px" width="100px" style="width:auto; Style=height:auto"/></td>
    <td>${pp.proid}</td>
    <td>${pp.proname}</td>
    <td>${pp.proprice}</td>
    <td>${pp.procategory}</td>
    <td>${pp.prodetails}</td>
    <c:if test="${ empty amsg }">
    <td><a href="${ctp}/sp/${pp.proid}" class="btn btn-primary"><span class="glyphicon glyphicon-eye-open"></span>View</a></td>
    </c:if>
    <c:if test="${not empty amsg }">
   <td><a href="${ctp}/edit/${pp.proid}" class="btn btn-warning"><span class="glyphicon glyphicon-pencil"></span>Edit </a></td>
   <td><a href="${ctp}/delete/${pp.proid}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</a></td>
     </c:if>
    </tr>
   </tbody>
   </c:forEach>  
  
</table>
 <div>
      <c:if test="${not empty amsg}">
   <td><a href="${ctp}/admin" class="btn btn-primary"><span class="glyphicon glyphicon-pencil"></span>Add new product </a></td>
   </c:if>
   </div>   

<hr>
                
            </div>
            
        </div>
	</div>
</div>

<%@include file="Footer.jsp" %>
</body>

