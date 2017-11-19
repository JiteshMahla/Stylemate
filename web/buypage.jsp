<%-- 
    Document   : buypage
    Created on : Nov 19, 2017, 3:01:00 PM
    Author     : DV
--%>


<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <title>JSP Page</title>
    </head>
    <body>
         <%
            String email="";
            if(session.getAttribute("email")!=null)
            {
                email = session.getAttribute("email").toString(); 
            }
            else
            {
                response.sendRedirect("LoginPage.jsp");
            }
            
            %>
            
         <%@include file="header2.jsp" %> 
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
            
             String deal_id, user;
             int qty;
 

                deal_id=request.getParameter("i");
                user=email;
                qty=Integer.parseInt(request.getParameter("tbQty"));
         
            
               Connection con=null;
               Statement smt=null;
               
               try
               {
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   smt=con.createStatement();
                   String qry ="insert into orders values('"+user+"','"+deal_id+"',"+qty+")" ;
                   int r=smt.executeUpdate(qry);
                   if(r>0)
                   {
                       %>
                       
                       <div  class="container-fluid" style="height: 400px">
                           <h3 style="color: palevioletred">
                               Hey customer!<br><br>
                               Your deal/product has been booked at the best price. You can collect your product or can redeem your deal as soon as you
                               get the confirmation mail. Or you can directly call for booking an hour prior to time you want to avail your service.
                               <br><br>
                               Happy Day!
                           </h3>
                           
                       </div>
                       
                       
                       
                       
                       <%
                               
                   }
                   con.close();
               }
               
               catch(Exception ex)
                       {
                           out.println(ex);
                       }
          
          
            %>
         
                </div>
        </div>
         <%@include file="footer.jsp" %> 
    </body>
</html>
