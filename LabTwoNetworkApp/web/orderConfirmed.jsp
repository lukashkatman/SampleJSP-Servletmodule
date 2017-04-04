<%-- 
    Document   : orderConfirmed
    Created on : 2017-apr-04, 18:07:43
    Author     : Shandie
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
     <h1>Order confirmed</h1>
        
            OrderedProduct = <b><%= request.getSession().getAttribute("Product") %></b> <br>
            Weight = <b><%= request.getSession().getAttribute("TotalWeight") %></b> Kg <br>
            Percentage = <b><%= request.getSession().getAttribute("ProteinPercentage") %></b> % <br>
            <br>
            Customer name = <b><%= request.getAttribute("customerName") %></b> <br>
            Customer phone number = <b><%= request.getAttribute("customerPhoneNumber") %></b> <br>

    </body>
</html>