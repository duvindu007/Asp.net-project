using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class SESSION : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from SESSION_");
                GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                if (ex  != null)
                {
                   
                    
                        Session["LoadError"] = Convert.ToString(ex);

                        Response.Redirect("PageLoadError.aspx");
                 
                    }

            }


        }

        protected void Register_Click(object sender, EventArgs e)
        {
            try { 

            if ((Duration_.Text != "") || (date_.Text != "") || (Starttime_.Text != "") || (Endtime_.Text != "") || (BATCHCode_.Text != "") || (ModuleCode_.Text != ""))
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("insert into SESSION_(Duration,date_,Start_Time,End_Time,BATCH_Code,Module_Code) values('"+Duration_.Text+"','"+date_.Text+"','"+Starttime_.Text+"','"+Endtime_.Text+"','"+BATCHCode_.Text+"','"+ModuleCode_.Text+"')");
                conn.CloseConnection();

                Response.Redirect("SESSION.aspx");




            }
            else {


                Label1.Text = "Please fill all the text boxes";
                Label1.ForeColor = System.Drawing.Color.Red;




            }}
            catch (SqlException ex)
            {
                if (ex  != null)
                {

                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e) {

            try
            {
                if ((sid_.Text!="")||(Cdate_.Text!=""))
                {

                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("update SESSION_ set date_='"+Cdate_+"' where Session_ID=" + sid_.Text + "");
                    conn.CloseConnection();
                    Response.Redirect("SESSION.aspx");



                }

                else
                {

                    Label4.Text = "Please enter the Session id";
                    Label4.ForeColor = System.Drawing.Color.Red;
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



        protected void Button2_Click(object sender, EventArgs e) {
            try { 
            if ((SessionID_.Text != ""))
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from SESSION_ where Session_ID=" + SessionID_.Text + "");
                conn.CloseConnection();
                Response.Redirect("SESSION.aspx");



            }

            else {

                Label2.Text = "Please enter the Session id";
                Label2.ForeColor = System.Drawing.Color.Red;
            }
}
            catch (SqlException ex)
            {
                if (ex  != null)
                {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }


        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            try { 
            Session["Name"] = null;
            Response.Redirect("LogIn.aspx");}
            catch (Exception ex)
            {
                if (ex.InnerException != null)
                {

                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }
        }
    }
}