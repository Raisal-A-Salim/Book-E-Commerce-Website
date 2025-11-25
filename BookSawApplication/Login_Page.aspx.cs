using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BookSawApplication
{
    public partial class Login_Page : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void LoginButton_Click(object sender, EventArgs e)
        {
            string query_count_Reg_ID = "SELECT COUNT(Reg_ID) FROM Login_Table WHERE Username='"+TextBox1.Text+"' AND Password='"+TextBox2.Text+"'";
            int count_Reg_ID = Convert.ToInt32(obj.Fn_Scalar(query_count_Reg_ID));
            if(count_Reg_ID == 1)
            {
                string query_Reg_ID = "SELECT Reg_ID FROM Login_Table WHERE Username='"+TextBox1.Text + "' AND Password='" + TextBox2.Text + "'";
                string Reg_ID = obj.Fn_Scalar(query_Reg_ID);
                Session["Reg_ID"] = Reg_ID;

                string query_Login_Type= "SELECT Login_Type FROM Login_Table WHERE Username='" + TextBox1.Text + "' AND Password='" + TextBox2.Text + "'";
                string Login_Type = obj.Fn_Scalar(query_Login_Type);
                if(Login_Type=="admin")
                {
                    Response.Redirect("Admin_Home_Page.aspx");
                    //Label1.Text = "admin";
                    //Label1.Visible = true;
                }
                else
                {
                    Response.Redirect("User_Home_Page.aspx");
                    //Label1.Text = "user";
                    //Label1.Visible = true;
                }
            }
            else
            {
                Label1.Text = "Invalid Username and Password!";
                Label1.Visible = true;
            }
        }
    }
}