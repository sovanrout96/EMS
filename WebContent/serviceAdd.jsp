<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Add Service</title>
</head>
<body>
      <%@page import="java.sql.*" %>
       <% 
          String title=request.getParameter("service_title");
          String address=request.getParameter("address");
          String contact=request.getParameter("contact");
          String price=request.getParameter("price");
          String type=request.getParameter("service_type");
          String provider_name=(String)session.getAttribute("name");
          Connection con=null;
    	  PreparedStatement ps=null;
    	  int x=0;
    	
          try{
        	  Class.forName("com.mysql.jdbc.Driver");
        	  con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","");
        	  ps=con.prepareStatement("insert into services(service_title,address,contact,price,service_type,provider_name) values(?,?,?,?,?,?)");
        	  ps.setString(1, title);
        	  ps.setString(2, address);
        	  ps.setString(3,contact);
        	  ps.setString(4,price);
        	  ps.setString(5, type);
        	  ps.setString(6, provider_name);
        	  x=ps.executeUpdate();
        	  if(x>0){
        		  out.println("<script>");
        		  out.println("alert('Service Added Successfully')");
        		  out.println("location='addService.jsp';");
        		  out.println("</script>");
        	  }
          }catch(Exception e){
        	  e.printStackTrace();
          }
       %>
</body>
</html>