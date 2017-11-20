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
                   String qry ="select * from book_online";
                   ResultSet rs=smt.executeQuery(qry);    
                   
         %>
         
         <div class="container-fluid ">
         <table align="center" border="2" style="width: 60% ; alignment-adjust: central">
             <thead style="background-color: black; color: palevioletred; font-size: medium ;">
             <th>
                    #
             </th>
             <th>
                 CUSTOMER  NAME
             </th>
             <th>
                 CUSTOMER  EMAIL
             </th>
             <th>
                 DATE
             </th>
             <th>
                 TIME
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
                           <td>
                               <%=rs.getString(2) %>
                           </td>
                           <td>
                               <%=rs.getString(3) %>
                           </td>
                           <td>
                               <%=rs.getString(4) %>
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
