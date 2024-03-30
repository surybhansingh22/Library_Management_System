using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class AddAdmin1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "insert into AdminLogin values('"+ TextBox1.Text +"','" + TextBox2.Text + "','" + TextBox3.Text + "')";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            Response.Write("<script>alert('Admin registered successfully')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
        }
    }
}