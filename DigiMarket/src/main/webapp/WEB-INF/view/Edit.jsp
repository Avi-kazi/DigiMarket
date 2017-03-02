 <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
    <form:errors path ="s.*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="${ctp}/edit" method="post" modelAttribute="p" enctype="multipart/form-data">
<p>
<input type= "hidden" name="proid"  value="${p.proid}"/>
</p>
<p>
 Product Name: <input type="text" name="proname" value="${p.proname}"/>
</p>
<p>
 Product Price: <input type="text" name="proprice" value="${p.proprice}"/>
</p>
<p>
 Product Category: <input type="text" name="proprice" value="${p.procategory}"/>
</p>
<p>
File to upload<input type="file" name="File" value="${ctp}/resources/img/product/${pp.proid}.png" height="100px" width="100px"/>
</p>
<input type="submit" value="Submit">

</form:form>
</body>
</html>