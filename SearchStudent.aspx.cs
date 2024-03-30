using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class SearchStudent : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox2.Enabled = false;
            TextBox3.Enabled = false;
            TextBox4.Enabled = false;
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string s = "SELECT * FROM Student_Data WHERE Student_id = " + TextBox1.Text + " ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('No Records found')</script>");
            }
            else
            {

                TextBox2.Text = ds.Tables[0].Rows[0][1].ToString();
                TextBox3.Text = ds.Tables[0].Rows[0][0].ToString();
                TextBox4.Text = ds.Tables[0].Rows[0][2].ToString();
            }
            TextBox1.Text = "";
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
              TextBox2.Text = "-";
              TextBox3.Text = "-";
              TextBox4.Text = "-";
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string s = "update Student_login set Student_Name = '" + TextBox3.Text + "' where Student_id = "+TextBox2.Text+"";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            stData();
            TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
            Response.Write("<script>alert('Student Record Updated')</script>");

        }

        private void stData()
        {
            string s = "update Student_data set Student_Name = '" + TextBox3.Text + "' where Student_id = " + TextBox2.Text + "";
            DataCon dc = new DataCon();
            dc.Setdata(s);
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            TextBox3.Enabled = true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            String s = "delete from Student_data where Student_id = "+TextBox2.Text+"";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            stLogindlt();
        }

        private void stLogindlt()
        {
            String s = "delete from Student_login where Student_id = " + TextBox2.Text + "";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            TextBox2.Text = TextBox3.Text = TextBox4.Text = "";
        }
    }
}