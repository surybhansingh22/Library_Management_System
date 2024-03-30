using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class SearchBook : System.Web.UI.Page
    {
        
        protected void Page_Load(object sender, EventArgs e)
        {

        }

       

        protected void Button1_Click1(object sender, EventArgs e)
        {

            string s = "SELECT * FROM BookData WHERE Book_Id = " + TextBox1.Text + "" +"OR Book_Name = '"+ TextBox1.Text +"'" +"OR Author = '"+ TextBox1.Text +"' ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('No Records found')</script>");
            }
            else
            {
                BookIssue();
                Label1.Text = ds.Tables[0].Rows[0][0].ToString();
                Label2.Text = ds.Tables[0].Rows[0][1].ToString();
                Label3.Text = ds.Tables[0].Rows[0][2].ToString();
                Label4.Text = ds.Tables[0].Rows[0][3].ToString();
                Label5.Text = ds.Tables[0].Rows[0][4].ToString();
            }
            TextBox1.Text = "";
        }

        private void BookIssue()
        {
            string s = "SELECT * FROM Book_issue WHERE Book_Id = " + TextBox1.Text + "";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label6.Text = "Book Issued Zero times ";
                Panel1.Visible = false;
            }
            else
            {
               GridView1.DataSource = ds;
                GridView1.DataBind();
                Label6.Text = "";
                Panel1.Visible = true;
            }
        }
    }
}