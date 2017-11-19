<%-- 
    Document   : aboutUs
    Created on : Jul 11, 2017, 3:25:27 PM
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
                 <h1 class="head1">About Us </h1>
            </div>
            <div class="content">
               
                  <div class="row">
                      <div class="col-lg-12">
                          <h2 class="head2">Who are we??</h2>
                       
                       <p>
                       Gorgeous Looks Salon is a one stop shop destination for premier hair, skin, body, hand and feet services.
                       Started in the year 2010 in the city beautiful Chandigarh with the main motive to provide top notch services to the clients of all walks of life.
                       Since its inception in the year 2010, Gorgeous Looks Salon is well known for its high quality service standards and practicing safe salon practices in line with European standards.
                       Within a short span of time, Gorgeous Looks became an ideal stop for well healed and glitterati of the region.
                       <br>
                       <br>
                       Gorgeous Looks has a huge clientele across the region with servicing approximately 7500 clients per year.
                       Gorgeous Looks- Chandigarh is the talk of the town for its architectural excellence, aesthetic design and legendary customer service. The service providers are committed towards giving their best with the highest standard of service in an unpretentious environment.
                       They are distinctively well mannered and supremely talented to exceed the client expectations. 

                       </p>                         
                      </div>
                       
                  </div>
                
                      <div class="row">
                          <div class="col-lg-6">
                          <h2 class="head2">Commitment to society </h2>
                          <p>
                              We are committed to giving back and being good stewards in our community through charity and mentoring young people.
                              We work with schools and local groups such as The Service Board, Locks of Love, Dress for Success and other well deserving charitable organizations.
                          </p>
                          </div>
                         <div class="col-lg-6">
                          <h2 class="head2">Why choose us??</h2>
                          <p>
                              Bowie Salon and Spa offers a full range of services for its clients, including haircuts, hair color, hair styling, blowouts, hair extensions, facials, waxing and nails. 
                              <br>
                              We believe in <b><i>'perfection with satisfaction'</i></b> and this moto of ours is a promise to all clients, of all walks. 
                              
                          </p>
                          </div> 
                      </div>
                      
                   
                
                
                  
                <div class="col-lg-12" style="background-color: white">
                          <h2 class="head2">Our staff </h2>
                                  <marquee  onmousedown="this.stop();" onmouseup="this.start();" scrollamount="15">                                    
                                      <img src="about/21.jpg" class="imgm">      
                                      <img src="about/22.jpg" class="imgm">  
                                      <img src="about/23.jpg" class="imgm">  
                                      <img src="about/24.jpg" class="imgm">  
                                      <img src="about/25.jpg" class="imgm">  
                                      <img src="about/26.jpg" class="imgm">  
                                  </marquee>
                              
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
