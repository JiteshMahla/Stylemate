<%-- 
    Document   : contact
    Created on : Nov 19, 2017, 12:52:51 PM
    Author     : DV
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>JSP Page</title>        
        <link href="css/bootstrap.min.css" rel="stylesheet">
        <link href="css/style.css" rel="stylesheet">
   
    </head>
    <body class="b1">
    <%@include file="header.jsp" %> 
    <div class="container-fluid"> 
    <h1 style="color: palevioletred"> Hello guests, </h1>
    <br>
    <h3>
        You can contact us using mobile at number 9876444515.
        <br>
        Or you can simply visit us at #2606, Sector-37 C, Chandigarh. We will be much glad to see you.
        <br>
        Always at your service,
        <br>
        Team Gorgeous Salon
    </h3>
    
    </div> 
    <br><br><br><br>
    
    <div class="col-lg-12" style="background-color: white">
                          <h2 class="head2"> </h2>
                                  <marquee  onmousedown="this.stop();" onmouseup="this.start();" scrollamount="15">                                    
                                      <img src="about/21.jpg" class="imgm">      
                                      <img src="about/22.jpg" class="imgm">  
                                      <img src="about/23.jpg" class="imgm">  
                                      <img src="about/24.jpg" class="imgm">  
                                      <img src="about/25.jpg" class="imgm">  
                                      <img src="about/26.jpg" class="imgm">  
                                  </marquee>
                              
                   </div>
    
    
    
    
    
       <%@include file="footer.jsp" %>
        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>

