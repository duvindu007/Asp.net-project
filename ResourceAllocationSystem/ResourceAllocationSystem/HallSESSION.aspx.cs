﻿using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class ClassSESSION : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {

                lblsuccess.Text = "" + Session["Name"].ToString() + "";


            }
            else
            {
                Response.Redirect("LogIn.aspx");


            }
            if (!this.IsPostBack)
            {
                this.BindGrid();
            }
        }


        private void BindGrid()
        {
            try
            {
                DbService bind = new DbService();
                GridView1.DataSource = bind.ShowDataInGridView("select * from hall_session ");
                GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                if (ex != null)
                {
                    Session["LoadError"] = Convert.ToString(ex);

                    Response.Redirect("PageLoadError.aspx");
                }
            }

        }

        protected void ADD_Click(object sender, EventArgs e)
        {
            try { 

            if ((Session_id.Text != "") || (HallCode_.Text != "") || (LecCode_.Text != "") || (Note_.Text != ""))
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("insert into hall_session values(" + Session_id.Text + ",'" + HallCode_.Text + "','" + LecCode_.Text + "','" + Note_.Text + "')");
                conn.CloseConnection();
                Response.Redirect("HallSESSION.aspx");
            }
            else {

                Label1.Text = "Please fill all the text boxes";
                Label1.ForeColor = System.Drawing.Color.Red;

            }}
            catch (SqlException ex)
            {
                if (ex != null)
                {

                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }
        }
        protected void Button2_Click(object sender, EventArgs e)
        {
            try { 
            if ((deleteclasssession_.Text != ""))
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from hall_session where Session_ID=" + deleteclasssession_.Text + "");
                conn.CloseConnection();
                Response.Redirect("HallSESSION.aspx");



            }

            else
            {

                Label2.Text = "Please enter the Session id";
                Label2.ForeColor = System.Drawing.Color.Red;
            }

}
            catch (SqlException ex)
            {
                if (ex != null)
                {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");

                }

            }

        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            try
            {
                Session["Name"] = null;
                Response.Redirect("LogIn.aspx");
            }

            catch (Exception ex)
            {
                if (ex.InnerException!=null) {

                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");

                }

            }
        }
    }
}