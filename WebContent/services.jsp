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
           Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           String service=request.getParameter("service");
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
        	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","");
        	   ps=con.prepareStatement("select * from services where service_type=?");
        	   ps.setString(1,service);
        	   rs=ps.executeQuery();
       %>
    <div class="row">
  <div class="col-sm-offset-1 col-sm-10" style="margin-top: 150px;">
    <div class="table-responsive">
      <table class="table table-bordered table-striped" ">
         
        <thead>
        
       
         <tr>
           <center> <th>Sl No</th></cenyter>
            <th>Service Title</th>
            <th>Address</th>
            <th>Contact</th>
            <th>Price</th>
            <th>Service Type</th>
            <th>Action</th>
         </tr>
        
       </thead>
       
       <tbody>
       <% 
         while(rs.next())
          {
       %>
        <tr>
         <td><%out.println(rs.getString("sl_no"));%></td>
         <td><%out.println(rs.getString("service_title"));%></td>
         <td><%out.println(rs.getString("address"));%></td>
         <td><%out.println(rs.getString("contact"));%></td>
         <td><%out.println(rs.getString("price"));%></td>
         <td><%out.println(rs.getString("service_type"));%></td>
         <td><a href="serviceDetails.jsp?id=<%=rs.getString("sl_no")%>"><button class="btn-info">VIEW</button></a></td>
        </tr>
        <%
           }
         }catch(Exception e){
           e.printStackTrace();
           }
        %>
      </tbody>
    </table>
  </div>
</div>
</div>
</body>
</html>