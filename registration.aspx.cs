using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace hrSystem
{
    public partial class registration : System.Web.UI.Page
    {
        SqlConnection sqlconn = new SqlConnection((@"Server=10.2.0.4;Initial Catalog=HR;Persist Security Info=False;User ID=dxcadmin;Password=dxcadmin12345!@#$%;"));
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Reset_Click(object sender, EventArgs e)
        {
            Clear();
        }
        void Clear()
        {
            fn.Text = sn.Text = ln.Text = dpt.Text = eID.Text = mng.Text = un.Text = psw.Text = "";
        }

        protected void Register_Click(object sender, EventArgs e)
        {
            if (sqlconn.State == ConnectionState.Closed)
            {
                sqlconn.Open();

                SqlCommand cmd = sqlconn.CreateCommand();
                cmd.CommandType = CommandType.Text;
                cmd.CommandText = "Insert into Employee values ('" + fn.Text + "','" + sn.Text + "', '" + ln.Text + "', '" + dpt.Text + "', '" + eID.Text + "', '" + mng.Text + "', '" + un.Text + "', '" + psw.Text + "')";
                cmd.ExecuteNonQuery();
                sqlconn.Close();
                Clear();
                Response.Write("Successful registration");

            }
        }
    }
}