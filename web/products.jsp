<%-- 
    Document   : products
    Created on : Jul 12, 2017, 7:57:09 PM
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
    <%
            String email="";
            if(session.getAttribute("email")!=null)
            {
                email = session.getAttribute("email").toString();
                %>
                <%@include file="header2.jsp" %>
                <%
            }
            else
            {
                %>
                
                <%@include file="header.jsp" %>
                <%
            }
            
            %> 
        
        <div class="container">
            <BR>
        <%           
               Connection con=null;
               Statement smt;
               try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   
                   smt=con.createStatement();
                   String qry ="select * from deals WHERE d_id LIKE 'd_%'";
                   ResultSet rs=smt.executeQuery(qry);    
                   
         %>         
         <div class="row">
             
             <div class="col-md-12" style="background-color: black; color: white">
                       <h1 align="center">
                           DEALS
                       </h1>
                   </div>
         </div>
                   
                   <%
                   while(rs.next())
                   {
                       %>
                       
                       
                       <div class="row container-fluid">
  <div class="row">
    <div class="thumbnail  thumbnails">
        <div class="col-lg-3"><img src="images/<%= rs.getString(6)%>" alt="MISSING" class="img2"></div>
        <div class="caption col-md-6">
            <p>                
                <br><br>
                PRODUCT ID:           <%= rs.getString(1)%>                          
                <br>              
                PRODUCT NAME:          <%= rs.getString(2)%> 
                <br>
                 PRODUCT DESCRIPTION:           <%= rs.getString(4)%>                          
                <br>              
                PRODUCT PRICE:          <%= rs.getString(5)%> 
            </p>
        </div>
    </div>
  </div>
           
                   
               <%
                   }
               String qry1 ="select * from deals WHERE d_id LIKE 'p_%'";
                   ResultSet rs1=smt.executeQuery(qry1);    
                   
                   %>
                   <div class="col-md-12" style="background-color: black; color: white">
                       <h1 align="center">
                           PRODUCTS
                       </h1>
                   </div>
                   <%
                   while(rs1.next())
                   {
                       %>
                       
                       
                       <div class="row container-fluid">
  <div class="row">
    <div class="thumbnail  thumbnails">
        <div class="col-lg-3"><img src="images/<%= rs1.getString(6)%>" alt="MISSING" class="img2"></div>
        <div class="caption col-md-6">
            <p>                
                PRODUCT ID:           <%= rs1.getString(1)%>                          
                <br>              
                PRODUCT NAME:          <%= rs1.getString(2)%> 
                <br>
                 PRODUCT DESCRIPTION:           <%= rs1.getString(4)%>                          
                <br>              
                PRODUCT PRICE:          <%= rs1.getString(5)%> 
            </p>
        </div>
    </div>
  </div>
 
                       </div>
                       <%
                       
                }                                             
                   con.close();
               }
               catch(Exception ex)
               {
               out.println("ERROR :<BR><p>"+ex+"</p>");   
               }
           
        %>
                       </div>
        </div>
                          <%@include file="footer.jsp" %>
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>

