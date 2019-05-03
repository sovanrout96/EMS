<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta charset="utf-8">
    <meta name="viewport" content="width=device-width initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet"/>
    <link href="css/index.css" rel="stylesheet"/>
    <script src="js/jquery-3.2.1.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
<title>Delivery Details</title>
</head>
<body>
      <%
        String service=request.getParameter("service");
      %>
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
    <div class="col-sm-offset-3 col-sm-6" style="border: solid;border-color: crimson;margin-top:130px;">
  <div class="form-group">
       <form action="mail.jsp?name=<%=service%>" method="post">
       <div>
        <label class="MyLabel" style="margin-top: 25px;">Customer Name:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="customer_name" placeholder="Enter Your Name" />
         </div>
       </div>
       <div>
        <label class="MyLabel" style="margin-top: 15px;">Address:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="address" placeholder="Enter Your Address" />
         </div>
       </div>
       <div>
        <label class="MyLabel" style="margin-top: 15px;">Contact:</label>
         <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="contact"  placeholder="Enter Your Contact Number" />
         </div>
       </div>
       <label class="MyLabel" style="margin-top: 15px;">Email:</label>
        <div class="input-group">
           <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
           <input type="text" class="form-control" name="email"  placeholder="Enter Your Email" />
         </div>
        <div class="col-sm-6" style="margin-top: 40px;padding-left: 0px;">
           <div class="form-group">
         <a href=""><button id="registerButton" type="submit" class="btn btn-info" style="width: 270px;background-color:#5e9c1b;">Book Service</button></a>
     </div>
 </div>
 </form>
   <div class="col-sm-6" style="margin-top: 40px;padding-right: 0px;">
   <div class="form-group">
         <a href="books.jsp"><button id="registerButton" type="submit" class="btn btn-danger pull-right" style="width: 270px;background-color:#e72424;">Cancel</button></a>
     </div>
   </div>
          
       </div>
       </div>
</body>
</html>