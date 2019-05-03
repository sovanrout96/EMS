<!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
    <title>Services</title>
</head>
<body>
    <nav class="navbar navbar-default navbar-fixed-top">
        <div class="container">
            <div class="navbar-header">
                <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                    <span class="icon-bar"></span>
                </button>
            <a class="navbar-brand" href="#myPage"><img id="logo" src="images/eventlogo.png" alt="LOGO" style="height: 46px;width: 150px;"></a>
            </div>
            <div class="collapse navbar-collapse" id="myNavbar">
                <ul class="nav navbar-nav navbar-right">
                    <li><a href="index.jsp">HOME</a></li>
                </ul>
            </div>
        </div>
    </nav>
    <%@page import="java.sql.*" %>
<% 
   String id=request.getParameter("id");
   Connection con=null;
   PreparedStatement ps=null;
   try{
	   Class.forName("com.mysql.jdbc.Driver");
	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","");
	   ps=con.prepareStatement("select * from services where sl_no=?");
	   ps.setString(1, id);
       ResultSet rs=ps.executeQuery();
       rs.next();
%>
    <div class="col-md-offset-3 col-md-6" style="margin-top: 150px;">
    <form action="deliveryDetails.jsp?service=<%=rs.getString("service_type") %>" method="post">
    <div class="well">
        <div class="row">
            <div class="col-sm-12">
        <div>
      <label class="myLabel">Service Title:</label>
      <span><%out.println(rs.getString("service_title")); %></span>
    </div>
    <div>
      <label class="myLabel">Address:</label>
      <span><%out.println(rs.getString("address")); %></span>
    </div>
    <div>
      <label class="myLabel">Contact:</label>
      <span><%out.println(rs.getString("contact")); %></span>
    </div>
    <div>
      <label class="myLabel">Service Type:</label>
      <span><%out.println(rs.getString("service_type")); %></span>
    </div>
    <div>
      <label class="myLabel">Price:</label>
      <h2 style="font-family: cursive;"><%out.println(rs.getString("price")); %><span>/-</span></h2>
    </div>
    <div class="col-sm-6" style="margin-top: 40px;padding-right: 0px;">
   <div class="form-group">
         <button id="registerButton" type="submit" class="btn  pull-right" style="width: 250px;margin-right:22px;background-color:#5e9c1b;color: white;">Book</button>
     </div>
   </div>
   <div class="col-sm-6" style="margin-top: 40px;padding-right: 0px;">
   <div class="form-group">
         <button id="registerButton" type="submit" class="btn pull-right" style="width: 250px;background-color: #e72424;color: white;">Cancel</button>
     </div>
   </div>
</div>
</div>
</div>
</form>
    </div>
    <%
       }
       catch(Exception e){
    	   e.printStackTrace();
       }
    %> 
</body>
</html>