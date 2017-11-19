<%-- 
    Document   : CreateAccount1Name
    Created on : Jul 13, 2017, 11:18:43 PM
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
            
            String name = request.getParameter("name");
            
            
            
            String pname = "^[a-zA-Z\\s]+$";
            
            
            if(!name.matches(pname))
            {
                out.println("Invalid Name");
            }
            
            
            %>
    </body>
</html>
