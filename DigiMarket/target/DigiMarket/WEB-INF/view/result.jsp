<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

 
<h2>Product Details</h2>
   <table>
   <c:forEach items="${pro}" var="pp">
   <tr>  
   <td>${pp.proid}</td>  
   <td>${pp.proname}</td>  
   <td>${pp.proprice}</td>  
     
    <td><a href="${ctp}/edit/${pp.proid}">Edit</a></td>  
   <td><a href="prodelet/${pp.proid}">Delete</a></td> 
   </tr>  
    </c:forEach>
</table>  

</body>
</html>