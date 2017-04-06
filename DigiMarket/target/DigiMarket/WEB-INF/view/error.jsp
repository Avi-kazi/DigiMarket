<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
      <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
        <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>LoginError</title>

</head>
<body>
  <h1>${errorMessage }</h1>
<h1> ${errorMssage}</h1>
<a href="${ctp}/logout" class="btn btn-md btn-success" role="button" >Back To Home</a>
</body>
</html>