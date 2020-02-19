<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Payment.aspx.cs" Inherits="KnightToursPackages.Payment" %>

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
            }
        .auto-style1 {
            width: 749px;
        }
        .auto-style2 {
            width: 318px;
        }
        .auto-style3 {
            width: 180px;
            text-align: justify;
        }
        .auto-style4 {
            width: 100%;
            max-width: 1140px;
            min-width: 992px;
            text-align: center;
            margin-left: auto;
            margin-right: auto;
            padding-left: 15px;
            padding-right: 15px;
        }
        .auto-style5 {
            width: 180px;
            text-align: left;
        }
    </style>
</head>
<body>
     <form id="form1" runat="server">
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




    <div class="auto-style4">
    <h1 style="text-align:center">Select the payment option:</h1>
       &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;


        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        

        <br />
        <asp:ImageButton ID="ImageButton1" runat="server" Height="151px" ImageUrl="~/images/credit.png" OnClick="ImageButton1_Click" Width="265px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton2" runat="server" Height="155px" ImageUrl="~/images/debit.jpg" OnClick="ImageButton2_Click" Width="219px" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:ImageButton ID="ImageButton3" runat="server" ImageUrl="~/images/paypal.png" OnClick="ImageButton3_Click" Height="149px" Width="221px" />
        <br />
        <br />
        <br />
        <table align="center" class="auto-style1">
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label1" runat="server" Text="Cardholder Name" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox1" runat="server" Width="254px" Visible="False"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label2" runat="server" Text="Card Number" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox2" runat="server" Width="253px" Visible="False"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style5">
                    <asp:Label ID="Label3" runat="server" Text="Expiry Date" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox3" runat="server" CssClass="mt-0" Width="253px" Visible="False"></asp:TextBox>
                    <br />
                </td>
                <td>
                    &nbsp;</td>
            </tr>
            <tr>
                <td class="auto-style3">
                    <asp:Label ID="Label4" runat="server" Text="CVV" Visible="False"></asp:Label>
                </td>
                <td class="auto-style2">
                    <asp:TextBox ID="TextBox4" runat="server" CssClass="mt-0" Width="253px" Visible="False"></asp:TextBox>
                </td>
                <td>
                    &nbsp;</td>
            </tr>
        </table>
        <br />
&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;
            <asp:Button ID="Button2" runat="server" Text="Proceed to Pay" OnClick="Button1_Click" class="btn btn-primary" Visible="False" />
            <br />
&nbsp;&nbsp;&nbsp;
        <br />
&nbsp;&nbsp;&nbsp;


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







     </form>







</body>
</html>
