﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;

namespace hrSystem
{
    public partial class LogIn : System.Web.UI.Page
    {

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string usrname = unLogIn.Text;
            string pass = pswLogIn.Text;

            SqlConnection sqlconn = new SqlConnection((@"Server=10.2.0.4;Initial Catalog=HR;Persist Security Info=False;User ID=dxcadmin;Password=dxcadmin12345!@#$%;"));
            sqlconn.Open();

            string qry = "select * from Employee where UserName='" + usrname + "' and Password='" + pass + "'";

            SqlCommand cmd = new SqlCommand(qry, sqlconn);

            SqlDataReader sdr = cmd.ExecuteReader();

            if(sdr.Read())
            {
                Label1.Text = "Login Success.......!";
                Response.Redirect("registration.aspx");
            }
            else
            {
                Label1.Text = "Unsuccessful";
            }

            sqlconn.Close();

        }
    }

    
}
   