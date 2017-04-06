<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
     <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <form:errors path ="s.*"/>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Order Confirm</title>


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

<c:if test="${empty p}">
<!-- Product Deatils -->
<div class="container">
	<div class="row">
		
        
        
        <div class="col-md-12">
        <h2 align="center">Product Details</h2>
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
<%--   <c:set var="s" value="0">
  
  </c:set> --%>
     <c:forEach items="${allcart}" var="p">
      <%--  <c:set var="s" value="${s+p.totalprice}">
  
  </c:set> --%>
    <tr>
    <td><td><img alt="" src="${ctp}/resources/img/product/${p.proid}.png" height="100px" width="100px" style="width:auto; Style=height:auto"/></td>
    <td>${p.proname}</td>
    <td>${p.quantity}</td>
    <td>${p.proprice}</td>
    <td>${p.totalprice}</td>
    </tr>
    </tr>
  
    
     </c:forEach> 
    </tbody>
    
</table>
<p>Grand Total=${grandtot}</p>
<%-- <p style="font-size:15px, font-style:bold"> Grand Total=${s}</p> --%>

                
            </div>
            
        </div>
	</div>
</div>
</c:if>

<!-- product details from singale product page -->

<c:if test="${not empty p}">
<div class="container">
	<div class="row">
		
        
        
        <div class="col-md-12">
        <h2 align="center">Product Details</h2>
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
  
  
 
    <tr>
     <td><td><img alt="" src="${ctp}/resources/img/product/${o.productid}.png" height="100px" width="100px" style="width:auto; Style=height:auto"/></td>
    <td>${o.productname}</td>
    <td>${o.quantity}</td>
    <td>${o.productprice}</td>
    <td>${o.totalprice}</td>
    </tr>
    </tr>
  
    
    
    </tbody>
    
</table>

                
            </div>
            
        </div>
	</div>
</div>
</c:if>
<!-- billing details  -->
<div class="container">
	<div class="row">
		
        
        
        <div class="col-md-12">
        <h2 align="center">Billing Address</h2>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                  
                   <thead>
                   
                   <th></th>
                   <th>User name</th>
                    <th>Email</th>
                     <th>City</th>
                      <th>Pin code</th>
                      <th>State</th>
                    
                   </thead>
    <tbody>
  
 
    <tr>
     <td></td>
    <td>${u.name}</td>
    <td>${u.email}</td>
    <td>${u.city}</td>
    <td>${u.pincode}</td>
   <td>${u.state }</td>
    </tr>
    </tr>
  
    
     
    </tbody>
</table>

                
            </div>
            
        </div>
	</div>
</div>
<br>
<!-- shipping details  -->
<div class="container">
	<div class="row">
		
        
        
        <div class="col-md-12">
        <h2 align="center">Shipping Details</h2>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                  
                   <thead>
                   
                   <th></th>
                   <th>Contact Name</th>
                    <th>Email</th>
                    <th>Phone Number</th>
                     <th>Address</th>
                      <th>City</th>
                      <th>Pin code</th>
                    
                   </thead>
    <tbody>

    <tr>
    <td></td>
    <td>${uu.username}</td>
    <td>${uu.email}</td>
    <td>${uu.phno}</td>
    <td>${uu.address}</td>
    <td>${uu.cityy}</td>
    <td>${uu.pincode}</td>
    </tr>
    </tr>
  
    
    </tbody>
</table>



            </div>
            
        </div>
	</div>
</div>
<br>
<br>
<%@include file="Footer.jsp" %>
</body>

