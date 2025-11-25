using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookSawApplication
{
    public partial class Admin_Register : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void Register_Admin_Button_Click(object sender, EventArgs e)
        {
            string query_max_Reg_ID = "SELECT MAX(Reg_ID) FROM Login_Table";
            string max_Reg_ID = obj.Fn_Scalar(query_max_Reg_ID);
            int New_Reg_ID;
            if (max_Reg_ID == "")
                New_Reg_ID = 1;
            else
                New_Reg_ID = Convert.ToInt32(max_Reg_ID) + 1;

            string query_ins_admin = "INSERT INTO Admin_Table VALUES(" + New_Reg_ID + ",'" + TextBox1.Text + "','" + TextBox2.Text + "'," + TextBox3.Text + ")";
            int is_ins_admin = obj.Fn_NonQuery(query_ins_admin);
            if (is_ins_admin == 1)
            {
                string query_ins_login = "INSERT INTO Login_Table VALUES(" + New_Reg_ID + ",'" + TextBox4.Text + "','" + TextBox5.Text + "','admin')";
                int is_ins_login = obj.Fn_NonQuery(query_ins_login);

                string message = (is_ins_login == 1) ? "Registered new admin successfully!" : "Couldn't add admin";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);
            }
            else
            {
                string message = "Couldn't add admin";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);
            }
        }
    }
}