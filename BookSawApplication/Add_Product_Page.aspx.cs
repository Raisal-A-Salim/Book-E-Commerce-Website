using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookSawApplication
{
    public partial class Add_Product : System.Web.UI.Page
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
            string query_category_bind = "SELECT * FROM Category_Table";
            DataSet ds = obj.Fn_DataSet(query_category_bind);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Cato_Name";
            DropDownList1.DataValueField = "Cato_ID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new System.Web.UI.WebControls.ListItem("--Select Category--", "0"));
        }
        protected void Add_Product_Button_Click(object sender, EventArgs e)
        {
            string Product_Img_Path = "~/Img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(Product_Img_Path));

            string Cato_ID = DropDownList1.SelectedValue;
            string query_ins_Product = "INSERT INTO Product_Table VALUES(" + Cato_ID + ",'" + TextBox1.Text + "','" + Product_Img_Path + "','" + TextBox2.Text + "'," + TextBox3.Text + "," + TextBox4.Text + ",'Available')";
            int is_ins_Product = obj.Fn_NonQuery(query_ins_Product);

            string message = (is_ins_Product == 1) ? "Added new product successfully!" : "Couldn't add product";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);
        }
    }
}