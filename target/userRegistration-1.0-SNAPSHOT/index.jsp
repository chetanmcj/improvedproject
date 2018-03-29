<!-- <%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%> -->
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
 <link rel="stylesheet" href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/css/bootstrap.min.css">
 <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
 <script src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.7/js/bootstrap.min.js"></script>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>User Registration</title>
<style>

@import url('http://fonts.googleapis.com/css?family=Tangerine');

body
{
  background-image:url("http://hdwallpapersbuzz.com/wp-content/uploads/2017/03/lightbluewallpaper_16569.jpg");
  height: 100%; 

    /* Center and scale the image nicely */
    background-position: center;
    background-repeat: no-repeat;
    background-size: cover;
}
.head
{
  color:#080748;
  font-family:Tangerine,sans-serif;
  font-size:80px;
  font-weight:bold;
  
}

.myForm
{
   color:#191970;
   font-size:20px;
}
</style>
</head>

<body class="container">
    
      <h1 class="head">Sign Up</h1><br>
      <div class="row myForm">
        <div class="col-xs-6">

          <form name="UserRegistration" method="post" action="Validate" class="form-horizontal">
            <div class="form-group">
             <label class="col-xs-4">*First Name : </label>
              <div class="col-xs-6">
                <input type="text" class="form-control" name="first_name" placeholder="Enter first name" />
               </div></div>
            <div class="form-group">
            <label class="col-xs-4">Last Name : </label>
              <div class="col-xs-6">
                <input type="text" class="form-control" name="last_name" placeholder="Enter last name" />
              </div></div>
            <div class="form-group">
            <label class="col-xs-4">Phone No. : </label>
              <div class="col-xs-6">
                <input type="text" class="form-control" name ="phone" placeholder="Enter contact number" />
              </div></div>
            
            <div class="form-group">
            <label class="col-xs-4">DOB : </label>
              <div class="col-xs-6">
                <input type="text" class="form-control" name="dob" pattern="^(?:(?:31(\/|-|\.)(?:0?[13578]|1[02]|(?:Jan|Mar|May|Jul|Aug|Oct|Dec)))\1|(?:(?:29|30)(\/|-|\.)(?:0?[1,3-9]|1[0-2]|(?:Jan|Mar|Apr|May|Jun|Jul|Aug|Sep|Oct|Nov|Dec))\2))(?:(?:1[6-9]|[2-9]\d)?\d{2})$|^(?:29(\/|-|\.)(?:0?2|(?:Feb))\3(?:(?:(?:1[6-9]|[2-9]\d)?(?:0[48]|[2468][048]|[13579][26])|(?:(?:16|[2468][048]|[3579][26])00))))$|^(?:0?[1-9]|1\d|2[0-8])(\/|-|\.)(?:(?:0?[1-9]|(?:Jan|Feb|Mar|Apr|May|Jun|Jul|Aug|Sep))|(?:1[0-2]|(?:Oct|Nov|Dec)))\4(?:(?:1[6-9]|[2-9]\d)?\d{2})$" placeholder="DD/MM/YY"/></div>
                </div>
              
            <div class="form-group">
            <label class="col-xs-4">Gender : </label>
              <div class="col-xs-6">
                <input type="radio" name="gender" value="male"> Male
  <input type="radio" name="gender" value="female"> Female
            </div></div>
            <div class="form-group">
            <label class="col-xs-4">Address : </label>
              <div class="col-xs-6">
                <textarea class="form-control" name="address" placeholder="Enter address"></textarea>
              </div>
            </div>
            <div class="form-group">
            <label class="col-xs-4">City : </label>
              <div class="col-xs-6">
                <input type="text" class="form-control" name="city" placeholder="Enter city" />
              </div></div>
            <div class="form-group">
            <label class="col-xs-4">Country : </label>
              <div class="col-xs-6">
                <input type="text" class="form-control" name="country" placeholder="Enter country" />
              </div></div>
            <div class="form-group">
            <label class="col-xs-4">Email Id : </label>
              <div class="col-xs-6">
                <input type="email" class="form-control" name="email" placeholder="Enter email id" />
              </div></div>
            <div class="form-group">
            <label class="col-xs-4">Pincode : </label>
              <div class="col-xs-6">
                 <input type="" name="pin" pattern="[0-9]{4}" maxlength="4" class="form-control" placeholder="Enter pincode" />
              </div></div>
            
            <div class="form-group">
            <label class="col-xs-4">*Username : </label>
              <div class="col-xs-6">
                <input type="text" class="form-control" name="username" placeholder="Enter username" />
              </div></div>
            <div class="form-group">
            <label class="col-xs-4">*Password : </label>
              <div class="col-xs-6">
                <input type="password" class="form-control" name="pwd"  placeholder="Enter a password" />
              </div></div>
            <div style="margin-left:200px;">
            <button class="btn btn-primary">Submit</button>&nbsp;&nbsp;
            <button class="btn btn-default" onclick="index.jsp">Cancel</button>
            </div>
             </div>
         </form>
      
    </div>
    </div>
  </body>

</html>