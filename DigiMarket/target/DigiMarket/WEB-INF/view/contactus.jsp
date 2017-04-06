<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Contact us</title>

<style>

.h1 small {
font-size: 24px;
}
</style>
<%@include file="navbar2.jsp" %>
</head>

<!-- user part -->
<h3>${bflg}</h3>
<h3>${aflg}</h3>
<c:if test="${(not empty umsg)&&(empty msg)}">
 </c:if>
 <form:form class="form-horizontal" action="${ctp}/complain"  method="post" modelAttribute="co">
<body>
<div class="jumbotron jumbotron-sm">
    <div class="container">
        <div class="row">
            <div class="col-sm-12 col-lg-12">
                <h1 class="h1">
                    Contact us <small>Feel free to contact us</small></h1>
            </div>
        </div>
    </div>
</div>
 
<div class="container">
    <div class="row">
    
   
        <div class="col-md-8">
         
            <div class=" well -sm">
                <div class="row">
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                Name</label>
                            <input type="text" class="form-control" id="fullname" name="fullname" placeholder="Enter name" required="required" />
                        </div>
                            <div class="input-group">
                                  <input type="hidden" class="form-control" id="email" name="email" placeholder="Enter email"  />
                                </div>

                       <div class="form-group">
                            <label for="name">
                                Phone:</label>
                            <input type="text" class="form-control" id="phno" name="phno" placeholder="Enter name" required="required" />
                        </div>
                         <div class="form-group">
                            <label for="name">
                                Company:</label>
                            <input type="text" class="form-control" id="company" name="company" placeholder="Enter name" required="required" />
                        </div>
                         <div class="form-group">
                            <label for="name">
                                Subject:</label>
                            <input type="text" class="form-control" id="subject" name="subject" placeholder="Enter name" required="required" />
                        </div>
                       
                        
                    </div>
                     
                    <div class="col-md-6">
                        <div class="form-group">
                            <label for="name">
                                FeedBack:</label>
                            <textarea name="message" id="message" class="form-control" rows="9" cols="25" required="required"
                                placeholder="Message"></textarea>
                        </div>
                    </div>
                    
                   
                    <div class="col-md-12">
                        <button type="submit" value="Submit" class="btn btn-primary pull-right" id="btnContactUs">
                            Send Message</button>
                    </div>

                      
                </div>   
                  
                   </div>         
              </div>
         
        <div class="col-md-4">
            <form>
            <legend><span class="glyphicon glyphicon-globe"></span> Our office</legend>
            <address>
                <strong>Digi Market</strong><br>
                Address: P251, 1st & 2nd Floor, CIT Road, Scheme 6M, Kadapara, Phool Bagan, <br>
                Kankurgachi, Kolkata, West Bengal 700054<br>
                <abbr title="Phone">
                    P:</abbr>
                 1800 102 6448
            </address>
            <address>
                <strong>Full Name</strong><br>
                <a href="mailto:#">Digimarket@gmail.com</a>
            </address>
          <c:if test="${not empty umsg }">
          <form:form class="form-horizontal" action="${ctp}/complain"  method="post" modelAttribute="co">
            <div class="col-md-6">
                        <div class="form-group">
                         
                            <label for="name">
                                Your Feedback:</label>
                            <p><font size="4"><b> ${co.message}</b></font></</p>
                                 
                        </div>
                    </div>
                    </form:form>
                 </c:if>
            </form>
        </div>
       
    </div>
</div>

<%@include file="Footer.jsp" %>
</body>
                  </form:form> 
                 
</html>