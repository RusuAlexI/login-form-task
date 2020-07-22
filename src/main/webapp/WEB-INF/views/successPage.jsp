<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <title>Success Page</title>
</head>
<body>
<div class="container">
    <h2 align="center" class="text-primary">Login Successful!</h2>
    <hr/>
    <div>&nbsp;</div>


    <form:form action="/">
        <div class="form-group" align="center">
            <button type="submit" class="btn btn-primary">Log Out</button>
        </div>
    </form:form>
</div>
</body>
</html>
