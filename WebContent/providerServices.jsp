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
           String name=(String)session.getAttribute("name");
           try{
        	   Class.forName("com.mysql.jdbc.Driver");
        	   con=DriverManager.getConnection("jdbc:mysql://localhost:3306/event_management","root","");
        	   ps=con.prepareStatement("select * from services where provider_name=?");
        	   ps.setString(1,name);
        	   rs=ps.executeQuery();
       %>
    <div class="afternav">
                        <div class="table-responsive">
                            <table class="table">
                                <thead>
                                
                                    <tr>
                                        <th>Sl No</th>
                                        <th>Service Title</th>
                                        <th>Address</th>
                                        <th>Contact</th>
                                        <th>Price</th>
                                        <th>Service Type</th>
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