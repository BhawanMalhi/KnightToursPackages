<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="invoice.aspx.cs" Inherits="KnightToursPackages.invoice" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Invoice</title>
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
            color: #FFFF99;
        }
        .auto-style2 {
            font-size: x-large;
        }
        .auto-style3 {
            font-size: medium;
        }
        .auto-style4 {
            color: #003399;
        }
        .auto-style6 {
            font-family: harrington;
            font-size: x-large;
        }
    </style>
</head>
<body>
     <nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Brand -->
                <span class="auto-style1">Travel Planners

                <!-- Links -->
                </span>
                <div class="collapse navbar-collapse" id="nav-content">
                    <ul class="navbar-nav">

                        <li class="nav-item active" >
                            <a class="nav-link "  onclick="goToSurvey()" role="button" aria-haspopup="true" aria-expanded="false" style="color: #FFFF99">
                                Check Survey
                            </a>
                        </li>


                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link " onclick="goToRegister()" style="color: #FFFF99">Register</a><span class="auto-style1"> </span>
                        </li>
                        <li class="nav-item">
                            <a style="color: #FFFF99" onclick="goToLogin()">Login</a><span class="auto-style1"> </span>
                        </li>
                       
                    </ul>

            </nav>
    <form id="form1" runat="server">
        <div class="text-center">
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<span class="auto-style6"><strong>YOUR TOUR PLAN</strong></span><span class="auto-style2"><br />
&nbsp; </span><span class="auto-style3">Thanks for choosing <strong>
            <asp:Label ID="Label1" runat="server"></asp:Label>
            </strong>.Your tour will start on specified date and time ,You will reach your destinaton through airplane.The tickets will be booked by us .You will recieve all your booking information on your email once the payment is done.<br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="Here is your information:"></asp:Label>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <strong>&nbsp; <span class="auto-style4">Destination</span></strong>:<strong><asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <asp:Image ID="Image2" runat="server" Height="256px" ImageUrl="~/images/tag.jpg" Width="216px" style="float:left; margin-left:180px;" />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Traveling method</span>:<asp:Label ID="Label4" runat="server"></asp:Label>
            <asp:Image ID="Image3" runat="server" Height="330px" ImageUrl="~/images/tag2.jpg" Width="248px" style="float:right; margin-right:180px;" />
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">&nbsp; Your trip cost/person:</span> $<asp:Label ID="Label5" runat="server"></asp:Label>
            &nbsp;
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Air ticket cost/person:</span>
            <asp:Label ID="Label6" runat="server" Text="$1430"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Insurance/person:</span> $60<br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">Total number of passeneger: </span>
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <br />
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <span class="auto-style4">&nbsp;Total tour cost +Tax:&nbsp; </span>$<asp:Label ID="Label8" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Proceed" class="btn btn-primary" OnClick="Button1_Click"/>
            </strong></span>
        </div>
    </form>
              <script src="http://ajax.googleapis.com/ajax/libs/jquery/1.8.3/jquery.min.js" type="text/javascript"></script>
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

                  function getSurvayData()
                  {
                             $.ajax({
            type: "POST",
            url: "Survey.aspx/GetProductDataTable",
            data: '{typ: "' + $("#cat").val() + '",bud: "' + $("#price").val() + '",tra: "' + $("#qty").val() + '" }',
        contentType: "application/json; charset=utf-8",
        dataType: "json",
        success: OnSuccess,
        failure: function (response) {
            alert(response.d);
        }
    });
 
                             function OnSuccess(response) {
                                 $("#part1").hide();
                                 $("#part2").show();


                                 var m = response.d;
                                 var res = m.split("&&&&&ESCAPECHARACTER&&&&&&");
                                 if (res[0] == "GoToLoginPage")
                                 {
                                    
                                     window.location.href = "Login.aspx";
                                 }
                                 var table = document.getElementById('part2');
                                     var rowid = 0;
                                     var j = 1;
                                     var dat="<h1>Packages</h1><br>";
                                     for (var i = 0; i < res.length - 1; i++) {
                                         dat = dat + "<div class='container-fluid'><div class='row'><div class='col-lg-2  bg-dark'><br /><p style='color:white'>  Package No '" + (j) + "' </p> </div>";
                                         dat = dat + "<div class='col-lg-8 bg-success'><br /><p>'" + res[i + 1] + "' Day Package By '" + res[i + 3] + "' To '" + res[i + 4] + "' For '" + res[i + 2] + "' People  </p></div>";
                                         dat = dat + "<div class='col-lg-2 bg-warning'><span class='col-lg-6'>$ '" + res[0] + "'</span><button class='col-lg-6 btn btn-primary'>Apply</button><br /></div></div> </div><br />";
                                         j = j + 1;
                                         i = i + 4;
                                     }
                                     if (j == 1)
                                     {
                                         dat="<br><h1 style='text-align:center;background-color:Pink;'>There Is No Package Available Related To Your Survey...</h1><br>"
                                     }
                                     $(table).append(dat);

                                 }

                             
                  }
     
                  function getNameData() {
                      $.ajax({
                          type: "POST",
                          url: "Survey.aspx/GetNameData",
                          <%--// data: '{name: "' + $("#<%=txtUserName.ClientID%>")[0].value + '" }',--%>
                          contentType: "application/json; charset=utf-8",
                          dataType: "json",
                          success: function (response) {
                              var m = response.d;
                              var dat = m.split("&&&&ESCAPECHARACTER&&&&");
                              document.getElementById("fname").value = dat[0];
                              document.getElementById("lname").value = dat[1];
                          },
                          failure: function (response) {
                              alert(response.d);
                          }
                      });
                  }


                      $(document).ready(function () {
                          //window.location.href = "AddUserData.aspx";        $("#p2").hide();
                          $("#part2").hide();
                          $("#part1").show();
                          getNameData();
                      });

                      function goToSurvey()
                      {
                          window.location.href="Survey.aspx";
                      }

                      function goToLogin() {
                          window.location.href="Login.aspx";
                      }

                      function goToRegister() {
                          window.location.href="Register.aspx";
                      }

    </script>
</body>
</html>
