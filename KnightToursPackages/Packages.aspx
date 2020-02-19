<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Packages.aspx.cs" Inherits="KnightToursPackages.Packages" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Packages</title>
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
        .auto-style4 {
            color: #000066;
            text-decoration: underline;
        }
    </style>
</head>
<body style=" vertical-align: middle">
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
            <br />
            <br />
            <br />
            <asp:Label ID="Label1" runat="server" Font-Bold="True" Font-Size="X-Large" Text="Available Options:"></asp:Label>
            <br />
            <br />
            <br />
            <asp:Label ID="Label2" runat="server" Text="You choosed:" Font-Bold="True"></asp:Label>
            <asp:Label ID="Label3" runat="server"></asp:Label>
            <br />
            <br />
            <strong>
                <div class="text-left" style="padding-left:20px; margin-left:250px; margin-right:250px">
            <asp:Label ID="Label4" runat="server" CssClass="auto-style4" Font-Bold="True" Text="Option1:"></asp:Label>
            </strong>
            <br />
            <strong>Destination:</strong> 
            <asp:Label ID="Label6" runat="server"></asp:Label>
            &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <asp:Image ID="Image1" runat="server" Height="200px" ImageUrl="~/images/travel1.jpg" style="float: right"/>
            <br />
            <strong>Transportion 
            by:</strong> 
            <asp:Label ID="Label7" runat="server"></asp:Label>
            <br />
            <strong>Budget:</strong>
            <asp:Label ID="Label8" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" Text="Go for this option" OnClick="Button1_Click" class="btn btn-primary" />
            <br />
            <br /></div>
            <strong>
                <div class="text-right" style="padding-right:20px; margin-left:250px; margin-right:250px">
            <asp:Label ID="Label5" runat="server" CssClass="auto-style4" Font-Bold="True" Text="Option2:"></asp:Label>
            </strong>
            <br />
            <strong>Destination:</strong> 
            <asp:Label ID="Label9" runat="server"></asp:Label>
            <br />
            <strong>Transportation by:</strong>
            <asp:Label ID="Label10" runat="server"></asp:Label>
                    <br />
                    <asp:Image ID="Image2" runat="server" Height="200px" ImageUrl="~/images/travel3.jpg" style="float:left"/>
            <strong>&nbsp;Budget:
    
            </strong>
    
            <asp:Label ID="Label11" runat="server"></asp:Label>
            <br />
            <br />
            <asp:Button ID="Button2" runat="server" Text="Go for this option" OnClick="Button2_Click" class="btn btn-primary"/>
            </div><br />
            <br />
            <br />
            <br />
            <asp:Button ID="Button3" runat="server" Text="Other options" OnClick="Button3_Click" class="btn btn-primary"/>
            <br />
            <br />
            <br />
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
