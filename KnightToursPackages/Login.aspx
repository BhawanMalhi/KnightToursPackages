<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="KnightToursPackages.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Login</title>
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
                background-image: url("./images/back.jpg");
            }
            .auto-style1 {
            left: 2px;
            top: -27px;
            width: 1928px;
            height: 1242px;
        }
    </style>
</head>
<body>
     <nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-dark">
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <!-- Brand -->
         <a href="#"><span class="text-white">Travel Planners</span></a>

        <!-- Links -->
        <div class="collapse navbar-collapse" id="nav-content">
            <ul class="navbar-nav">

                <li class="nav-item ">
                    <a class="nav-link "  onclick="goToSurvey()" role="button" aria-haspopup="true" aria-expanded="false">
                        Check Survey
                    </a>
                </li>


            </ul>
            <ul class="navbar-nav ml-auto">
                <li class="nav-item">
                    <a class="nav-link" onclick="goToRegister()">Register</a>
                </li>
                <li class="nav-item">
                    <a class="nav-link active" onclick="goToLogin()">Login</a>
                </li>
            </ul>
    </nav>

    <!-- Set body height so that scrollbars grow -->




    <div class="container">
        <form  runat="server" class="needs-validation" novalidate>
        <br>
        <br>
        <h2>Login</h2>
            <div class="form-group">
                <label for="email">Email:</label>
                <input type="email" class="form-control" id="email" placeholder="Enter email" name="email" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>



            <div class="form-group">
                <label for="pwd">Password:</label>
                <input type="password" class="form-control" id="pwd" placeholder="Enter password" name="pwd" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>
                <asp:Button ID="AddUser" runat="server" Text="Login"  class="btn btn-primary" OnClick="CallOnLoginDataSave" alt="Add Password" border="0">
                    
                    </asp:Button>
  
        </form>
    </div>

    <script>
              // Disable form submissions if there are invalid fields
              (function() {
                'use strict';
                window.addEventListener('load', function() {
                  // Get the forms we want to add validation styles to
                  var forms = document.getElementsByClassName('needs-validation');
                  // Loop over them and prevent submission
                  var validation = Array.prototype.filter.call(forms, function(form) {
                    form.addEventListener('submit', function(event) {
                      if (form.checkValidity() === false) {
                        event.preventDefault();
                        event.stopPropagation();
                      }
                      form.classList.add('was-validated');
                    }, false);
                  });
                }, false);
              })();
    
              function goToSurvey() {
                  window.location.href = "Survey.aspx";
              }

              function goToLogin() {
                  window.location.href = "Login.aspx";
              }

              function goToRegister() {
                  window.location.href = "Register.aspx";
              }

        
        </script>







</body>
</html>
