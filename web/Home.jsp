

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    <body>
        <%@include file="header.jsp" %>
               
            
       
       <!-- Corousal Starts -->   
        
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
        <img src="images/Home1.jpg" alt="New York">
       
    </div>

      <div class="item">
      <img src="images/Home2.jpg" alt="Chicago">
       
    </div>
      <div class="item">
      <img class="height-responsive" src="images/Home3.jpg" alt="Chicago">
      
    </div>
      
    <div class="item">
        <img class="height-responsive" src="images/Home4.jpg" alt="Chicago">
      
    </div>

    <div class="item">
      <img class="height-responsive" src="images/Home5.jpg" alt="Los Angeles">
       
    </div>
      
      <div class="item">
      <img class="height-responsive" src="images/Home6.jpg" alt="Los Angeles">
       
    </div>
      <div class="item">
      <img class="height-responsive" src="images/Home7.jpg" alt="Los Angeles">
       
    </div>
      <div class="item">
      <img class="height-responsive"  src="images/Home8.jpg" alt="Los Angeles">
       
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
       
    
       <%@include file="footer.jsp" %>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
