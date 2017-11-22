<%-- 
    Document   : adminheader
    Created on : Jul 5, 2017, 12:01:30 PM
    Author     : DV
--%>
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
      
        
          <div class="row container-main">
            
                <div class="row">
            
                <div class="col-md-4">
                    <img src="images/logo3.png" height="100" width="130" class="img-circle person" alt="Random Name">
                </div>
                <div class="col-md-8">
                    <div class="row container-head1">
                        
                        <div class="col-md-2 align-right">
                             <img src="images/clock5.png" height="40" width="40" class="img-circle person" alt="Random Name"> 
                        </div>
                            <div class="col-md-6">
                               
                             <p> Monday - Saturday: 10:00 - 20:00<br>
                        Sunday : 11:00 - 19:00 </p>
                    
                        </div>  
                        <div class="col-md-2">
                                <a href="#" class="btn btn-default btn-sm al-btn-right" role="button" name="btnBook">
      Book Online </a>
                        </div>   
                        <div class="col-md-2">
                          <a href="https://www.google.co.in/maps/dir//2606,+Vidya+Path,+Sector+37+C,+Sector+37,+Chandigarh,+160036/@30.7348879,76.7468137,17z/data=!4m8!4m7!1m0!1m5!1m1!1s0x390fedc314d19097:0xaf23d3f0faa7d342!2m2!1d76.746855!2d30.734745" class="btn btn-default btn-sm al-btn-right" role="button" name="btnChangePass">
                          <span class="glyphicon glyphicon-map-marker"></span></a>
                 </div>
              
                     </div>
            </div>
                </div>
            <div class="nav-pad">
                
            <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      
    </div>
    <nav class="navbar navbar-inverse">
            <div class="container-fluid">
                 
               <ul class="nav navbar-nav">
                 <li><a href="adminaccount.jsp">HOME</a></li>
                 
                 <li class="dropdown">
                 <a class="dropdown-toggle" data-toggle="dropdown" href="products_admin.jsp">DEALS
                 <span class="caret"></span></a>
                 <ul class="dropdown-menu">
                     <li><a href="products_admin.jsp">View/Delete/Update</a></li>
                 </ul>                     
                 </li>
                 
                    <li><a href="orders.jsp"><span class="glyphicon glyphicon-tasks"></span> Orders </a></li>
                    <li><a href="adminbook.jsp"><span class="glyphicon glyphicon-tasks"></span> Appointemnts </a></li>
                    <li><a href="LogoutPage.jsp"><span class="glyphicon glyphicon-log-out"></span> Logout</a></li>
               </ul>
            </div>
        </nav>
  </div>
</nav>
            </div>
            </div>
               
        
        
        
        
    <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>    
        
        
        
    </body>
</html>

