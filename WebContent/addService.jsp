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
<div class="col-sm-offset-5 col-sm-4" style="border: solid;border-color: #e72424;margin-top: 50px;">
         <div class="form-group">
         <form action="serviceAdd.jsp" method="post">
            <div>
               <label class="MyLabel" style="margin-top: 25px;">Service Title:</label>
               <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
               <input type="text" class="form-control" name="service_title" placeholder="Enter Service Title" />
               </div>
            </div>
            <div>
               <label class="MyLabel" style="margin-top: 25px;">Address:</label>
               <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
               <input type="text" class="form-control" name="address" placeholder="Enter Address" />
               </div>
            </div>
            <div>
               <label class="MyLabel" style="margin-top: 25px;">Contact:</label>
               <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
               <input type="text" class="form-control" name="contact" placeholder="Enter Contact" />
               </div>
            </div>
            <div>
               <label class="MyLabel" style="margin-top: 25px;">Price:</label>
               <div class="input-group">
               <span class="input-group-addon"><i class="fa fa-envelope"></i></span>
               <input type="text" class="form-control" name="price" placeholder="Enter Price" />
               </div>
            </div>
            <div class="dropdown" >
            <label class="MyLabel" style="margin-top: 25px;">Service Type:</label>
        <select name="service_type" style="height: 34px;width: 100%;margin-bottom: 15px;">
           <option value="Select">Select</option>
           <option value="Photographer">Photographer</option>
           <option value="Decorator">Decorator</option>
           <option value="DJ">DJ</option>
           <option value="Stylist">Stylist</option>
           <option value="Astrologer">Astrologer</option>
           <option value="Choreographer">Choreographer</option>
           <option value="Tent">Tent</option>
           <option value="Catering">Catering</option>
           <option value="Accesories">Accesories</option>
           <option value="Showman">Showman</option>
           <option value="Entertainer">Entertainer</option>
           <option value="Music">Music</option>
           <option value="Courtyard">Courtyard</option>
           <option value="Mehendi">Mehendi</option>
           <option value="Jewellery">Jewellery</option>
           <option value="Cake">Cake</option>
        </select>
       </div>
       <div class="form-group" style="margin-top: 15px;">
        <div class="col-sm-6 col-xs-6" style="pad">
   <button id="registerButton" type="submit" class="btn btn-info" style="background-color: #096d79;
   margin-left: 35px;margin-bottom: 25px;width: 140px;">Add</button>
       </div>
       <div class="col-sm-6 col-xs-6" style="padding-left: 0px;padding-right: 0px;">
   <button id="registerButton" type="submit" class="btn btn-danger" style="
   margin-left: 20px;margin-bottom: 25px;width: 140px;">Cancel</button>
       </div>
       </div> 
   </div>
   </form>
    </div>
</body>
</html>