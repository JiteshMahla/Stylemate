<%-- 
    Document   : BookOnline
    Created on : Nov 19, 2017, 10:24:48 PM
    Author     : Jitesh Mahla
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Book Appointment</title>
        
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
            
            String email, name, date,time;
            
            
            email = request.getParameter("tbEmail");
            name = request.getParameter("tbName");
            date = request.getParameter("tbDate");
            time = request.getParameter("tbTime");
            
            
            if(email=="" && name=="" && date=="" && time=="")
            {
                error = "Please fill the Details.";   
            }
            else
            {
            
            try{
                String qry = "insert into book_online values('"+name+"','"+email+"','"+date+"','"+time+"')";
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
    <form action="email.jsp" method="POST">
      
        <input type="text" name="tbName" onkeyup="ajaxname(this.value)" placeholder="Name"/>
      <div id="resultName">
                
            </div>
      <input type="text" name="tbEmail" onkeyup="ajaxemail(this.value)" placeholder="Email address"/>
      <div id="resultEmail">
                
            </div>
      
      <input type="text" name="tbDate" placeholder="Date of Appointment"/>
      
      <input type="text" name="tbTime" placeholder="Time"/>
      
      
     
<script>
$(document).ready(function(){
    $('[data-toggle="popover"]').popover();   
});
</script>

      <div id="resultPass">
                
            </div>
      
      <input type="submit" class="btn-custom" name="btnRegister" value="Book Now">
      <div class="alert-login">
  <%=error%>
</div>
      <p class="message">A member? <a href="LoginPage.jsp">Sign In</a></p>
    </form>
  </div>
</div>

        
        
        
         <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
        
    </body>
</html>
