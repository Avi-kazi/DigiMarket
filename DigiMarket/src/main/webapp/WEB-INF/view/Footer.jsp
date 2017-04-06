<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title></title>
<style>
  .footer{
  color:white;
  background-color:black;
  hight:120px;
  }
  </style>
</head>

<body>

 <div class="footer" data-animate="fadeInUp" >

            <div class="container">
                <div class="row">
                <div class="pull-left">
                        <h4>Pages</h4>

                        <ul>
                            <li><a href="${ctp}/about">About us</a>
                            </li>
							<c:if test="${(empty umsg)&&(empty amsg)&&(empty msg)}">
       <li><a href="${ctp}/contactus">Go to contact page</a></li>
       </c:if>
        <c:if test="${not empty umsg}">
        <li><a href="${ctp}/contactus">Go to contact page</a></li>
        </c:if>
        <c:if test="${not empty amsg}">
         <li><a href="${ctp}/contactuss">Go to contact page</a></li>
        </c:if>
                        </ul>
                        </div>
                        <div class="pull-right">
                        <h4>User section</h4>

                        <ul>
          <c:if test="${(empty msg)&&(empty amsg)&&(empty umsg)}">
         <li><a href="${ctp}/signup"><span></span> Sign Up</a></li>
         </c:if>
         <c:if test="${(empty amsg)&&(empty umsg)}">
       
         <li><a href="${ctp}/login1"><span></span> Login</a></li>
         </c:if>
           <c:if test="${(not empty amsg)||(not empty umsg)}">
        <li><a href="${ctp}/logout"><span></span> Logout</a></li>
        </c:if>
        
                        </ul>
                        </div>
                     

            
            <!-- /.container -->
        </div>
          <div id="copyright">
            <div class="container">
              
                    <p class="pull-right">© 2017 Digi Market.</p>
                <div class="col-md-6">
                    <p class="pull-right"> <a href="https://bootstrapious.com/e-commerce-templates"></a>
                        <!-- Not removing these links is part of the license conditions of the template. Thanks for understanding :) If you want to use the template without the attribution links, you can do so after supporting further themes development at https://bootstrapious.com/donate  -->
                    </p>
                </div>
            </div>
        </div>
        </div>
        </div>
      
        <!-- *** COPYRIGHT END *** -->


    
</body>
</html>