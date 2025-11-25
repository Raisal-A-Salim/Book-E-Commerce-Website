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
    public partial class Edit_Category_Page : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_Grid();
            }
        }
        public void Bind_Grid()
        {
            string query_grid = "SELECT * FROM Category_Table";
            DataSet ds = obj.Fn_DataSet(query_grid);
            GridView1.DataSource = ds;
            GridView1.DataBind();
        }
        protected void GridView1_SelectedIndexChanging(object sender, GridViewSelectEventArgs e)
        {
            GridViewRow rw = GridView1.Rows[e.NewSelectedIndex];
            ViewState["Cato_ID"] = rw.Cells[1].Text;

            string query_Details = "SELECT * FROM Category_Table WHERE Cato_ID=" + ViewState["Cato_ID"];
            SqlDataReader dr = obj.Fn_DataReader(query_Details);
            while (dr.Read())
            {
                TextBox1.Text = dr["Cato_Name"].ToString();
                ViewState["Cato_Image"] = dr["Cato_Image"].ToString();
                Image1.ImageUrl = ViewState["Cato_Image"].ToString();
                TextBox2.Text = dr["Cato_Description"].ToString();
                if (dr["Cato_Status"].ToString().ToLower() == "active")
                    RadioButtonList1.SelectedValue = "1";
                else
                    RadioButtonList1.SelectedValue = "0";
            }
            Panel1.Visible = true;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            string Cato_Status = "";
            if (RadioButtonList1.SelectedValue == "1")
                Cato_Status = "Active";
            else
                Cato_Status = "Inactive";

            string image_path = "~/Img/" + FileUpload1.FileName;
            string query_update_category = "";
            if (image_path == "~/Img/")
                query_update_category = "UPDATE Category_Table SET Cato_Name='" + TextBox1.Text + "', Cato_Description='" + TextBox2.Text + "', Cato_Status='" + Cato_Status + "' WHERE Cato_ID=" + ViewState["Cato_ID"];
            else
            {
                query_update_category = "UPDATE Category_Table SET Cato_Name='" + TextBox1.Text + "', Cato_Image='" + image_path + "', Cato_Description='" + TextBox2.Text + "', Cato_Status='" + Cato_Status + "' WHERE Cato_ID=" + ViewState["Cato_ID"];
                FileUpload1.SaveAs(MapPath(query_update_category));
            }
            int i = obj.Fn_NonQuery(query_update_category);
            
            string message = (i == 1) ? "Updated category successfully!" : "Couldn't update category";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);

            Bind_Grid();
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            Panel1.Visible = false;
        }
    }
}

//last edited the image path saving and else case