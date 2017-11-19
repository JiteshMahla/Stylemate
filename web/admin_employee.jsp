<%-- 
    Document   : admin_employee
    Created on : Jul 9, 2017, 9:09:29 PM
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
        
        <div class="container-fluid">
            <%@include file="adminheader.jsp" %>
            
            
            
        <%
            Connection con=null;
            Statement smt;
             
            out.println(request.getParameter("id"));
            if(request.getParameter("id")!=null)
            {
                
             if(request.getParameter("btnSave")!=null)
           {
                Statement smt1;
                int sal=Integer.parseInt(request.getParameter("tbSalary"+request.getParameter("id")+""))  ;
               try{
                   Class.forName("com.mysql.jdbc.Driver");
                  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                  smt1=con.createStatement();
                   String qry1 ="update emloyee set salary="+sal+" where e_id='"+request.getParameter("id")+"'";
                   int r=smt1.executeUpdate(qry1);     //function for execution-return type is int
                   if(r>0)
                   {
                       out.println("Item has been deleted from cart");
                   }
                   else
                   {
                       out.println(".....");
                   }
                    
               }
               catch(Exception ex)
               {
                out.println(ex);   
               }
               
           }
            
            
            
            }
            
            
            
               try
               {       
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                  
                   smt=con.createStatement();
                   String qry ="select * from emloyee ";
                   ResultSet rs=smt.executeQuery(qry);    //resulset is set of records
                   %>
                   
                   
                   
                   <form method="get">
                        <table  width=100% align="center">
            <tr>
                <th>ID</th>
                <th>NAME</th>
                <th>DOB</th>
                <th>GENDER</th>
                <th>PASSWORD</th>
                <th>CONTACT</th>
                <th>SALARY</th>
                
            </tr>
            
                   <%
                   
                   while(rs.next())
                   {
                       if((request.getParameter("id"))!=rs.getString(1)){
                       %>
                               <tr><td > <%= rs.getString(1)%></td>
                                   <td ><%= rs.getString(2)%></td>
                                   <td > <%= rs.getString(3)%></td>
                                   <td > <%= rs.getString(4)%></td>
                                   <td > <%= rs.getString(5)%></td>
                                   <td >  <%= rs.getString(6)%></td>         
                                   <td > <input class="tbSalary" type="text" name="tbSalary<%= rs.getString(1)%>" value="<%= rs.getString(7)%>" readonly> </td>
                                   <td> <a href="admin_employee.jsp?id=<%= rs.getString(1)%>" >UPDATE</a></td>
                               </tr>
                               
                    }
                      if((request.getParameter("id"))== rs.getString(1))
                       {
                           
                           %>
                               <tr><td > <%= rs.getString(1)%></td>
                                   <td ><%= rs.getString(2)%></td>
                                   <td > <%= rs.getString(3)%></td>
                                   <td > <%= rs.getString(4)%></td>
                                   <td > <%= rs.getString(5)%></td>
                                   <td >  <%= rs.getString(6)%></td>         
                                   <td > <input class="tbSalary" type="text" name="tbSalary<%= rs.getString(1)%>" value="<%= rs.getString(7)%>"> </td>
                                   <td> <a href="admin_employee.jsp?id=<%= rs.getString(1)%>" ><input type="submit" name="btnSave" value="Save" ></a></td>
                               </tr>
                       <%
                       }
                   }
                   %>                             
                   </table>
                   <br>
                   <br>  
                   </form>
                   <%    
                                              
                   con.close();
               }
               catch(Exception ex)
               {
               out.println("ERROR :<BR><p>"+ex+"</p>");   
               }
           %>
            
            
        </div>
        
           <%@include file="footer.jsp" %>
           <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
    <script src="js/bootstrap.min.js"></script>
    </body>
</html>
