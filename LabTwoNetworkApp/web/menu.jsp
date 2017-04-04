<%-- 
    Document   : menu
    Created on : 2017-apr-04, 16:59:53
    Author     : Lokesh
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Food processing Page</title>
    </head>
    <body>
        <form action ="MenuServlet" method="get">
             <h1>Choose the product name</h1>
             <input list ="products" name ="product">
             <datalist id="products">
                 <option value="MuscleBooster">
                 <option value="CalorieKiller">
                 <option value="FatBurner">
             </datalist>
        
             <h1>Choose the ingredeint</h1>
       <select name="ing1">
           <option>Milk</option>
           <option>Egg</option>   
           <option>Beans</option>
           
       </select>
    <%-- <input type="submit" name="submit" value="Select Ingredeint"/> --%>
    
     <h1>Enter weight of this ingredient in kilos</h1>
            <input type="text" name="kilo1"><br>
            <h1>Enter nutrition content in percentage</h1>
            <input type="text" name="percentage1"><br>
            <h1>Choose the second ingredient</h1>
            <select name="ing2">
                    <option>Milk</option>
                    <option>Egg</option>   
                    <option>Beans</option>
                </select>
            
            <h1>Enter weight of this ingredients in kilo</h1>
            <input type="text" name="kilo2"><br>
             <h1>Enter nutrition content in percentage</h1>
            <input type="text" name="percentage2"><br>
            
            <input type="submit" name="button" value="send">
    </form>
    <%-- To display selected value from dropdown list. --%>
     <%-- 
                String s=request.getParameter("clr");
                if (s !=null)
                {
                    out.println("Selected ingredient is : "+s);
                }
      --%>
             
        
       
    </body>
</html>
<%--
<h1> Input first ingredient </h1>
             <input list="ingredient" name="ingredient1">
             <datalist id="ingredient1">
                 <option value="milk">
                 <option value ="egg">
                 <option value="beans">
                 </datalist> --%>