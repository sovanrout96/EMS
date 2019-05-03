<!DOCTYPE html>
<html>
<head>
    <title>Admin Page</title>
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
        <a href="logout.jsp" class="btn btn-danger btn-sm"><span class="glyphicon glyphicon-log-out"></span> Log out</a>
        <a href="authenticateProviders.jsp">Service Providers</a>
        <a href="adminCustomers.jsp">Customers</a>
        <a href="adminView.jsp">All Users</a>
    </div>
         <%@page import="java.sql.*" %>
       <%
           Connection con=null;
           PreparedStatement ps=null;
           ResultSet rs=null;
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
        	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","");
        	   ps=con.prepareStatement("select * from users where user_type=?");
        	   ps.setString(1,"sprovider");
        	   rs=ps.executeQuery();
        	  
           
       %>
            
    
                       <div class="afternav">
                           <div class="table-responsive table-bordered">
                                <table class="table">
                                     <thead>
                                       <tr>
                                         <th>User ID</th>
                                         <th>Name</th>
                                         <th>User Name</th>
                                         <th>Email</th>
                                       </tr>
                                     </thead>
                                     <tbody>
                                     <% 
                                      while(rs.next())
            	                        {
                                    	   
                                    	  %>
                                        <tr>
                                           <td><%out.println(rs.getString("sl_no")); %></td>
                                           <td><%out.println(rs.getString("name")); %></td>
                                           <td><%out.println(rs.getString("user_name")); %></td>
                                           <td><%out.println(rs.getString("email"));%></td>
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
                       
                                    
</body>
</html>
