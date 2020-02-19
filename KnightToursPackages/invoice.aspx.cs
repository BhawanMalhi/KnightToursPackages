using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace KnightToursPackages
{
    public partial class invoice : System.Web.UI.Page
    {
        public double price;
        public int persons;
        public double total;
        protected void Page_Load(object sender, EventArgs e)
        {
            Label1.Text = Session["dest"].ToString();
            Label3.Text = Session["dest"].ToString();
            Label4.Text = Session["method"].ToString();
            price = Convert.ToDouble(Session["price"]);
            Label5.Text = price.ToString();
            persons = Convert.ToInt32(Session["people"]);
            Label7.Text = persons.ToString();
            double incTax = price + (price*0.13);
            total = incTax + (1430.0*persons) + (60.0*persons);
            Label8.Text = total.ToString();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Redirect("Payment.aspx");
        }
    }
}