using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class AddBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            myautoid();
            
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            string book = "Yes";
            string s = "insert into BookData values("+TextBox5.Text+",'"+TextBox6.Text+"','"+TextBox7.Text+"','"+TextBox8.Text+"','"+book+"')";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            Response.Write("<script>alert('Book Added')</script>");
            TextBox5.Text = TextBox6.Text = TextBox7.Text = TextBox8.Text = "";
            myautoid();
        }
        protected void myautoid()
        {
            string s = "select * from BookData order by Book_Id desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0 )
            {
                TextBox5.Text = "1";
            }
            else
            {
                TextBox5.Text = (Convert.ToInt32(ds.Tables[0].Rows[0][0].ToString()) + 1).ToString();
            }
        }

        
    }
}