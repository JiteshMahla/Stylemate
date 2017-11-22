<%-- 
    Document   : MembershipAndOffer
    Created on : Jul 14, 2017, 4:30:29 PM
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
      
        <link rel="stylesheet" href="css/style.css">
       
    </head>
    <body>
     
            
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
               <div class="container-fluid">
            <div class="row" style="background-color: black">
                 <h1 class="head1">Membership And Offers</h1>
            </div>
            <div class="content">
                <div class="row">
                    <div class="col-md-12">
                        <h1>Membership</h1>
                        <p>
                            Welcome to Gorgeous Looks privilege memberships & packages , the ultimate salon & spa experience made even more special Gorgeous Looks name has always been synonymous with the highest levels of luxury and customer service.
                            Our reputation as the India’s number one salon & spa has been founded on what we like to call “ EXPERIENCE UNLIMITED”. As the privileged elite of the society and loyal clients , we want you get More out of the money you spend with us.
                            You have the choice of annual Memberships and short term packages.
                            
                        </p>
                    </div>
                </div>
              
                <div class="row">
                    <div class="col-md-12">
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
        </div>
        
        
        
        
        
        
        
        
        
        
        
        
         <%@include file="footer.jsp" %>
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
