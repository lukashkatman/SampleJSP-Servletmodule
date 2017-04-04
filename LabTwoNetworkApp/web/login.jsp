<%-- 
    Document   : login
    Created on : 2017-apr-04, 16:48:04
    Author     : Shandie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Login Page</title>
    </head>
    <body>
        <form action ="LoginServlet" method ="get">
        <h1>Enter your login credentials</h1>
        Username : <input type="text" name ="username"><br>
        Password : <input type ="password" name ="password"><br>
        <input type="submit" name="button" value="login">
        </form>
        <%
            if (null!= request.getAttribute("errorMessage")){
                out.println(request.getAttribute("errorMessage"));
            }
        %>
    </body>
</html>
