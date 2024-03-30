using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Library_Management_System
{
    public partial class BookIssue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            TextBox3.Enabled = TextBox4.Enabled = false;
            DataCon dataCon = new DataCon();
            string[] dateArr = dataCon.GeneratingDates();
            string currentDate = dateArr[0];
            string futureDate = dateArr[1];
            TextBox3.Text = currentDate;
            TextBox4.Text = futureDate;

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            string s = "SELECT * FROM BookData WHERE Book_Id = " + TextBox1.Text + " ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Book is Not Registerd yet')</script>");
            }
            else
            {
                string p = "SELECT * FROM Student_Data WHERE Student_id = " + TextBox2.Text + " ";
                DataCon dc1 = new DataCon();
                DataSet ds1 = new DataSet();
                ds1 = dc1.Getdata(p);
                if (ds1.Tables[0].Rows.Count == 0)
                {
                    Response.Write("<script>alert('No Student Records found')</script>");
                }
                else
                {
                    string status = "Issued";
                    string q = "SELECT * FROM Book_issue WHERE Book_Id = " + TextBox1.Text + " AND status = '" + status + "' ";
                    DataCon dc2 = new DataCon();
                    DataSet ds2 = new DataSet();
                    ds2 = dc2.Getdata(q);
                    if (ds2.Tables[0].Rows.Count == 0)
                    {
                        book_issue();
                    }
                    else
                    {
                        Response.Write("<script>alert('Book Already Issued')</script>");
                    }
                }
            }
        }

        private void book_issue()
        {
            string status = "Issued";
            string s = "Insert into Book_issue values (" + TextBox1.Text + "," + TextBox2.Text + ",'" + TextBox3.Text + "','" + TextBox4.Text + "','" + status + "')";
            DataCon dc = new DataCon();
            dc.Setdata(s);
            setBook_no();
            getBook();
            stData();
            TextBox1.Text = TextBox2.Text = "";
            Response.Write("<script>alert('Book Issued Successfully')</script>");
        }

        private void getBook()
        {
            string s = "SELECT * FROM BookData WHERE Book_Id = " + TextBox1.Text + " ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            ViewState["Bookname"] = ds.Tables[0].Rows[0][1].ToString();

        }

        private void stData()
        {
            string bookname = ViewState["Bookname"].ToString();
            string s = "update Student_data set Book_Issued = '" + bookname + "' where Student_id = " + TextBox2.Text + "";
            DataCon dc = new DataCon();
            dc.Setdata(s);
        }

        private void setBook_no()
        {
            string book = "No";
            string s = "update BookData set Available = '" + book + "' where Book_Id = " + TextBox1.Text + "";
            DataCon dc = new DataCon();
            dc.Setdata(s);
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            string status = "Issued";
            string s = "SELECT * FROM Book_issue WHERE Book_Id = " + TextBox5.Text + " AND status = '" + status + "' ";
            DataCon dc = new DataCon();
            DataSet ds = new DataSet();
            ds = dc.Getdata(s);
            if (ds.Tables[0].Rows.Count == 0)
            {
                Response.Write("<script>alert('Book is Not Issued yet')</script>");
            }
            else
            {
                Label2.Text = ds.Tables[0].Rows[0][1].ToString();
                Label3.Text = ds.Tables[0].Rows[0][2].ToString();
                Label4.Text = ds.Tables[0].Rows[0][3].ToString();
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            if (Label2.Text == "-" || Label3.Text == "-" || Label4.Text == "-")
            {
                Response.Write("<script>alert('Search Book First')</script>");
            }
            else
            {
                string status = "Submitted";
                string status1 = "Issued";
                String s = "update Book_issue set status = '" + status + "' where Book_Id = " + TextBox5.Text + " and status = '" + status1 + "'";
                DataCon dc = new DataCon();
                dc.Setdata(s);
                setbook_yes();
                removebook();
                TextBox5.Text = "";
                Label2.Text = Label3.Text = Label4.Text = "-";
            }
        }

        private void removebook()
        {
            string bookname = "No";
            string s = "update Student_data set Book_Issued = '" + bookname + "' where Student_id = " + Label2.Text + "";
            DataCon dc = new DataCon();
            dc.Setdata(s);
        }

        private void setbook_yes()
        {
            string book = "Yes";
            string s = "update BookData set Available = '" + book + "' where Book_Id = " + TextBox5.Text + "";
            DataCon dc = new DataCon();
            dc.Setdata(s);
        }
    }
}