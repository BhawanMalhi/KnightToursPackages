<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Survey.aspx.cs" Inherits="KnightToursPackages.Survey" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Survey</title>
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
    </style>
</head>
<body>
      
            <nav class="navbar fixed-top navbar-expand-sm navbar-dark bg-dark">
                <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#nav-content" aria-controls="nav-content" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>

                <!-- Brand -->
                Travel Planners

                <!-- Links -->
                <div class="collapse navbar-collapse" id="nav-content">
                    <ul class="navbar-nav">

                        <li class="nav-item active" >
                            <a class="nav-link "  onclick="goToSurvey()" role="button" aria-haspopup="true" aria-expanded="false">
                                Check Survey
                            </a>
                        </li>


                    </ul>
                    <ul class="navbar-nav ml-auto">
                        <li class="nav-item">
                            <a class="nav-link " onclick="goToRegister()">Register</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" onclick="goToLogin()">Login</a>
                        </li>
                    </ul>
            </nav>

      
   
    <!-- Set body height so that scrollbars grow -->



    <div class="container col-lg-6 offset-lg-3" id="part1">
        <h2>Finish the survey and we will show you the best packages for you!!</h2>
        <form id="form1" runat="server">


            <div class="form-group ">
                <label for="fname">First Name:</label>
                <input type="text" class="form-control" id="fname" value="" placeholder="Enter First Name" name="fname" disabled>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>

            <div class="form-group ">
                <label for="lname">Last Name:</label>
                <input type="text" class="form-control" id="lname"  value="" placeholder="Enter Last Name" name="lname" disabled>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>


            <div class="form-group">
                <label for="price">Budget Price:</label>
                <input type="number" class="form-control" min="0" id="price" placeholder="Enter Budget" name="price" required>
                <div class="valid-feedback">Valid.</div>
                <div class="invalid-feedback">Please fill out this field.</div>
            </div>


            <div class="form-group">
                <label for="qty">Number Of Travelers:</label>
                <!--<input type="number" class="form-control" id="qty" placeholder="Enter Traveler" name="qty" required>-->
                
                <br />
                
            </div>

            <div class="form-group">
                <label for="cat">
                <br />
                <asp:TextBox ID="TextBox1" runat="server"></asp:TextBox>
                <br />
                Trip Category:<br />
                <asp:DropDownList ID="DropDownList1" runat="server" name="cat">
                    <asp:ListItem>Adventure</asp:ListItem>
                    <asp:ListItem>Cultural</asp:ListItem>
                    <asp:ListItem>Mountains</asp:ListItem>
                    <asp:ListItem>Fun and Frolic</asp:ListItem>
                </asp:DropDownList>
                <br />
                </label>
&nbsp;<!--<select class="form-control" name="cat" id="cat">
                    <option>Adventure</option>
                    <option>Cultural</option>
                    <option>Fun and Frolic</option>
                    <option>Food and Cuisine</option>
                   
                </select>-->
            </div>



            <br />
            <br />
            <br />
            <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Go" class="btn btn-primary" />
            <br />
            <br />



            <!--<button type="button" class="btn btn-primary"   onclick="getSurvayData()">Get Package</button>-->
        </form>
    </div>
                  <div id="part2">

                  </div>

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
