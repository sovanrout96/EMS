<!DOCTYPE html>
<html>
<head>
    <title>Provider Page</title>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/admin.css" rel="stylesheet"/>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
</head>
<body>
<%
        if(session.getAttribute("valid")!="yes"){
        %>
        	<script>
            alert("Your Session has experied! Try Login again.");
            window.location="index.jsp";
            </script>
        <%
        }
        %>
    <div class="sidenav">
        <a href="logout.jsp" class="btn btn-danger"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
        <a href="providerProfile.jsp">My Profile</a>
        <a href="providerServices.jsp">My Services</a>
        <a href="addService.jsp">Add New Service</a>
    </div>
    <%@page import="java.sql.*" %>
       <%
           Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           String name=(String)session.getAttribute("username");
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
        	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","");
        	   ps=con.prepareStatement("select * from users where user_name=?");
        	   ps.setString(1,name);
        	   rs=ps.executeQuery();
        	   rs.next();
           
       %>
    <div class="col-sm-offset-4 col-sm-6" style="margin-top: 50px;">
        <div class="well" style="height: 300px;">
          <div>
      <label class="myLabel">Name:</label>
      <span><%out.println(rs.getString("name")); %></span>
    </div>
    <div>
      <label class="myLabel">User Name:</label>
      <span><%out.println(rs.getString("user_name")); %></span>
    </div>
    <div>
      <label class="myLabel">Password:</label>
      <span><%out.println(rs.getString("password")); %></span>
    </div>
        </div>
    </div>
    <%
           }catch(Exception e){
        	   e.printStackTrace();
           }
    %>
</div>
</body>
</html>