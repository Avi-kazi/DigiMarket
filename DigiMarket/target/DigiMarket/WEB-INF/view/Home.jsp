<%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
      <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<html lang="en">

<head>

    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    

    <title>Digi Market</title>


  <title>Bootstrap Case</title>
  <meta charset="utf-8">

 
  
<style>
  .carousel-inner > .item > img,
  .carousel-inner > .item > a > img {
      width: 100%;
      margin: auto;
  }

</style>
<%@include file="navbar2.jsp" %>
</head>
<body>
<h3>${amsg}</h3>

<div class="container">
  <br>
  <div id="myCarousel" class="carousel slide" data-ride="carousel">
    <!-- Indicators -->
    <ol class="carousel-indicators">
      <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
      <li data-target="#myCarousel" data-slide-to="1"></li>
      <li data-target="#myCarousel" data-slide-to="2"></li>
      <li data-target="#myCarousel" data-slide-to="3"></li>
    </ol>

    <!-- Wrapper for slides -->
    <div class="carousel-inner" role="listbox">

      <div class="item active">
        <img src="${ctp}/resources/img2/as1.png" alt="" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="${ctp}/resources/img2/as2.png" alt="" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
    
      <div class="item">
        <img src="${ctp}/resources/img2/as3.png" alt="" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>

      <div class="item">
        <img src="${ctp}/resources/img2/as4.png" alt="" width="345" height="345">
        <div class="carousel-caption">
          <h3></h3>
          <p></p>
        </div>
      </div>
  
    </div>

    <!-- Left and right controls -->
    <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
      <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
      <span class="sr-only">Previous</span>
    </a>
    <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
      <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
      <span class="sr-only">Next</span>
    </a>
  </div>
</div>

  
<div class="product-row">
  <div class="container">
  <h1>Products</h1>
  <div class="row">
        <div class="col-md-4">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="${ctp}/resources/img2/s.png" alt="Nature" style="width:auto; Style=height:auto">
          <div class="caption">
          </div>
        </a>
        <p>Mobiles</p>
      </div>
      <a href="${ctp}/result/Mobile/">
      <button class="btn btn-primary">View</button>
      </a>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="" target="_blank">
          <img src="${ctp}/resources/img2/l.jpg" alt="Nature" style="width:auto; Style=height:auto">
          <div class="caption">
          </div>
        </a>
        <p> Laptops</p>
      </div>
       <a href="${ctp}/result/lap/Laptop/">
      <button class="btn btn-primary">View</button>
      </a>
    </div>
    <div class="col-md-4">
      <div class="thumbnail">
        <a href="#" target="_blank">
          <img src="${ctp}/resources/img2/g.jpg" alt="Fjords" style="width:auto; Style=height:auto">
          <div class="caption">
          </div>
        </a>
         <p> Gaming consoles</p>
      </div>
       <a href="${ctp}/result/gaming/Gamingconsoles/">
      <button class="btn btn-primary">View</button>
      </a>
    </div>
  </div>
</div>


<br>
<%@include file="Footer.jsp" %>
</body>
</html>
