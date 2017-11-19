<%-- 
    Document   : CreateAccount2Email
    Created on : Jul 13, 2017, 11:18:23 PM
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
             String email = request.getParameter("email");
             String pemail = "^[_A-Za-z0-9-\\+]+(\\.[_A-Za-z0-9-]+)*@"
        + "[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
        if(!email.matches(pemail))
            {
                out.println("Invalid Email id");
            }
        %>
    </body>
</html>
