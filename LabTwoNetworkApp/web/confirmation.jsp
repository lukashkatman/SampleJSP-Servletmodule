<%-- 
    Document   : confirmation
    Created on : 2017-apr-04, 17:41:09
    Author     : Lokesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Please confirm your Food for processing</h1>
        
        Product = <b><%= request.getSession().getAttribute("Product") %></b> <br>
        
        Ingredients = <b><%= request.getAttribute("Ingredients") %></b> <br>
        
        <br>
        Total Weight = <b><%= request.getSession().getAttribute("TotalWeight") %></b> KG <br>
        Total Percentage = <b><%= request.getSession().getAttribute("ProteinPercentage") %></b> % <br>
        
        <h1>Enter your details</h1>
        <form action="ConfirmationServlet" method="get">
            Name <input type="text" name="customerName" ><br>
            Phone number <input type="text" name="customerPhoneNumber" ><br>
            
            <input type="submit" name="button" value="confirm">
        </form>
    </body>
</html>
