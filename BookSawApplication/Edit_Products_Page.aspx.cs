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
    public partial class Edit_Products_Page : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Categories_1();
            }
        }
        public void Bind_Categories_1()
        {
            string query_category_bind = "SELECT * FROM Category_Table";
            DataSet ds = obj.Fn_DataSet(query_category_bind);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "Cato_Name";
            DropDownList1.DataValueField = "Cato_ID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new System.Web.UI.WebControls.ListItem("--Select Category--", "0"));
        }
        public void Bind_Categories_2()
        {
            string query_category_bind = "SELECT * FROM Category_Table";
            DataSet ds = obj.Fn_DataSet(query_category_bind);
            DropDownList2.DataSource = ds;
            DropDownList2.DataTextField = "Cato_Name";
            DropDownList2.DataValueField = "Cato_ID";
            DropDownList2.DataBind();
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            Bind_Grid();
            Panel1.Visible = false;
        }
        public void Bind_Grid()
        {
            string query_grid = "SELECT * FROM Product_Table WHERE Cato_ID=" + DropDownList1.SelectedValue;
            DataSet ds = obj.Fn_DataSet(query_grid);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            ViewState["Pdt_ID"] = rw.Cells[1].Text;

            Bind_Categories_2();

            string query_Details = "SELECT * FROM Product_Table WHERE Product_Table.Pdt_ID=" + ViewState["Pdt_ID"];
            SqlDataReader dr = obj.Fn_DataReader(query_Details);
            while (dr.Read())
            {
                TextBox1.Text = dr["Pdt_Name"].ToString();
                ViewState["Pdt_Image"] = dr["Pdt_Image"].ToString();
                Image1.ImageUrl = ViewState["Pdt_Image"].ToString();
                TextBox2.Text = dr["Pdt_Description"].ToString();
                DropDownList2.SelectedValue = dr["Cato_ID"].ToString();
                TextBox3.Text = dr["Price"].ToString();
                TextBox4.Text = dr["Stock"].ToString();
                if (dr["Pdt_Status"].ToString().ToLower() == "available")
                    RadioButtonList1.SelectedValue = "1";
                else
                    RadioButtonList1.SelectedValue = "0";
            }
            Panel1.Visible = true;
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Pdt_Status = "";
            if (RadioButtonList1.SelectedValue == "0")
                Pdt_Status = "Unavailable";
            else
                Pdt_Status = "Available";

            string Cato_ID = DropDownList2.SelectedValue;

            string image_path = "~/Img/" + FileUpload1.FileName;
            string query_update_product = "";
            if (image_path == "~/Img/")
                query_update_product = "UPDATE Product_Table SET Pdt_Name='" + TextBox1.Text + "', Cato_ID=" + Cato_ID + ", Pdt_Description='" + TextBox2.Text + "', Pdt_Status='" + Pdt_Status + "', Price=" + TextBox3.Text + ", Stock=" + TextBox4.Text + " WHERE Pdt_ID=" + ViewState["Pdt_ID"];
            else
            {
                query_update_product = "UPDATE Product_Table SET Pdt_Name='" + TextBox1.Text + "', Cato_ID=" + Cato_ID + ", Pdt_Image='" + image_path + "', Pdt_Description='" + TextBox2.Text + "', Pdt_Status='" + Pdt_Status + "', Price=" + TextBox3.Text + ", Stock=" + TextBox4.Text + " WHERE Pdt_ID=" + ViewState["Pdt_ID"];
                FileUpload1.SaveAs(MapPath(image_path));
            }
            
            int i = obj.Fn_NonQuery(query_update_product);

            string message = (i == 1) ? "Updated product successfully!" : "Couldn't update product";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);

            Image1.ImageUrl = image_path;
            Bind_Grid();
        }
    }
}
//last edited the image path saving and else case