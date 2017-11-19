<%-- 
    Document   : user1
    Created on : Jul 20, 2017, 7:50:45 PM
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
                        <li class="li2 dropdown">
                             <a class="dropdown-toggle" data-toggle="dropdown" href="#">Products<span class="caret"></span></a>
                             <ul class="dropdown-menu">
                             <li><a href="user3.jsp?i=wash">Wash</a></li>
                             <li><a href="user4.jsp?i=cream">Mask/Cream</a></li>
                             </ul>
                        </li>
                    </ul>
                </div>
                <div class="col-md-10">
                        <h1>Offers</h1>
                        
                         <div id="myCarousel" class="carousel slide" data-ride="carousel">
  <!-- Indicators -->
  <ol class="carousel-indicators">
    <li data-target="#myCarousel" data-slide-to="0" class="active"></li>
    <li data-target="#myCarousel" data-slide-to="1"></li>
    <li data-target="#myCarousel" data-slide-to="2"></li>
     <li data-target="#myCarousel" data-slide-to="3"></li>
    <li data-target="#myCarousel" data-slide-to="4"></li>
  </ol>

  <!-- Wrapper for slides -->
  <div class="carousel-inner" role="listbox">
    <div class="item active">
        <img src="images/offer1.jpg" alt="New York">
       
    </div>

      <div class="item">
      <img src="images/offer2.jpg" alt="Chicago">
       
    </div>
      <div class="item">
      <img class="height-responsive" src="images/offer3.jpg" alt="Chicago">
      
    </div>
      
    <div class="item">
        <img class="height-responsive" src="images/offer4.jpg" alt="Chicago">
      
    </div>

      
      
  </div>

  <!-- Left and right controls -->
  <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
    <span class="glyphicon glyphicon-chevron-left" aria-hidden="true"></span>
    <span class="sr-only">Previous</span>
  </a>
  <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
    <span class="glyphicon glyphicon-chevron-right" aria-hidden="true"></span>
    <span class="sr-only">Next</span>
  </a>
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
