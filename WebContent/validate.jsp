
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<link href="css/bootstrap.min.css" rel="stylesheet"/>
        <title>Login</title>
    </head>
    <body>
        <%@page import="java.sql.*" %>
        <%@page import="java.util.*" %>
      
        
        <%
         
        String username=request.getParameter("username");
        String password=request.getParameter("password");
        if(username.equals("admin") && password.equals("admin")){
            session.setAttribute("valid","yes");
            session.setAttribute("user","admin");
            response.sendRedirect("admin.jsp");
        }
  
        try{
                   Class.forName("com.mysql.jdbc.Driver");
                   Connection c=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management", "root", "");
                   PreparedStatement ps=c.prepareStatement("select * from users where user_name=? and password=?");
                   ps.setString(1,username);
                   ps.setString(2,password);
                   ResultSet rs=ps.executeQuery();
                   if(rs.next()){
                     if(rs.getString("user_type").equals("sprovider")){
                       session.setAttribute("valid","yes");
                       session.setAttribute("name",rs.getString("name"));
                       session.setAttribute("username",username);
                       response.sendRedirect("provider.jsp");
                     }
                     }else{
                    	 
                       %>
                       
                       <jsp:forward page="login.jsp">
                           <jsp:param name="err" value="Invalid Credentials! Try again."></jsp:param>
                           <jsp:param name="username" value="<%=username%>"></jsp:param>
                       </jsp:forward>
                       <%
                        }
        }catch(Exception e)
              {
                out.println(e);
        }

        %>
    </body>
</html>
