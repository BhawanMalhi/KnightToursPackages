<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Register.aspx.cs" Inherits="KnightToursPackages.Register" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
        <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
    <!-- Optional theme -->
    <!-- jQuery library -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

    <!-- Popper -->
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

    <!-- Latest compiled and minified Bootstrap JavaScript -->
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>
    <style scoped>
            /* body {
        height:2000px;
        background-image:url('/pix/samples/bubble1.gif');
        } */
            body {
                padding-top: 70px;
                background-image: url("./images/world.jpg");
                background-repeat: no-repeat;
                background-size: cover;
            }
        .auto-style1 {
            color: #FFFFCC;
        }
    </style>

</head>
<body>
        <nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Brand -->
            <span class="auto-style1">Travel Planner</span>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="nav-content">
            <ul class="navbar-nav">

                <li class="nav-item ">
                    <a class="nav-link "  role="button" aria-haspopup="true" onclick="goToSurvey()" aria-expanded ="false">
                        Check Survey
                    </a>
                </li>


            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link active" onclick="goToRegister()" >Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" onclick="goToLogin()" >Login</a>
                </li>
            </ul>
    </nav>

    <form id="form1" runat="server">
    <div >
        <br>
            <br>
        <div class="container offset-col-3 col-lg-6" style="background-color: white">
            
        <h2>Add User Data</h2>
    <%--    <form action="/Home/CallOnRegisterationDataSave" class="needs-validation" novalidate>
    --%>        <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>

            <div class="form-group">
                <label for="fname">First Name:</label>
                <input type="text" class="form-control" id="fname" placeholder="Enter first name" name="fname" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>

            <div class="form-group">
                <label for="lname">Last Name:</label>
                <input type="text" class="form-control" id="lname" placeholder="Enter last name" name="lname" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>



            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
     <%--     //  <button type="submit" class="btn btn-primary">Submit</button>--%>
       <asp:Button ID="AddUser" runat="server" Text="Add User"  class="btn btn-primary" OnClick="CallOnRegisterationDataSave" alt="Add Password" border="0">
                    
                    </asp:Button>
            <br>
    </div>

    </div>
    </form>

    </body>
</html>
