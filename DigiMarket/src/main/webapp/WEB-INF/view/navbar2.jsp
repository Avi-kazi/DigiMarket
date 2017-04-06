<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
     <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Digi Market</title>
<head>
  <title>Bootstrap Case</title>
  <meta charset="utf-8">
   <meta name="viewport" content="width=device-width, initial-scale=1">
 <link rel="stylesheet" href="${ctp}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${ctp}/resources/css/style.css">
  
</head>
<body background="${ctp}/resources/img2/background1.jpeg">

<nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#">Digi Market</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav">
        <li class=""><a href="${ctp}/">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" >Products<span class="caret"></span></a>
          <ul class="dropdown-menu">
            <li><a href="${ctp}/AllProducts/">All Products</a></li>
            <li><a href="${ctp}/result/Mobile/">Mobile</a></li>
            <li><a href="${ctp}/result/lap/Laptop/">Laptops</a></li>
            <li><a href="${ctp}/result/gaming/Gamingconsoles/">Gaming Consoles</a></li>
          </ul>
        </li>
        <c:if test="${(empty umsg)&&(empty amsg)&&(empty msg)}">
       <li><a href="${ctp}/contactus">Contacts</a></li>
       </c:if>
        <c:if test="${not empty umsg}">
        <li><a href="${ctp}/contactus">Contacts</a></li>
        </c:if>
        <c:if test="${not empty amsg}">
         <li><a href="${ctp}/contactuss">Contacts</a></li>
        </c:if>
        <li><a href="${ctp}/about">About us</a></li>
      </ul>
      <ul class="nav navbar-nav navbar-right">
      
      <c:if test="${(not empty amsg)||(not empty umsg)}">
      <a class="navbar-brand" href="#"> ${content}</a>
       </c:if>
        <c:if test="${not empty umsg}">
        <li><a href="${ctp}/cart"><span class="glyphicon glyphicon-shopping-cart"></span>Cart ${cartcount}</a></li>
        </c:if>
       <%--  <c:if test="${(empty umsg)&&(empty amsg)}">
        <li><a href="#"><span class="glyphicon glyphicon-shopping-cart"></span>Cart</a></li>
        </c:if> --%>
       
        <c:if test="${(empty msg)&&(empty amsg)&&(empty umsg)}">
         <li><a href="${ctp}/signup"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
        </c:if>
      <c:if test="${(empty msg)&&(empty amsg)&&(empty umsg)}">
       
        <li><a href="${ctp}/login1"><span class="glyphicon glyphicon-log-in"></span> Log in</a></li>
        </c:if>
        
        <c:if test="${(not empty amsg)||(not empty umsg)}">
        <li><a href="${ctp}/logout"><span class="glyphicon glyphicon-log-out"></span> Log out</a></li>
        </c:if>
       
        
      </ul>
    </div>
  </div>
</nav>
  </head><script src="${ctp}/resources/jquery/dist/jquery.min.js"></script>
  <script src="${ctp}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
  
</body>
</html>



