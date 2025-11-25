using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookSawApplication
{
    public partial class Products_Per_Category : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Products();
            }
        }
        public void Bind_Products()
        {
            string query_getCato = "SELECT * FROM Product_Table WHERE Cato_ID=" + Session["Cato_ID"];
            DataSet ds = obj.Fn_DataSet(query_getCato);
            DataList2.DataSource = ds;
            DataList2.DataBind();
        }
        protected void ImageButton2_Command(object sender, CommandEventArgs e)
        {
            Session["Pdt_ID"] = e.CommandArgument;
            Response.Redirect("Add_To_Cart_Page.aspx");
        }
    }
}