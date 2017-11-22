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
         
<script>         
    function isValidName() {
    var name = document.forms["myForm"]["tbName"].value;
    var pname = /^[a-zA-Z ]+$/;
    if (!pname.test(name)) {
        return false;
    }
    else
    {
        return true;
    }
    }
    function isValidEmail() {
    var email = document.forms["myForm"]["tbEmail"].value;
    var pEmail = /^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
    if (!pEmail.test(email)) {
        return false;
    }
    else
    {
        return true;
    }
    }
    
    function isValidDate()
  {
    var date = document.forms["myForm"]["tbDate"].value;
    var re = /^(\d{1,2})\/(\d{1,2})\/(\d{4})$/;
    
    if(date != "") {
      if(regs = date.match(re)) {
        // day value between 1 and 31
        if(regs[1] < 1 || regs[1] > 31) {
          alert("Invalid value for day: " + regs[1]);
         
          return false;
        }
        // month value between 1 and 12
        if(regs[2] < 1 || regs[2] > 12) {
          alert("Invalid value for month: " + regs[2]);
       
          return false;
        }
        // year value between 1902 and 2017
        if(regs[3] < 2017 ) {
          alert("Invalid value for year: " + regs[3]);
         
          return false;
        }
        if(regs[3] < 2018 ) {
          alert("Sorry, We dont take Bookings this long : " + regs[3]);
         
          return false;
        }
      } else {
      
        return false;
      }
    } 
  }
   function isValidTime()
  {
      var time = document.forms["myForm"]["tbTime"].value;
    var ptime = /^(\d{1,2}):(\d{2})([ap]m)?$/;

    if(time != '') {
      if(reg = time.match(ptime)) {
        if(reg[3]) {
          // 12-hour value between 1 and 12
          if(reg[1] < 1 || reg[1] > 12) {
            alert("Invalid value for hours: " + reg[1]);
           
            return false;
          }
        } else {
          // 24-hour value between 0 and 23
          if(reg[1] > 23) {
            alert("Invalid value for hours: " + reg[1]);
           
            return false;
          }
        }
        // minute value between 0 and 59
        if(reg[2] > 59) {
          alert("Invalid value for minutes: " + reg[2]);
         
          return false;
        }
      } else {
       
        return false;
      }
    }

  }
  
  
    function validateForm() {
        
        var e = isValidEmail();
        var n = isValidName();
        var d = isValidDate();
        var t = isValidTime();
        
                if(n==false)
                {
                    alert("Invalid Name.");
                    return false;
                }
                else if(e==false)
                {
                    alert("Invalid Email address.");
                    return false;
                }
                else if(d==false)
                {
                    alert("Invalid Date.");
                    return false;
                }
                else if(t==false)
                {
                    alert("Invalid Time.");
                    return false;
                }
                
      
    }
    </script>

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
            
        </script>
   
    </head>
    <body>
        
        <%@include file="ConnectPage.jsp" %>
        
        
        <div class="row"> 
            <div class="col-md-1"></div>
            <div class="col-md-1">
                <p class="admin"><a href="Home.jsp" style="color: white">
                <span class="glyphicon glyphicon-menu-left"></span> Back
                    </a></p>
            </div>
            <div class="col-md-10"></div>
        </div>
        
        <div class="login-page">
        <div class="form">
    <form name="myForm" action="email.jsp"  onsubmit="return validateForm()" method="POST">
      
        <input type="text" name="tbName" onkeyup="ajaxname(this.value)" placeholder="Name" required="" />
      <div id="resultName">
                
            </div>
      <input type="text" name="tbEmail" onkeyup="ajaxemail(this.value)" placeholder="Email address" required />
      <div id="resultEmail">
                
            </div>
      
      <input type="text" name="tbDate" placeholder="dd/mm/yyyy" required="" />
      
      <input type="text" name="tbTime" placeholder="hh:mm" required />
      
           
      <input type="submit" class="btn-custom" name="btnBooknow" value="Book Now">
      <div class="alert-login">
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
