<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib  uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
     <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <form:errors path ="s.*"/>
    <c:set var="ctp" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>

<style >
.footer {
colour:white;
    background-color:black;
    height: 120px;
}
</style>
</head>
<body>
<%@include file="navbar2.jsp" %>
<td style="vertical-align: middle;">
    <h2 style="text-align: center;"><em>${amsg}</em></h2>
</td>
<td style="vertical-align: middle;">
    <h3 style="text-align: center;" >Go to product inventory</h3>
</td>
<center><a href="${ctp}/admin" class="btn btn-primary  rel="prettyPhoto"><span class="glyphicon glyphicon-pencil"></span> Add new product</a></center>

<%@include file="Footer.jsp" %>
</body>
</html>
