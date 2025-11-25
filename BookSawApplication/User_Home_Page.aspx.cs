using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookSawApplication
{
    public partial class User_Home_Page : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Categories();
            }
        }
        public void Bind_Categories()
        {
            string query_getCato = "SELECT * FROM Category_Table";
            DataSet ds = obj.Fn_DataSet(query_getCato);
            DataList1.DataSource = ds;
            DataList1.DataBind();
        }

        protected void ImageButton1_Command(object sender, CommandEventArgs e)
        {
            Session["Cato_ID"] = e.CommandArgument;
            Response.Redirect("Products_Per_Category.aspx");
        }
    }
}