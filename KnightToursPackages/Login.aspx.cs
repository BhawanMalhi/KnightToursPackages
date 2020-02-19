using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
namespace KnightToursPackages
{
    public partial class Login : System.Web.UI.Page
    {
        static string med = HttpContext.Current.Server.MapPath("~/Database");
        string conString = @"Data Source=(LocalDB)\mssqllocaldb;AttachDbFilename=" + med + "\\KnightTourManagmentSystem.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void  CallOnLoginDataSave(object sender,EventArgs e)
        {
            try
            {
                string email = Request["email"];
                string pass = Request["pwd"];
                if (checkLogin(email, pass))
                {
                    Server.Transfer("Survey.aspx",true);

                }
            }
            catch (Exception ex)
            {

            }

            Session["id"] = Request["email"];
       
        }

        public bool checkLogin(string email, string pass)
        {
            bool ch = false;
            try
            {
                string qry = "select * from UserDataTable where U_Email='" + email + "' and U_Password='" + pass + "'";
                SqlConnection con = new SqlConnection(conString);
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.Read())
                {

                    Session["ID"] = dr[0].ToString();
                    Session["EMAIL"] = dr[3].ToString();
                    Session["FNAME"] = dr[1].ToString();
                    Session["LNAME"] = dr[2].ToString(); ;
                    ch = true;
                }
                con.Close();


            }
            catch (Exception e)
            {

            }

            return ch;

        }

    }
}