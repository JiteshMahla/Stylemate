<%-- 
    Document   : ConnectPage
    Created on : Jun 29, 2017, 10:47:46 AM
    Author     : Jitesh Mahla
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
         Connection con = null;
            Statement smt = null;
            try{
                Class.forName("com.mysql.jdbc.Driver");
                con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                smt = con.createStatement();     
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
                
        %>
    </body>
</html>
