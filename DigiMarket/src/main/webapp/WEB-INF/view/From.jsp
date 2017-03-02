<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <form:errors path ="s.*"/>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<form:form action="def" method="post" commandName="p" enctype="multipart/form-data">




<p>
 Product Name: <input type="text" name="proname"/>
</p>
<p>
 Product Price: <input type="text" name="proprice"/>
</p>
<p>
 Product Category: <input type="text" name="procategory"/>
</p>
<p>
 Product picture: <input type="file" name="File"/>
</p>
<p>
<input type="submit" value="Submit">

</form:form>
</body>
</html>