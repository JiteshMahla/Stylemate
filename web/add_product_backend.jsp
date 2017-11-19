<%-- 
    Document   : add_product_backend
    Created on : Jul 4, 2017, 11:21:05 AM
    Author     : DV
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String id=request.getParameter("i");
        
            int l=id.length();
         
            if(l>0)
            {       
               Connection con=null;
               Statement smt;
               try{
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   
                   smt=con.createStatement();
                   String qry ="SELECT * FROM deals WHERE d_id='"+id+"'";
                   ResultSet rs=smt.executeQuery(qry);   
                   while(rs.next())
                   {
                       %>
                       ALREADY IN USE: <%= rs.getString(1)%>
                       <%
                   }
                                              
                   con.close();
               }
               catch(Exception ex)
               {
               out.println("ERROR :<BR><p>"+ex+"</p>");   
               }
            }
        %>
        
    </body>
</html>
