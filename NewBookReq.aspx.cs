using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class NewBookReq : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            DateTime currentDate = DateTime.Now;
            string formattedDate = currentDate.ToShortDateString();
            int myId = Convert.ToInt32(Session["Loginid"].ToString());
            string status = "Pending";
            int RID = RequestId();
            string s = "insert into BookRequest values ('"+TextBox1.Text+"','"+TextBox2.Text+"','"+TextBox3.Text+"','"+ formattedDate + "',"+myId+",'"+status+"',"+RID+")";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            Response.Write("<script>alert('Request Generated')</script>");
            TextBox1.Text = TextBox2.Text = TextBox3.Text = "";
        }
        protected int RequestId()
        {
            string s = "select * from BookRequest order by Request_ID desc";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            int r = 1;
            if (ds.Tables[0].Rows.Count == 0)
            {
                
                return r;
            }
            else
            {
                r = (Convert.ToInt32(ds.Tables[0].Rows[0][6].ToString()) + 1);
                return r;
            }
        }
    }
}