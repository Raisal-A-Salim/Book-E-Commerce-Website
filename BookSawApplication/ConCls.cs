using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data;
using System.Data.SqlClient;

namespace BookSawApplication
{
    public class ConCls
    {
        SqlConnection con;
        SqlCommand cmd;
        public ConCls()
        {
            con = new SqlConnection(@"server=RICHU\SQLEXPRESS;database=shoppingsite;integrated security=true");
        }
        public int Fn_NonQuery(string query)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            cmd = new SqlCommand(query, con);
            con.Open();
            int i = cmd.ExecuteNonQuery();
            con.Close();
            return i;
        }
        public string Fn_Scalar(string query)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            cmd = new SqlCommand(query, con);
            con.Open();
            string s = cmd.ExecuteScalar().ToString();
            con.Close();
            return s;
        }
        public SqlDataReader Fn_DataReader(string query)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            cmd = new SqlCommand(query, con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            return dr;
        }
        public DataSet Fn_DataSet(string query)
        {
            if (con.State == ConnectionState.Open)
                con.Close();
            SqlDataAdapter da = new SqlDataAdapter(query, con);
            DataSet ds = new DataSet();
            da.Fill(ds);
            return ds;
        }
    }
}