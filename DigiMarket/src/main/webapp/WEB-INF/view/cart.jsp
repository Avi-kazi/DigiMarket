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
    <title>Cart</title>


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
        <h2 align="center">Cart Page</h2>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                  
                   <thead>
                   
                   <th></th>
                   <th>Product Image</th>
                    <th>Product Name</th>
                     <th>Product Quantity</th>
                      <th>Product Price</th>
                      <th>Total price</th>
                    
                   </thead>
    <tbody>
  <c:set var="s" value="0">
  
  </c:set>
     <c:forEach items="${pro}" var="p">
       <c:set var="s" value="${s+p.totalprice}">
  
  </c:set>
    <tr>
    <td><td><img alt="" src="${ctp}/resources/img/product/${p.proid}.png" height="100px" width="100px" style="width:auto; Style=height:auto"/></td>
    <td>${p.proname}</td>
    <td>${p.quantity}</td>
    <td>${p.proprice}</td>
    <td>${p.totalprice}</td>
   <td><a href="${ctp}/deletes/${p.cartid}" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span> Delete</a></td>
    </tr>
    </tr>
  
    
     </c:forEach> 
    </tbody>
</table>
<table>
<p style="font-size:15px, font-style:bold"> Grand Total=${s}</p>
<div class="btn-group-vertical pull-right">

 <a href="${ctp}/billingpage/" type="submit"  class="btn btn-primary" style="font-size: 14px, flot-right">Check out</a>
</div>
 <a href="${ctp}/h" class="btn btn-warning" style="font-size:14px,pull-left">Continue Shopping</a>
</table>
                
            </div>
            
        </div>
	</div>
</div>
<br>
<br>
<%@include file="Footer.jsp" %>
</body>

