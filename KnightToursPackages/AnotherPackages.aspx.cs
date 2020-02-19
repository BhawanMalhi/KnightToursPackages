using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnightToursPackages
{
    public partial class AnotherPackages : System.Web.UI.Page
    {

        public int number;
        protected void Page_Load(object sender, EventArgs e)
        {
            number = Convert.ToInt32(Session["numb"]);
        }

        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {
            Session["dest"] = "Philippines";
            Session["method"] = "Road";
            Session["price"] = 1600;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }

        protected void ImageButton2_Click(object sender, ImageClickEventArgs e)
        {
            Session["dest"] = "England";
            Session["method"] = "Plane";
            Session["price"] = 1800;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }

        protected void ImageButton3_Click(object sender, ImageClickEventArgs e)
        {
            Session["dest"] = "Peru";
            Session["method"] = "Train";
            Session["price"] = 1500;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }

        protected void ImageButton4_Click(object sender, ImageClickEventArgs e)
        {
            Session["dest"] = "Italy";
            Session["method"] = "Plane";
            Session["price"] = 2010;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }

        protected void ImageButton5_Click(object sender, ImageClickEventArgs e)
        {
            Session["dest"] = "Greece";
            Session["method"] = "Rail";
            Session["price"] = 1950;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }

        protected void ImageButton6_Click(object sender, ImageClickEventArgs e)
        {
            Session["dest"] = "China";
            Session["method"] = "road";
            Session["price"] = 1850;
            Session["people"] = number;
            Response.Redirect("invoice.aspx");
        }
    }
}