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
    public partial class MyBooks : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            int myId = Convert.ToInt32(Session["Loginid"].ToString());

            string status = "Issued";
            string s = "SELECT  Book_Id, Date_of_issue, Date_of_submission FROM Book_issue WHERE Student_id = " + myId + " AND  status = '"+ status +"' ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Book is Not Issued yet')</script>");
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }
        }

       
    }
}