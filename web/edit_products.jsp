<%-- 
    Document   : edit_products
    Created on : Jul 3, 2017, 7:09:57 PM
    Author     : DV
--%>

<%@page import="java.sql.*" contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link href="admincss.css" rel="stylesheet">
    </head>
    <body>
        <%@include file="adminheader.jsp" %>
        <form method="post">
        <%
             String r;
            if(request.getParameter("i")!=null)
            {
               r=request.getParameter("i");
               Connection con=null;
               Statement smt;
               
               if(request.getParameter("btnSubmit")!=null) 
           {
               
               String name,desc;
               int price;
               name=request.getParameter("tbName");
               desc=request.getParameter("tbDesc");
               price=Integer.parseInt((request.getParameter("tbPrice")));
                         
                try
               {       
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   
                   smt=con.createStatement();
                   String qry1 ="update deals set name='"+name+"', description='"+desc+"', price="+price+" where d_id='"+r+"'";
                   int x=smt.executeUpdate(qry1);
                   if(x>0)
                   {
                       out.println("UPDATED!!!!");
                   }
                   
                   else
                   {
                           out.println("<p>Failed</p>");
                   }
                 con.close();
               }  
               catch(Exception ex)
                       {
                           out.println("ERROR :<BR><p>"+ex+"</p>");  
                       }
           
           }
               if(request.getParameter("btnSubmit1")!=null) 
           {
                try
               {       
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   
                   smt=con.createStatement();
                   String qry2 ="delete from deals where d_id='"+r+"'";
                   int x=smt.executeUpdate(qry2);
                   if(x>0)
                   {         
                         response.sendRedirect("products_admin.jsp");                            
                   }
                   
                   else
                   {
                           out.println("<p>Failed</p>");
                   }
                 con.close();
               }  
               catch(Exception ex)
                       {
                           out.println("ERROR :<BR><p>"+ex+"</p>");  
                       }
           
           }
           
                try
               {       
                   Class.forName("com.mysql.jdbc.Driver");
                   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/salon","root","");
                   
                   smt=con.createStatement();
                   String qry ="select * from deals where d_id='"+r+"'";
                   ResultSet rs=smt.executeQuery(qry);    //resulset is set of records
                   rs.next();
                   %>
            <table align="center" >
            <tr>
                <th class="th1">Product ID:</th>
                <td class="td1"> <input type="text" name="tbId" value="<%= rs.getString(1)%>" readonly></td>
            </tr>
            <tr>
                <th class="th1">Product Name:</th>
                <td class="td1" ><input type="text" name="tbName" value="<%= rs.getString(2)%>"></td>
            </tr>
              
            <tr> 
                <th class="th1">Product Description:</th>
                <td class="td1"><input type="text" name="tbDesc" value="<%= rs.getString(3)%>" > </td>
            </tr> 
            <tr> 
                <th class="th1">Product Price:</th>
                <td class="td1" ><input type="text" name="tbPrice" value="<%= rs.getString(4)%>" > </td>
            </tr> 
            <tr>                
                <td class="td1" colspan="2" align="center"> <img  src="images/<%= rs.getString(5)%>" width=300 height=300> </td>
            </tr>
            
            <tr>
               <td align="center"><input type="submit" name="btnSubmit" value="UPDATE"></td>
               <td align="center"><input type="submit" name="btnSubmit1" value="DELETE"></td>
            </tr>
            </table>
            
             <%
            
               con.close();
               }  
               catch(Exception ex)
                       {
                           out.println("ERROR :<BR><p>"+ex+"</p>");  
                       }
           }
            %>
            </form>
            
               <%@include file="footer.jsp" %>
    </body>
</html>
