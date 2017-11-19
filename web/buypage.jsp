<%-- 
    Document   : buypage
    Created on : Nov 19, 2017, 3:01:00 PM
    Author     : DV
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
         <%@include file="header.jsp" %> 
        
         <table align="center" class="table2" >
               <tr >
                    <td  align="center"> <img class="imgabout" alt="MISSING" src="images/<%= rs.getString(6)%>"> </td>
                    <td>
                        <table>
                            <tr>
           
                <th>DEAL ID:</th>
                <td><%= rs.getString(1)%></td>
            </tr>
            <tr>
                <th>DEAL NAME:</th>
                 <td ><%= rs.getString(2)%></td>
            </tr>
            <tr>
                <th>DEAL DESCRIPTION:</th>
                 <td ><%= rs.getString(4)%></td>
            </tr>
            <tr> 
                <th>DEAL PRICE:</th>
                <td ><input type="text" id="tbQty" name="tbQty"> </td>
            </tr>   
             <tr>
            <th> QUANTITY:</th>
            <td> <input type="text" id="tbQty" name="tbQty"> </td>
            </tr>
                        </table>
                    </td>
               </tr>
                <tr>
               <td colspan="2" align="center"><input type="submit" onclick="return checkNll()" name="btnSubmit" value="BUY NOW"></td>
            </tr>
            </table>
         
         
         <%@include file="footer.jsp" %> 
    </body>
</html>
