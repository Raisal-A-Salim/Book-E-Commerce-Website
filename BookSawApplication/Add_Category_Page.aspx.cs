using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookSawApplication
{
    public partial class Add_Category : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Add_Category_Button_Click(object sender, EventArgs e)
        {
            string Category_Img_Path = "~/Img/" + FileUpload1.FileName;
            FileUpload1.SaveAs(MapPath(Category_Img_Path));

            string query_ins_Category = "INSERT INTO Category_Table VALUES('" + TextBox1.Text + "','" + Category_Img_Path + "','" + TextBox2.Text + "','Active')";
            int is_ins_Category = obj.Fn_NonQuery(query_ins_Category);
            
            string message = (is_ins_Category == 1) ? "Added new category successfully!" : "Couldn't add category";
            ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);
        }
    }
}