using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using KnightToursPackages.Models;
namespace KnightToursPackages
{
    public partial class Survey : System.Web.UI.Page
    {
        static string med = HttpContext.Current.Server.MapPath("~/Database");
        static string conString = @"Data Source=(LocalDB)\mssqllocaldb;AttachDbFilename=" + med + "\\KnightTourManagmentSystem.mdf;Integrated Security=True";

        protected void Page_Load(object sender, EventArgs e)
        {

        }



        [System.Web.Services.WebMethod]
        public static string GetNameData()
        {
            return HttpContext.Current.Session["fname"] + "&&&&ESCAPECHARACTER&&&&" + HttpContext.Current.Session["lname"];
        }
        [System.Web.Services.WebMethod]
        public static string GetProductDataTable(string typ,string bud,string tra)
        {
            try
            {
                if (HttpContext.Current.Session["ID"] != null)
                {
                    insertTravelerData(typ, bud, tra);
                    //    return RedirectToAction("ShowPackages", "Home", new
                    //    {
                    //        type = typ,
                    //        budj = bud,
                    //        trav = tra
                    //    });
                  return  getPackageData(typ, bud, tra);
                }
            }
            catch (Exception e)
            {

            }
            return "GoToLoginPage";
        }
    

        public static string getPackageData(string type, string bud, string trav)
        {
            string data = "";
            List<TourTypeDataTable> dat = getTourData(type);
            foreach (var a in dat)
            {

                if (a.To_Price <= int.Parse(bud) && (int.Parse(trav) * a.To_Price) <= int.Parse(bud))
                {
                    TourPackage tp = new TourPackage();
                    int tempPrice = int.Parse(trav) * a.To_Price;
                    int day = 0;
                    int buj = 0;
                    int tempBuj = 0;
                    while (buj <= int.Parse(bud))
                    {
                        day++;
                        tempBuj = buj;
                        buj = day * tempPrice;

                    }
                    data+= tempBuj +"&&&&&ESCAPECHARACTER&&&&&&";
                    data += (day - 1)  +"&&&&&ESCAPECHARACTER&&&&&&";
                    data += int.Parse(trav) + "&&&&&ESCAPECHARACTER&&&&&&";
                    data += a.To_Method + "&&&&&ESCAPECHARACTER&&&&&&";
                    data += a.To_Place + "&&&&&ESCAPECHARACTER&&&&&&";
                   
                }

            }
            return data;
        }

        public static List<TourTypeDataTable> getTourData(string typ)
        {
            List<TourTypeDataTable> dat = new List<TourTypeDataTable>();
            try
            {
                string qry = "select * from TourTypeDataTable where To_Type='" + typ + "'";
                SqlConnection con = new SqlConnection(conString);
                SqlCommand cmd = new SqlCommand(qry, con);
                con.Open();
                SqlDataReader dr = cmd.ExecuteReader();
                while (dr.Read())
                {
                    TourTypeDataTable tp = new TourTypeDataTable();
                    tp.To_ID = int.Parse(dr[0].ToString());

                    tp.To_Type = dr[1].ToString();
                    tp.To_Price = int.Parse(dr[2].ToString());
                    tp.To_Place = dr[3].ToString();
                    tp.To_Method = dr[4].ToString();
                    dat.Add(tp);
                }
                con.Close();


            }
            catch (Exception e)
            {

            }
            return dat;
        }
        public static void insertTravelerData(string typ, string bud, string qty)
        {
            try
            {
                string qry = "insert into TourSurveyDataTable values(" + int.Parse(HttpContext.Current.Session["ID"].ToString()) + ",'" + typ + "'," + int.Parse(bud) + "," + int.Parse(qty) + ")";
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

        protected void Button1_Click(object sender, EventArgs e)
        {
            String type= DropDownList1.SelectedValue;
            Session["AdventureType"] = type;
            Session["numb"] = TextBox1.Text;
            Response.Redirect("Packages.aspx");
            
        }
    }
}