<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Confirm Mail</title>
</head>
<body>
     <%@page import="java.sql.*" %>
     <%@page import="java.util.Properties" %>
     <%@page import="javax.mail.Authenticator" %>
     <%@page import="javax.mail.Message" %>
     <%@page import="javax.mail.MessagingException" %>
     <%@page import="javax.mail.PasswordAuthentication" %>
     <%@page import="javax.mail.Session" %>
     <%@page import="javax.mail.Transport" %>
     <%@page import="javax.mail.internet.InternetAddress" %>
     <%@page import="javax.mail.internet.MimeMessage" %>
     <%@page import="javax.net.ssl.HttpsURLConnection" %>
     <%@page import="javax.net.ssl.SSLContext" %>
     <%@page import="javax.net.ssl.TrustManager" %>
     <% 
        String name=request.getParameter("customer_name");
        String address=request.getParameter("address");
        String contact=request.getParameter("contact");
        String to=request.getParameter("email");
        String service=request.getParameter("name");
       
    	String subject="Ideal Event Booking Confirmation";
    	String message="Congratulations! Your booking request for the service"+service+" have been recieved successfully, we will get back to you soon.";
    	
    	final String from="bookhub05@gmail.com";
    	final String password="onlinebookstore";
        try{
        	Properties props=new Properties();
    		props.put("mail.smtp.host", "smtp.gmail.com");
    		props.put("mail.smtp.socketFactory.port", "465");
    		props.put("mail.smtp.socketFactory.class", "javax.net.ssl.SSLSocketFactory");
    		props.put("mail.smtp.auth", "true");
    		props.put("mail.smtp.port", "465");
    		
    		
    		Authenticator auth = new Authenticator() {
    			public PasswordAuthentication getPasswordAuthentication() {
    				return new PasswordAuthentication(from, password);
    			}
    		};
    		
    		Session ssn = Session.getInstance(props, auth);
    		
    		//Composing the message
    		
    		MimeMessage msg=new MimeMessage(ssn);
    		msg.setFrom(new InternetAddress(from));
    		msg.addRecipient(Message.RecipientType.TO, new InternetAddress(to));
    		msg.setSubject(subject);
    		msg.setText(message);
    		
    		//Sending message
    		Transport.send(msg);
    		out.println("<script>");
    		out.println("alert('Your Request Has Been Recieved Successfully!')");
    		out.println("location='index.jsp';");
    		out.println("</script>");
        }catch(Exception e){
        	e.printStackTrace();
        }
     %>
</body>
</html>