using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class AddStudent1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myautoid();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            string s = "insert into Student_login values(" + TextBox5.Text + ",'" + TextBox6.Text + "','" + TextBox7.Text + "')";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            stData();
            Response.Write("<script>alert('Student registered successfully')</script>");
            TextBox5.Text = TextBox6.Text = TextBox7.Text = "";
            myautoid();
        }
        protected void myautoid()
        {
            string s = "select * from Student_login order by Student_id desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                TextBox5.Text = "1001";
            }
            else
            {
                TextBox5.Text = (Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1).ToString();
            }
        }
        protected void stData()
        {
            string book = "No";
            string s = "insert into Student_Data values('"+ TextBox6.Text +"'," + TextBox5.Text + ",'"+book+"')";
            DataCon dc = new DataCon();
            dc.Setdata(s);
        }
    }
}