using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace BookSawApplication
{
    public partial class User_Register : System.Web.UI.Page
    {
        ConCls obj = new ConCls();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                Bind_States();
                Bind_Districts();
            }
        }
        public void Bind_States()
        {
            string s = "SELECT * FROM State_Table";
            DataSet ds = obj.Fn_DataSet(s);
            DropDownList1.DataSource = ds;
            DropDownList1.DataTextField = "State_Name";
            DropDownList1.DataValueField = "State_ID";
            DropDownList1.DataBind();
            DropDownList1.Items.Insert(0, new System.Web.UI.WebControls.ListItem("--Select State--", "0"));
        }
        public void Bind_Districts(string State_ID = "0")
        {
            string s = "";
            if (State_ID == "0")
            {
                DropDownList2.Items.Clear();
                DropDownList2.Items.Insert(0, new System.Web.UI.WebControls.ListItem("--Select District--", "0"));
            }
            else
            {
                s = "SELECT * FROM District_Table WHERE State_ID =" + State_ID;
                DataSet ds = obj.Fn_DataSet(s);
                DropDownList2.DataSource = ds;
                DropDownList2.DataTextField = "District_Name";
                DropDownList2.DataValueField = "District_ID";
                DropDownList2.DataBind();
            }
        }
        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string State_ID = DropDownList1.SelectedValue;
            Bind_Districts(State_ID);
        }
        protected void Register_User_Button_Click(object sender, EventArgs e)
        {
            string query_max_Reg_ID = "SELECT MAX(Reg_ID) FROM Login_Table";
            string max_Reg_ID = obj.Fn_Scalar(query_max_Reg_ID);
            int New_Reg_ID;
            if (max_Reg_ID == "")
                New_Reg_ID = 1;
            else
                New_Reg_ID = Convert.ToInt32(max_Reg_ID) + 1;
            string State_ID = DropDownList1.SelectedValue;
            string District_ID = DropDownList2.SelectedValue;
            string query_ins_user = "INSERT INTO User_Table VALUES(" + New_Reg_ID + ",'" + TextBox1.Text + "'," + TextBox2.Text + ",'" + TextBox3.Text + "'," + TextBox4.Text + "," + State_ID + "," + District_ID + ", NULL, NULL, 'active')";
            int is_ins_user = obj.Fn_NonQuery(query_ins_user);
            if (is_ins_user == 1)
            {
                string query_ins_login = "INSERT INTO Login_Table VALUES(" + New_Reg_ID + ",'" + TextBox5.Text + "','" + TextBox6.Text + "','user')";
                int is_ins_login = obj.Fn_NonQuery(query_ins_login);

                string message = (is_ins_login == 1) ? "Registered new user successfully!" : "Couldn't add user";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);
            }
            else
            {
                string message = "Couldn't add user";
                ScriptManager.RegisterStartupScript(this, GetType(), "showalert", $"alert('{message}');", true);
            }
        }
    }
}