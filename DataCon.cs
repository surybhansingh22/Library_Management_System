﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.SqlClient;
using System.Data;

namespace Library_Management_System
{
    public class DataCon
    {
        SqlConnection con;
        SqlCommand cmd;
        SqlDataAdapter da;

        public DataCon()
        {
            con = new SqlConnection(@"Data Source=LAPTOP-M6VC8BCJ\SQLEXPRESS;Initial Catalog=Library_management_system;Integrated Security=True");
            con.Open();
        }
        public void Setdata( string s )
        {
            cmd = new SqlCommand( s , con);
            cmd.ExecuteNonQuery();
        }
        public DataSet Getdata( string s)
        {
            DataSet ds = new DataSet();
            da = new SqlDataAdapter(s,con);
            da.Fill(ds);
            return ds;
        }

        public string[] GeneratingDates()
        {
            DateTime currentDate = DateTime.Now;
            DateTime futureDate = currentDate.AddMonths(1);

            string currentDateString = currentDate.ToShortDateString();
            string futureDateString = futureDate.ToShortDateString();

            string[] dateArray = { currentDateString, futureDateString };
            return dateArray;
        }
    }
}