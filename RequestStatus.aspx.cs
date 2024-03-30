using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class RequestStatus : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

            int myId = Convert.ToInt32(Session["Loginid"].ToString());
            //int myId = 1001;



            string s = "SELECT  Book_Name, Date_of_req, Status FROM BookRequest WHERE Student_id = " + myId + " ";
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
    }
}