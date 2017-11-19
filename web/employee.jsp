<%-- 
    Document   : employee_details
    Created on : Jul 9, 2017, 12:20:05 PM
    Author     : DV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        
        <script type="text/javascript">
            function checkNull()
            {
                var id=document.getElementById("tbId").value;
                var name=document.getElementById("tbName").value;
                var date=document.getElementById("tbDate").value;
                var genders=document.getElementsByName("gender");
                
        
                if(name==="")
                {
                    alert("Fill your name");
                    return false;
                }
                else if(date==="")
                {
                    alert("Fill your dob");
                    return false;
                }
                else if(mail==="")
                {
                    alert("Fill your email");
                    return false;
                }
                else if(genders[0].checked===false && genders[1].checked===false && genders[2])===false 
                {
                     alert("You must select your gender!");
                     return false;
                }    
                else
                {
                    return true;
                }
            }
            function isValidDetails()
            {
                var a=checkNull();
                var name=document.getElementById("tbName").value;
                var mail=document.getElementById("tbMail").value;
                var p_email=/^(([^<>()\[\]\\.,;:\s@"]+(\.[^<>()\[\]\\.,;:\s@"]+)*)|(".+"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$/;
                var p_name=/^[a-z ,.'-]+$/;
                if(a)
                {
                    if(!p_name.test(name))
                    {
                         alert("INVALID NAME");
                         return false;
                    }
                    else if(!p_email.test(mail))
                    {
                        alert("INVALID EMAIL");
                        return false;
                    }
                    else
                    {
                        return true;
                    }
                }
            }
        </script>    
    </head>
    <body>
        <font size="5" color="red">ENTER YOUR DETAILS</font>
        <form method="POST"> 
            <table >
                <tbody>
                    <tr>
                        <td>ID:</td>
                        <td><input type="text" id="tbId" name="tbId"></td>
                    </tr>                   
                    <tr>
                        <td>EMPLOYEE NAME:</td>
                        <td><input type="text" id="tbName" name="tbName"></td>
                    </tr>                   
                    <tr>
                        <td>DOB:</td>
                        <td><input type="date" id="tbDate" name="tbDate"></td>
                    </tr>
                    
                    <tr>
                        <td>GENDER:</td>
                        <td> <input type="radio" id="genM" name="gender" value="Male">Male
                             <input type="radio" id="genF" name="gender" value="Female">Female
                             <input type="radio" name="gender" value="Others">Others 
                        </td>
                    </tr>
                    <tr>
                        <td>EMPLOYEE PASSWORD:</td>
                        <td><input type="password" id="tbPass" name="tbPass"></td>
                    </tr>
                    <tr>
                        <td>MOBILE NUMBER:</td>
                        <td><input type="text" id="Mobile" name="Mobile"  maxlength="10" pattern="\d{10}" title="Please enter exactly 10 digits"></td>
                    </tr>                   
                    <tr>
                        <td></td>
                        <td> <input type="submit" onclick="return isValidDetails()" name="btnSubmit" value="SUBMIT"></td>
                    </tr>
                </tbody>
            </table>   
        </form>
    </body>
</html>
