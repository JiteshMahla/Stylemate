<%@page import="java.util.Properties"%>
<%@page import="javax.mail.*"%>
<%@page import="javax.mail.internet.*"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" href="css/bootstrap.min.css">
        
        <link rel="stylesheet" href="css/style.css">
        
    </head>
    <body>
          
        <%@include file="ConnectPage.jsp" %>
        <%@include file="header.jsp" %>
        
     <%   
        String email="", name="", date="",time="",error="";
        if(request.getParameter("btnBooknow")!=null)
        {
            
            email = request.getParameter("tbEmail");
            name = request.getParameter("tbName");
            date = request.getParameter("tbDate");
            time = request.getParameter("tbTime");
            
            try{
                String qry = "insert into book_online values('"+name+"','"+email+"','"+date+"','"+time+"')";
                int r=smt.executeUpdate(qry);
                if(r>0)
                {
                    System.out.println("Inserted Succesfully.");
                }
                con.close();
            }
            catch(Exception ex)
            {
                out.println(ex);
            }
            
        }
        %>
  
        <div class="container-fluid" style="height: 300px">
  <%  out.println("<h3>HI </h3> ");

    out.println("<h3>"+name+",\nYour Appointment has been booked. Soon you'll get a confirmation message on your registered email-address "+email+".\n\n\nThank you.</h3>\n\n <h2>Redirecting to Home...<h2>");
%>
        </div> 
            <%
    try
    {    
        String username = name;
   
        final String from = "ccetinfoprovider@gmail.com";
        final String password = "d23j27p40";
        String to = email;
        String sub = "Appointment Confirmation";
        String msg = "\n Hi "+username+"!\nYour Appointment at Gorgeous Looks has been booked on "+date+" at "+time+".\n We are awaiting for your gracius presence. Thank you.";
              
       
        Properties props = new Properties();
        props.put("mail.smtp.host", "smtp.gmail.com");
        props.put("mail.smtp.socketFactory.port", "465");
        props.put("mail.smtp.socketFactory.class",
                        "javax.net.ssl.SSLSocketFactory");
        props.put("mail.smtp.auth", "true");
        props.put("mail.smtp.port", "465");

        Session sess = Session.getInstance(props,
                new javax.mail.Authenticator() {
                        protected PasswordAuthentication getPasswordAuthentication() {
                                return new PasswordAuthentication(from,password);
                        }
                });

        try {

                Message message = new MimeMessage(sess);
                message.setFrom(new InternetAddress(from));
                message.setRecipients(Message.RecipientType.TO,
                                InternetAddress.parse(to));
                message.setSubject(sub);
                message.setText(msg);

                Transport.send(message);

                System.out.println("Done");
                response.setHeader("Refresh", "4;url=Home.jsp");

        } catch (MessagingException e) {
                throw new RuntimeException(e);
        }
    }
        catch(Exception ex)
            {
                out.println("ERROR :<BR><p>"+ex+"</p>");  
            }  

%>

    <%@include file="footer.jsp" %>
    </body>
</html>