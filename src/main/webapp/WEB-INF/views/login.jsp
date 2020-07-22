<%--<%@ page contentType="text/html;charset=UTF-8" language="java" pageEncoding="UTF-8" %>--%>
<%--<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>--%>
<%--<html>--%>
<%--<head>--%>
<%--    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">--%>
<%--    <title>User Login</title>--%>
<%--</head>--%>
<%--<body>--%>
<%--<h2>Login:</h2>--%>
<%--<form action="success" method="post">--%>
<%--    <pre>--%>
<%--     E-mail/Username: <input type="text" name="email"> &lt;%&ndash;email=field from the model /entity    &ndash;%&gt;--%>
<%--&lt;%&ndash;        <form:errors path="email" />&ndash;%&gt;--%>
<%--     Password: <input type="text" name="password"> &lt;%&ndash;password=field from the user model /entity    &ndash;%&gt;--%>
<%--    <input type="submit" value="login"/>--%>
<%--        ${msg}--%>
<%--    </pre>--%>
<%--</form>--%>

<%--&lt;%&ndash;<div align="center">&ndash;%&gt;--%>
<%--&lt;%&ndash;    <h2>Spring MVC Form Validation Demo - Login Form</h2>&ndash;%&gt;--%>
<%--&lt;%&ndash;    <table border="0" width="90%">&ndash;%&gt;--%>
<%--&lt;%&ndash;        <form:form action="login" commandName="userForm">&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td align="left" width="20%">Email: </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td align="left" width="40%"><form:input path="email" size="30"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td align="left"><form:errors path="email" cssClass="error"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td>Password: </td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><form:password path="password" size="30"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td><form:errors path="password" cssClass="error"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;            <tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td align="center"><input type="submit" value="Login"/></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;                <td></td>&ndash;%&gt;--%>
<%--&lt;%&ndash;            </tr>&ndash;%&gt;--%>
<%--&lt;%&ndash;        </form:form>&ndash;%&gt;--%>
<%--&lt;%&ndash;    </table>&ndash;%&gt;--%>
<%--&lt;%&ndash;</div>&ndash;%&gt;--%>
<%--</body>--%>
<%--</html>--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ page isELIgnored="false" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <title>Login</title>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
    <style type="text/css">
        .errormsg {
            color: red;
        }
    </style>
</head>
<body>
<div class="container">
    <h2 align="center" class="text-primary">Login Page</h2>
    <hr />
    <div>&nbsp;</div>

    <form:form action="/success" method="POST" modelAttribute="userform">
        <div class="form-group">
            <label>Email:</label><form:input path="email" size="30" cssClass="form-control" placeholder="Enter email" />
            <small><form:errors path="email" cssClass="errormsg" /></small>
        </div>
        <div class="form-group">
            <label>Password:</label><form:password path="password" size="30" cssClass="form-control" placeholder="Enter password" />
            <small><form:errors path="password" cssClass="errormsg" /></small>
        </div>
        <div class="form-group">
            <button type="submit" class="btn btn-primary">Validate</button>
            <div class="alert" align="center" style="color: red">
                    ${msg}</div>
        </div>
    </form:form>
</div>
</body>
</html>
