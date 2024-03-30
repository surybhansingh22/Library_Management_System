using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Reflection.Emit;
using System.Threading;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class Login : System.Web.UI.Page
    {
       
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                // Initialize c and store it in ViewState
                ViewState["c"] = 1;
            }
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            DataCon dc  = new DataCon();
            string s = "select * from AdminLogin where Admin_ID = '"+ TextBox1.Text +"' and Admin_Pass = '"+ TextBox2.Text +"'";
            string s1 = "select * from Student_login where Student_id ='"+ TextBox1.Text +"' and Std_Pass = '"+ TextBox2.Text +"'";
            DataSet ds ,ds1 = new DataSet();
            ds = dc.Getdata(s);

            if (ds.Tables[0].Rows.Count == 0)
            {
                ds1 = dc.Getdata(s1);
                if (ds1.Tables[0].Rows.Count != 0)
                {
                    Session["Name"] = ds1.Tables[0].Rows[0][1].ToString();
                    Session["Loginid"] = ds1.Tables[0].Rows[0][0].ToString();
                    Session["Password"] = ds1.Tables[0].Rows[0][2].ToString();
                    Response.Redirect("Home2.aspx");
                }
                Response.Write("<script>alert('Invalid Username Or Password')</script>");
            }
            else
            {
                Session["Name"] = ds.Tables[0].Rows[0][0].ToString();
                Session["Loginid"] = ds.Tables[0].Rows[0][1].ToString();
                Session["Password"] = ds.Tables[0].Rows[0][2].ToString();
                Response.Redirect("Home1.aspx");
            }
        }


        protected void ImageButton1_Click(object sender, ImageClickEventArgs e)
        {

            // Retrieve the value of c from ViewState
            int c = (int)ViewState["c"];

            if (c == 1)
            {
                TextBox2.TextMode = TextBoxMode.SingleLine;
                c = 2;
                ImageButton1.ImageUrl = "HidePass.png";
            }
            else if (c == 2)
            {
                TextBox2.TextMode = TextBoxMode.Password;
                c = 1;
                ImageButton1.ImageUrl = "ShowPass.png";
            }

            // Update the value of c in ViewState
            ViewState["c"] = c;
        }
    }
}