<%-- 
    Document   : CreateAccount
    Created on : Jun 29, 2017, 11:08:53 AM
    Author     : Jitesh Mahla
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
        <link rel="stylesheet" href="css/style.css" />
        <link rel="stylesheet" href="css/style2.css" />
         <link rel="stylesheet" href="css/stylelogin.css" />
         
         <script type="text/javascript">
            
            function ajaxname(str)
            {
                var rdiv = document.getElementById("resultName");
                var objrequest = new XMLHttpRequest;
                
                objrequest.onreadystatechange = function()
                {
                    if(objrequest.readyState===4 && objrequest.status===200)
                    {
                        rdiv.innerHTML = objrequest.responseText;
                    }
                       
                }
                    objrequest.open("GET","CreateAccount1Name.jsp?name="+str+"",true);
                    objrequest.send();    
            }
            function ajaxemail(str)
            {
                var rdiv = document.getElementById("resultEmail");
                var objrequest = new XMLHttpRequest;
                
                objrequest.onreadystatechange = function()
                {
                    if(objrequest.readyState===4 && objrequest.status===200)
                    {
                        rdiv.innerHTML = objrequest.responseText;
                    }
                       
                }
                    objrequest.open("GET","CreateAccount2Email.jsp?email="+str+"",true);
                    objrequest.send();    
            }
            function ajaxpass(str)
            {
                var rdiv = document.getElementById("resultPass");
                var objrequest = new XMLHttpRequest;
                
                objrequest.onreadystatechange = function()
                {
                    if(objrequest.readyState===4 && objrequest.status===200)
                    {
                        rdiv.innerHTML = objrequest.responseText;
                    }
                       
                }
                    objrequest.open("GET","CreateAccount3Pass.jsp?pass="+str+"",true);
                    objrequest.send();    
            }
            
        </script>
    </head>
    <body>
        <%@include file="ConnectPage.jsp" %>
        
         <%
         int flag=0;
          String result="",error="";
        if(request.getParameter("btnRegister")!=null)
        {
            
            String email, name, pass;
            int type;
            
            email = request.getParameter("tbEmail");
            pass = request.getParameter("tbPass");
            name = request.getParameter("tbUsername");
            
            type = 0;
            
            if(name=="" && pass=="" && email=="")
            {
                error = "Please fill the Details.";   
            }
            else
            {
            
            try{
                String qry = "insert into login_details values('"+email+"','"+name+"','"+pass+"','"+type+"')";
                int r=smt.executeUpdate(qry);
                if(r>0)
                {
                    flag=1;
                }
                con.close();
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            
            }
        }
        %>
        
        <div class="login-page">
        <div class="form">
    <form>
      <input type="text" name="tbUsername" onkeyup="ajaxname(this.value)" placeholder="Username"/>
      <div id="resultName">
                
            </div>
      
      <input type="text" name="tbEmail" onkeyup="ajaxemail(this.value)" placeholder="Email address"/>
      <div id="resultEmail">
                
            </div>
      
      <input type="password" name="tbPass" onkeyup="ajaxpass(this.value)"  placeholder="Password"/><div class="hint-popup">
  <a href="#" data-toggle="popover" data-trigger="hover" data-content="Password must contain atleast one digit,
     a lower case letter, an upper case letter, a special character, no whitespaces and must be of atleast 8 characters.">Hint?</a>
</div>
      
      

<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>

      <div id="resultPass">
                
            </div>
      
      <input type="submit" class="btn-custom" name="btnRegister" value="Register">
      <div class="alert-login">
  <%=error%>
</div>
      <p class="message">Already registered? <a href="LoginPage.jsp">Sign In</a></p>
    </form>
  </div>
</div>
  <%
    if(flag==1)
    {
        %>
        <div class="alert-create">
            Account Created.
            Welcome to  Stylemate.<br>
        </div>
        <div class="align-center">
            <a class="a" href="LoginPage.jsp">Sign in Now</a>
        </div>
            <%
    }
        
        %>

        
        
         
        
        
        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
