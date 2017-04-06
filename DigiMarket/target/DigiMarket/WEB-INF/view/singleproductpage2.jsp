
<!DOCTYPE html>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<c:set var="ctp" value="${pageContext.request.contextPath}" />
<html lang="en">
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<meta name="viewport" content="width=device-width, initial-scale=1">
<!--Favicons -->
<link rel="shortcut icon" href="images/favico.ico">

<title>Digi Market</title>




</head>
<body>
	<%@include file="navbar2.jsp"%>

	<h3>${b4cart}</h3>
	<h3>${mssg}</h3>



	<div class="container-fluid">

		<div class="content-wrapper">

			<div class="item-container">

				<div class="container">


					<div class="row featurette">

						<div class="col-md-5">
							<div>
								<a id="item-1" class="service1-item"> <img alt=""
									src="${ctp}/resources/img/product/${p.proid}.png" alt="xyz"
									height="400" width="350" class="img thumbnail"
									class="img-responsive" style="width:auto" Style="height:auto"></img>

								</a>
							</div>



							<div class="btn-group wishlist ">

								</center>
							</div>

						</div>


						<div class="col-md-5 ">
							<div style="float: right">
								<h2>Product Name:</h2>
								<h2 class="featurette-heading"
									style="color: black; font-weight: bold;">
									<i><b>${p.proname}</b></i><span class="text-muted"> </span>
								</h2>
								<h2>Product Details: </h2>
								<p class="lead" style="color: solid balck; font-size: 20px">${p.prodetails}</p>
                                
                                <h2>Product Price: </h2>
								<p class="lead" style="color: black; font-weight: normal">&#8377 ${p.proprice}</p>
								<hr>
                             	<h2>Product Quantity:</h2>
								<form id="addToCart" action="${ctp}/myCart/add/${p.proid}"
									method="post">
									<select name="quantity">
										<option value="1">1</option>
										<option value="2">2</option>
										<option value="3">3</option>
									</select> 
									<button type="submit" form="addToCart" 
										class="btn btn-primary" style="font-size: 14px">Add to Cart </button>
										<a href="${ctp}/view2/${p.proid}" class="btn btn-info">Buy Now</a>
										</form>
										
										
									
										
									<!-- <button type="button" float: right; class="btn btn-danger"<a href="cart_checkout"/></button>
										style="font-size: 14px" style="padding-left:30px">Buy Now</button> -->
								
							</div>
						</div>
					</div>
				</div>

			</div>
		</div>
	</div>
	<br>
	<br>
	<br>
	<%@include file="Footer.jsp"%>
</body>


</html>
