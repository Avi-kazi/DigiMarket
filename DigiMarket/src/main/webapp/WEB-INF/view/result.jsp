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


 <title>Bootstrap Case</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="${ctp}/resources/bootstrap-3.3.7-dist/css/bootstrap.min.css">
  <link rel="stylesheet" href="${ctp}/resources/css/style.css">
  <script src="${ctp}/resources/jquery/dist/jquery.min.js"></script>
  <script src="${ctp}/resources/bootstrap-3.3.7-dist/js/bootstrap.min.js"></script>
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }

</style>
</head>
<body>
<div >
<nav class="navbar navbar-default navbar-custom">
  <div class="container-fluid">
    <!-- Brand and toggle get grouped for better mobile display -->
    <div class="navbar-header">
      <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#bs-example-navbar-collapse-1" aria-expanded="false">
        <span class="sr-only">Toggle navigation</span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
      </button>
      <a class="navbar-brand" href="#"class="pull-left"><img src="resources/img/ipod.png" style="display: inline-block;"> <span style="display: inline-block;">Digi Market</span></a>
    </div>

    <!-- Collect the nav links, forms, and other content for toggling -->
    <div class="collapse navbar-collapse" id="bs-example-navbar-collapse-1">
      <ul class="nav navbar-nav">
	  <li><a href="#">Home</a></li>
        <li class="dropdown">
          <a href="#" class="dropdown-toggle" data-toggle="dropdown" role="button" aria-haspopup="true" aria-expanded="false">Products<span class="caret"></span></a>
          <ul class="dropdown-menu">
          <li><a href="${ctp}/AllProducts/">All Products</a></li>
            <li><a href="${ctp}/result/Mobile/">Mobile</a></li>
            <li><a href="#">Laptop</a></li>
            <li><a href="#">Gaming Consoles</a></li>
			</ul>
        </li>
		<li><a href="#">Contacts</a></li>
		<li><a href="#">About us</a></li>
      </ul>

     <ul class="nav navbar-nav navbar-right">
      <li><a href="#"><span class="glyphicon glyphicon-user"></span> Sign Up</a></li>
      <li><a href="#"><span class="glyphicon glyphicon-log-in"></span> Login</a></li>
    </ul>
    </div><!-- /.navbar-collapse -->
  </div><!-- /.container-fluid --> 
</nav>
</div>

   

    <title>Home page</title>


  
  
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="container">
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>Product Page</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   <c:forEach items="${pro}" var="pp" >
                   <thead>
                   
                   <th></th>
				   <th>Product Picture</th>
                   <th>Product id</th>
                    <th>Product Name</th>
                     <th>Product Price</th>
                     <th>Product Category</th>
                     
                      <th>Edit</th>
                      
                       <th>Delete</th>
                   </thead>
    <tbody>
    
    <tr>
   
    <td><td><img alt="" src="${ctp}/resources/img/product/${pp.proid}.png" height="100px" width="100px" style="width:auto" style="height:auto"/></td></td>
    <td>${pp.proid}</td>
    <td>${pp.proname}</td>
    <td>${pp.proprice}</td>
    <td>${pp.procategory}</td>
   <td><a href="${ctp}/edit/${pp.proid}" class="btn btn-default"><span class="glyphicon glyphicon-pencil"></span>Edit </a></td>
   <td><a href="${ctp}/delete/${pp.proid}" class="btn btn-default"><span class="glyphicon glyphicon-trash"></span> Delete</a></td>
    </tr>
    
    
    </tbody>
   </c:forEach>     
</table>


                
            </div>
            
        </div>
	</div>
</div>


