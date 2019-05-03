<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Sign Up</title>
</head>
<body>
        <%@page import="java.sql.*" %>
        <%
           String name=request.getParameter("name");
           String username=request.getParameter("username");
           String email=request.getParameter("email");
           String password=request.getParameter("password");
           String confirm_password=request.getParameter("cpassword");
           String usertype=request.getParameter("usertype");
           Connection con=null;
           PreparedStatement ps=null;
           int x=0;
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
        	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","");
        	   ps=con.prepareStatement("insert into users(name,user_name,email,password,confirm_password,user_type) values(?,?,?,?,?,?)");
        	   ps.setString(1, name);
        	   ps.setString(2, username);
        	   ps.setString(3, email);
        	   ps.setString(4, password);
        	   ps.setString(5, confirm_password);
        	   ps.setString(6, usertype);
        	   x=ps.executeUpdate();
        	   if(x>0){
        		   out.println("<script>");
        		   out.println("alert('You Have Registered Successfully!')");
        		   out.println("location='index.jsp';");
        		   out.println("</script>");
        	   }
           }catch(Exception e){
        	   e.printStackTrace();
           }
        %>
</body>
</html>