<%-- 
    Document   : LogoutPage
    Created on : Jun 29, 2017, 1:09:25 PM
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
        session.removeAttribute("email");
        response.sendRedirect("Home.jsp");
        %>
    </body>
</html>
