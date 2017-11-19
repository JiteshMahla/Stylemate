<%-- 
    Document   : user2
    Created on : Jul 20, 2017, 8:49:50 PM
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
    <body>
         <div class="container-fluid">
            <%@include file="header.jsp" %> 
            <div class="row">
                <div class="col-md-2">
                    <ul class="ul2">
                        <li class="li2"><a href="user2.jsp?i=hair">Hair</a></li>
                        <li class="li2"><a href="user2.jsp?i=facial">Facial</a></li>
                        <li class="li2"><a href="user2.jsp?i=body">Body</a></li>
                        <li class="li2"><a href="user2.jsp?i=make-up">Make-up</a></li>
                        <li class="li2"><a href="user2.jsp?i=wash">Wash</a></li>
                        <li class="li2"><a href="user2.jsp?i=cream">Mask/Cream</a></li>
                        
                    </ul>
                </div>
                <div class="col-md-10">
                    
                    <%           
               String cat=request.getParameter("i") ;
               Connection con=null;
               Statement smt;
               try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   
                   smt=con.createStatement();
                   String qry ="select * from deals WHERE category='"+cat+"'";
                   ResultSet rs=smt.executeQuery(qry);    
               
                   while(rs.next())
                   {
                       %>
                       
                       
                       <div class="row container-fluid">
  <div class="row">
    <div class="thumbnail  thumbnails">
        <div class="col-lg-3"><img src="images/<%= rs.getString(6)%>" alt="MISSING" class="img2"></div>
        <div class=" col-md-6">
            <p> <a href="user3.jsp?i=<%= rs.getString(1)%>">               
                <br><br>
                PRODUCT ID:           <%= rs.getString(1)%>                          
                <br>              
                PRODUCT NAME:          <%= rs.getString(2)%> 
                <br>
                 PRODUCT DESCRIPTION:           <%= rs.getString(4)%>                          
                <br>              
                PRODUCT PRICE:          <%= rs.getString(5)%> 
                <br>
                </a>
            </p>
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
            </div>
            
         </div>
            
            
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
