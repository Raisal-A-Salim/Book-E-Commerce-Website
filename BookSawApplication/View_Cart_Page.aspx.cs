using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookSawApplication
{
    public partial class View_Cart_Page : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                bind_grid();
            }
        }
        public void bind_grid()
        {
            string get_cart_details_query = "SELECT Cart_Table.Cart_ID, Product_Table.Pdt_Image, Product_Table.Pdt_Name, Cart_Table.Subtotal, Cart_Table.Quantity, Product_Table.Price FROM Cart_Table INNER JOIN Product_Table ON Cart_Table.Pdt_ID = Product_Table.Pdt_ID WHERE Cart_Table.Cart_Status = 1 AND User_ID = " + Session["Reg_ID"];
            DataSet ds = obj.Fn_DataSet(get_cart_details_query);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
    }
}