using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace BookSawApplication
{
    public partial class Add_To_Cart : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                string get_prod_query = "SELECT * FROM Product_Table WHERE Pdt_ID=" + Session["Pdt_ID"];
                SqlDataReader dr = obj.Fn_DataReader(get_prod_query);
                while (dr.Read())
                {
                    Image1.ImageUrl = dr["Pdt_Image"].ToString();
                    Label1.Text = dr["Pdt_Name"].ToString();
                    Label2.Text = "Rs. " + dr["Price"].ToString();
                    Label3.Text = dr["Pdt_Description"].ToString();
                }
            }
        }
        protected void Button3_Click(object sender, EventArgs e)
        {
            int qty = Convert.ToInt32(TextBox1.Text);
            string price_query = "SELECT Price FROM Product_Table WHERE Pdt_ID=" + Session["Pdt_ID"];
            int price = Convert.ToInt32(obj.Fn_Scalar(price_query));
            int sub_total = qty * price;

            string add_to_cart_query = "INSERT INTO Cart_Table VALUES(" + Session["Reg_ID"] + "," + Session["Pdt_ID"] + "," + qty + "," + sub_total + ",1)";
            int i = obj.Fn_NonQuery(add_to_cart_query);

            string message = (i == 1) ? "Added to cart successfully!" : "Couldn't add to cart";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("View_Cart_Page.aspx");
        }
    }
}