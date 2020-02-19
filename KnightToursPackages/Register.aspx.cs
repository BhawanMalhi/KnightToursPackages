using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KnightToursPackages
{
    public partial class Register : System.Web.UI.Page
    {
       static string med = HttpContext.Current.Server.MapPath("~/Database");
        string conString = @"Data Source=(LocalDB)\mssqllocaldb;AttachDbFilename=" + med + "\\KnightTourManagmentSystem.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void CallOnRegisterationDataSave(object sender, EventArgs e)
        {
            try
            {
                string fname = Request["fname"];
                string lname = Request["lname"];
                string email = Request["email"];
                string pass = Request["pwd"];
                insertRegistrationDataSave(fname, lname, email, pass);
            }
            catch (Exception ex)
            { }

            Server.Transfer("Login.aspx", true);

        }
        public void insertRegistrationDataSave(string fname, string lname, string email, string pass)
        {
            try
            {
                string qry = "insert into UserDataTable values('" + fname + "','" + lname + "','" + email + "','" + pass + "')";
                SqlConnection con = new SqlConnection(conString);
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                cmd.ExecuteNonQuery();
                con.Close();
            }
            catch (Exception e)
            {

            }
        }



    }
}