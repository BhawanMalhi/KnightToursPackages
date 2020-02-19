using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace KnightToursPackages
{
    public partial class Packages : System.Web.UI.Page
    {
        
        string constring = "Server=(local);Database=Travel;User=Bob;Password=1234;";
        public string destination1, destination2, trans1, trans2;
        public double budget1, budget2;

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("AnotherPackages.aspx");

        }

        public int number;

        protected void Page_Load(object sender, EventArgs e)
        {
            string str= Session["AdventureType"].ToString();
            Label3.Text = str;
            number = Convert.ToInt32(Session["numb"]);
            try
            {
                SqlConnection conn = new SqlConnection();
                conn.ConnectionString = constring;
                conn.Open();
                //taking out the first destination
                string qryDest1 = "Select To_Place from TourTypeDataTable where To_Type = '"+str+"1'";
                SqlCommand pass = new SqlCommand(qryDest1, conn);
                destination1 = pass.ExecuteScalar().ToString();
              
                //taking out the first destination transporatation method
                string qryTrans1 = "Select To_Method from TourTypeDataTable where To_Type = '" + str + "1'";
                SqlCommand pass1 = new SqlCommand(qryTrans1, conn);
                 trans1 = pass1.ExecuteScalar().ToString();

                //taking out destination 1 budget
                string qryBudget1 = "Select To_Price from TourTypeDataTable where To_Type = '" + str + "1'";
                SqlCommand pass2 = new SqlCommand(qryBudget1, conn);
                budget1 = Convert.ToDouble(pass2.ExecuteScalar().ToString());

                //now the second destination
                string qryDest2 = "Select To_Place from TourTypeDataTable where To_Type = '" + str + "2'";
                SqlCommand pass3 = new SqlCommand(qryDest2, conn);
                 destination2 = pass3.ExecuteScalar().ToString();

                //tranporatation
                string qryTrans2 = "Select To_Method from TourTypeDataTable where To_Type = '" + str + "2'";
                SqlCommand pass4 = new SqlCommand(qryTrans2, conn);
                trans2 = pass4.ExecuteScalar().ToString();

                //now the price
                string qryBudget2 = "Select To_Price from TourTypeDataTable where To_Type = '" + str + "2'";
                SqlCommand pass5 = new SqlCommand(qryBudget2, conn);
                budget2 = Convert.ToDouble(pass5.ExecuteScalar().ToString());


                conn.Close();
                Label6.Text = destination1;
                Label7.Text = trans1;
                Label8.Text = budget1.ToString();
                Label9.Text = destination2;
                Label10.Text = trans2;
                Label11.Text = budget2.ToString();
            }
            catch (Exception ex)
            {
                Response.Redirect("There was some error!!!!!!!"+ex.Message);
            }



        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Session["dest"] = destination1;
            Session["method"] = trans1;
            Session["price"] = budget1;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }
        protected void Button2_Click(object sender, EventArgs e)
        {

            Session["dest"] = destination2;
            Session["method"] = trans2;
            Session["price"] = budget2;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }

    }
}