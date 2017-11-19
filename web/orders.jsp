<%-- 
    Document   : orders
    Created on : Nov 19, 2017, 6:39:34 PM
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
        <link href="admincss.css" rel="stylesheet">
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
        <%@include file="adminheader.jsp" %>
        <div style="height: 100%">
            <h1>Hello Admin!</h1>
        <br>
       
        <%           
               Connection con=null;
               Statement smt;
               try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   int i=1;
                   smt=con.createStatement();
                   String qry ="select * from orders";
                   ResultSet rs=smt.executeQuery(qry);    
                   
         %>
         
         <div class="container-fluid ">
         <table align="center" border="2" style="width: 60% ; alignment-adjust: central">
             <thead style="background-color: black; color: palevioletred; font-size: medium ;">
             <th>
                    #
             </th>
             <th>
                 CUSTOMER  EMAIL
             </th>
             <th>
                 PRODUCT 
             </th>
             <th>
                 QUANTITY
             </th>
             </thead>
               <tbody>
                   <%
                   while(rs.next())
                   {   
                       %>
                       <
                       <tr>
                           <td>
                               <%=i %>
                           </td>
                           <td>
                               <%=rs.getString(1) %>
                           </td>
                           <%
                           
                   Statement  smt1=con.createStatement();
                   String qry1 ="select * from deals where d_id ='"+ rs.getString(2) +"'";
                   ResultSet rs1=smt1.executeQuery(qry1); 
                   rs1.next();
                           %>
                           <td>
                               <img src="images/<%= rs1.getString(6)%>" class="img2">
                           </td>
                           <td>
                               <%=rs.getString(3) %>
                           </td>
                       </tr>
                           
                       
                       <%
                       i=i+1;
                     }                                             
                   con.close();
               }
               catch(Exception ex)
               {
               out.println("ERROR :<BR><p>"+ex+"</p>");   
               }
           
        %>
        </tbody>
        </table>
        
        </div>
        </div>
            <%@include file="footer.jsp" %>
 
    </body>
</html>
