<%-- 
    Document   : edit_products
    Created on : Jul 3, 2017, 7:09:57 PM
    Author     : DV
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
        <meta http-equiv="X-UA-Compatible" content="IE=edge">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        
        <title>JSP Page</title>
        
        <link href="css/bootstrap.min.css" rel="stylesheet">
         <script type="text/javascript">
            function checkId(str)
            {
                
                var rdiv=document.getElementById("resultDiv");
                var objrequest=new XMLHttpRequest();  //server ko bhejna request
                objrequest.onreadystatechange=function()
                {
                    //event ki binding hori h jb readystatechange hoga
                    //function khud fire hoga
                    if(objrequest.readyState===4 && objrequest.status===200)
                    {
                        //request phuncha ya ni phuncha?
                        //phunch gya to
                        rdiv.innerHTML=objrequest.responseText;
                    }  
                };
                objrequest.open("GET", "add_product_backend.jsp?i="+str+"",true);
                objrequest.send();   
            }
            
        </script>
        <link href="admincss.css" rel="stylesheet">
     </head>
    <body>
        
         <%
            String email="";
            if(session.getAttribute("email")!=null)
            {
                email = session.getAttribute("email").toString(); 
            }
            else
            {
                response.sendRedirect("LoginPage.jsp");
            }
            
            %>
        
        <%@include file="adminheader.jsp" %>
        
        <form  method="post" enctype="multipart/form-data">
       
           <table align="center" >
            <tr>
                <th class="th1">Product ID:</th>
                <td class="td1"> <input type="text" onkeyup="checkId(this.value)" name="tbId"> <br> <div class="div1" id="resultDiv"> </div> </td>
            </tr>
           
            <tr>
                <th class="th1">Product Name:</th>
                 <td class="td1"><input type="text" name="tbName"></td>
           
            </tr>
              
            <tr> 
                <th class="th1">Product Description:</th>
                <td class="td1"><input type="text" name="tbDesc" > </td>
              
            </tr> 
            <tr> 
                <th class="th1">Product Price:</th>
                <td class="td1"><input type="text" name="tbPrice"> </td>
            </tr>
            <tr> 
                <th class="th1">Product Photo:</th>
                <td class="td1"><input type="file" name="photo" accept="image/*"></td>

            </tr>
            <tr>
               <td colspan="2" align="center"><input type="submit" name="btnSubmit" value="Save"></td>

            </tr>
            </table>            
            </form>
           
           <%@include file="footer.jsp" %>
           <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
