<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <form:errors path ="s.*"/>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head> <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Contact us</title>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
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
        <h2 align="center">Complains</h2>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                  
                   <thead>
                   
                   
				   <th>Name:</th>
                    <th>Email:</th>
                     <th>Phone:</th>
                     <th>Company:</th>
                     <th>Subject:</th>
                     <th>Feedbacks:</th>
                      <th>Delete</th>
                   </thead>
  
     <c:forEach items="${a}" var="p" >
       <tbody>
    <tr>
    <td>${p.fullname}</td>
    <td>${p.email}</td>
    <td>${p.phno}</td>
    <td>${p.company}</td>
    <td>${p.subject}</td>
     <td>${p.message}</td>
     <td><a href="${ctp}/deletecom/${p.complainid}" class="btn btn-danger"><span class="glyphicon glyphicon-trash"></span> Delete</a></td>
    </tr>
   </tbody>
   </c:forEach>  
  
</table>
</div>
</div>
</div>
</div>
<%@include file="Footer.jsp" %>
</body>
</html>