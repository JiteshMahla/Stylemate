<%-- 
    Document   : user3
    Created on : Jul 23, 2017, 6:14:48 PM
    Author     : DV
--%>



<%@page  import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/style.css"/>
        <script type="text/javascript">
            function checkNll()
            {
             q= document.getElementById("tbQty").value;
            
            if(q==="" || q<=0)
            {
                alert("You must select number of items to preceed further.");
                return false;
            }
            else
            {
                return true;
            }
             
            }
            
        </script>
         
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
            
    <%@include file="header2.jsp" %>
    <form action="buypage.jsp" method="post">
        <%
             String r;
            if(request.getParameter("i")!=null)
            {
               r=request.getParameter("i");
               Connection con=null;
               Statement smt;
        
           
                try
               {       
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   
                   smt=con.createStatement();
                   String qry ="select * from deals where d_id='"+r+"'";
                   ResultSet rs=smt.executeQuery(qry);    //resulset is set of records
                   rs.next();
                   %>
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
                <td ><%= rs.getString(5)%> </td>
            </tr>   
             <tr>
            <th> QUANTITY:</th>
            <td> <input type="text" id="tbQty" name="tbQty"> </td>
            </tr>
                        </table>
                    </td>
               </tr>
            
            
            <%
                                      
                   con.close();
               }
               catch(Exception ex)
               {
               out.println("ERROR :<BR><p>"+ex+"</p>");   
               }
            }
             %>
             
            <tr>
               <td colspan="2" align="center"><input type="submit" onclick="return checkNll()" name="btnSubmit" value="BUY NOW"></td>
            </tr>
            </table>
            </form>
             
    </body>
</html>
