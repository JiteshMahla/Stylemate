
<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
       <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
         <link rel="stylesheet" href="css/bootstrap.min.css">
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/stylelogin.css" />
        <link rel="stylesheet" href="css/style2.css" />
        
        
    </head>
    <body>
        <%@include file="ConnectPage.jsp" %>
       
         <%
        String error=""; 
        String error1="";
        String error2="";
        if(request.getParameter("btnLogin")!=null)
        {
        String email,pass;
        email=request.getParameter("tbEmail");
        pass=request.getParameter("tbPass");
           
        if((email==null || email=="")&&(pass==null || pass==""))
        {
            error="Invalid Email id and Password";
        }
        else if(email==null || email=="")
        {
                error1="Invalid Email id";
                
        }
        else if(pass==null || pass=="")
        {
                error2="Invalid password";
        }
        else
        {
        
        try
        {
        String qry="select * from login_details where email='"+email+"' and password='"+pass+"' and type=1";
        ResultSet rs= smt.executeQuery(qry);
        if(rs.next())
        {
            session.setAttribute("email", email);
            response.sendRedirect("adminaccount.jsp");
        }
        else
        {
            error="Sorry. Record not Found. ";
        }
        }
        catch(Exception ex)
        {
        out.println(ex);
        }
        }
        }

        %>


        <div class="row"> 
            <div class="col-md-1"></div>
            <div class="col-md-1">
                <p class="admin"><a href="Home.jsp" style="color: white">
                <span class="glyphicon glyphicon-menu-left"></span> Back
                    </a></p>
            </div>
            <div class="col-md-3"></div>
            
            <div class="col-md-2"><h1 style="color: white; font-weight: bold; font-size: 2.6em;">  Admin Login</h1></div>
            
            <div class="col-md-5"></div>
        </div>
        
        
        
       <div class="login-page">
        <div class="form">
    <form class="login-form">
      <input type="text" id="tbEmail" name="tbEmail" placeholder="Admin's email id"/>
      <div class="alert-login">
  <%=error1%>
</div>
      <input type="password" id="tbPass" name="tbPass" placeholder="Password"/>
      <div class="alert-login">
  <%=error2%>
</div>
      <input type="submit" class="btn-custom" name="btnLogin" value="Login">
      <div class="alert-login">
  <%=error%>
</div>
     
    </form>
  </div>
</div>
        
        
        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
  
    
    </body>
</html>
