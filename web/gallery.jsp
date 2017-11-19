<%-- 
    Document   : gallery
    Created on : Jul 14, 2017, 5:28:47 PM
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
            
            <div class="row" style="background-color: black">
                 <h1 class="head1">GALLERY </h1>
            </div>
            <div class="content">
               
                
                
                <div class="row">
                    
                        
                        <div class="col-md-5">
                            <h1>Bridals</h1>
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
        <img src="images/bridal1.jpg" alt="New York">
       
    </div>

      <div class="item">
      <img src="images/bridal2.jpg" alt="Chicago">
       
    </div>
      <div class="item">
      <img class="height-responsive" src="images/bridal3.jpg" alt="Chicago">
      
    </div>
      
    <div class="item">
        <img class="height-responsive" src="images/bridal4.jpg" alt="Chicago">
      
    </div>

      <div class="item">
        <img class="height-responsive" src="images/bridal5.jpg" alt="Chicago">
      
    </div>
      <div class="item">
        <img class="height-responsive" src="images/bridal6.jpg" alt="Chicago">
      
    </div>
      <div class="item">
        <img class="height-responsive" src="images/bridal7.jpg" alt="Chicago">
      
    </div>
      <div class="item">
        <img class="height-responsive" src="images/bridal8.jpg" alt="Chicago">
      
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
                         
                    
              
                
               
                <div class="col-md-5">
                    
                        <h1>Hair</h1>
                        
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
        <img src="images/hair1.jpg" alt="New York">
       
    </div>

      <div class="item">
      <img src="images/hair2.jpg" alt="Chicago">
       
    </div>
      <div class="item">
      <img class="height-responsive" src="images/hair3.png" alt="Chicago">
      
    </div>
      
    <div class="item">
        <img class="height-responsive" src="images/hair4.jpg" alt="Chicago">
      
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
                
                
                 <div class="row">
                     <div class="col-md-5">
                        <h1>Party Make Up</h1>
                        
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
        <img src="images/mu1.jpg" alt="New York">
       
    </div>

      <div class="item">
      <img src="images/mu2.jpg" alt="Chicago">
       
    </div>
      <div class="item">
      <img class="height-responsive" src="images/mu3.jpg" alt="Chicago">
      
    </div>
      
    <div class="item">
        <img class="height-responsive" src="images/mu4.jpg" alt="Chicago">
      
    </div>

      <div class="item">
        <img class="height-responsive" src="images/mu5.jpg" alt="Chicago">
      
    </div>
      <div class="item">
        <img class="height-responsive" src="images/mu6.jpg" alt="Chicago">
      
    </div>
      <div class="item">
        <img class="height-responsive" src="images/mu7.jpg" alt="Chicago">
      
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
              
                     
                       <div class="col-md-5">
                        <h1>Staff</h1>
                        
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
        <img src="images/staff1.jpg" alt="New York">
       
    </div>

      <div class="item">
      <img src="images/staff2.jpg" alt="Chicago">
       
    </div>
      <div class="item">
      <img class="height-responsive" src="images/staff3.jpg" alt="Chicago">
      
    </div>
      
    <div class="item">
        <img class="height-responsive" src="images/staff4.jpg" alt="Chicago">
      
    </div>

      <div class="item">
        <img class="height-responsive" src="images/staff5.jpg" alt="Chicago">
      
    </div>
      <div class="item">
        <img class="height-responsive" src="images/staff6.jpg" alt="Chicago">
      
    </div>
      <div class="item">
        <img class="height-responsive" src="images/staff7.jpg" alt="Chicago">
      
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
        </div>
           <%@include file="footer.jsp" %>
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
