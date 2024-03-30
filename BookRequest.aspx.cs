using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class BookRequest : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string s = "SELECT  * FROM BookRequest order by Request_ID ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Label1.Text = "No Request Generated";
            }
            else
            {
                GridView1.DataSource = ds;
                GridView1.DataBind();
            }

        }
        public void Reject(object sender, CommandEventArgs e)
        {
            string rid = e.CommandName.ToString();
            string s;
            string status = "Rejected";
            s = "Update BookRequest set Status ='"+ status +"' where Request_ID="+ rid +"";
            DataCon dc = new DataCon();
            dc.Setdata(s);

            Response.Redirect("BooKRequest.aspx");
            Response.Write("<script>alert('Request Rejected')</script>");
        }
        public void Accept(object sender, CommandEventArgs e)
        {
            string rid = e.CommandName.ToString();
            string s;
            string status = "Accepted";
            s = "Update BookRequest set Status ='"+ status +"' where Request_ID="+ rid +"";
            DataCon dc = new DataCon();
            dc.Setdata(s);

            Response.Redirect("BooKRequest.aspx");
            Response.Write("<script>alert('Request Accepted')</script>");
        }
        public void Resolved(object sender, CommandEventArgs e)
        {
            string rid = e.CommandName.ToString();
            string s = "SELECT * FROM BookRequest where Request_ID="+ rid +"";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            Session["BookName"] = ds.Tables[0].Rows[0][0].ToString();
            Session["BookAuthor"] = ds.Tables[0].Rows[0][1].ToString();
            Session["BookSubject"] = ds.Tables[0].Rows[0][2].ToString();
            Session["ReqID"] = rid;
            Response.Redirect("AddBook2.aspx");
        }
    }
}