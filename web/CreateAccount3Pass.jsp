<%-- 
    Document   : CreateAccount3Pass
    Created on : Jul 13, 2017, 11:18:03 PM
    Author     : Jitesh Mahla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%
             String pass = request.getParameter("pass");
             String ppass = "^(?=.*[0-9])(?=.*[a-z])(?=.*[A-Z])(?=.*[@#$%^&+=])(?=\\S+$).{8,}$";
        if(!pass.matches(ppass))
            {
                out.println("Invalid Password");
            }
        %>
    </body>
</html>
