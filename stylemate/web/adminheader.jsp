<%-- 
    Document   : adminheader
    Created on : Jul 5, 2017, 12:01:30 PM
    Author     : DV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
         <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>JSP Page</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet">
              
    </head>
    <body>
        <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                 <div class="navbar-header">
                      <a class="navbar-brand" href="#">StyleMate</a>
                 </div>
               <ul class="nav navbar-nav">
                 <li><a href="adminaccount.jsp">Home</a></li>
                 
                 <li class="dropdown">
                 <a class="dropdown-toggle" data-toggle="dropdown" href="products_admin.jsp">Products and Deals
                 <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                     <li><a href="add_product.jsp">Add Product/Deal</a></li>
                     <li><a href="products_admin.jsp">View/Delete/Update</a></li>
                 </ul>                     
                 </li>
                 
                    <li><a href="#">Orders</a></li>
                    <li><a href="admin_employees">Employees</a></li>
                    <li><a href="#">Account</a></li>
               </ul>
            </div>
        </nav>
        
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
