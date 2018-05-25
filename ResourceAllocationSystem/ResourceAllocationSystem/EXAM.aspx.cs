using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class EXAM : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from EXAM");
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

        protected void Add_Click(object sender, EventArgs e)
        {
            try { 

            if ((BatchCode_.Text != "") || (Examduration_.Text != "") || (date_.Text != "") || (Starttime_.Text != "") || (Endtime_.Text != "") || (HallCode_.Text != "") || (Exam_Type.Text != "") || (ModuleCode_.Text != "")||(Instructorid_.Text!=""))
            {
                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("insert into Exam (BATCH_code,Exam_Duration,date_,Start_Time_,End_Time_,Hall_Code,Exam_type,Module_Code,instructor_id  ) values ('" + BatchCode_.Text + "','" + Examduration_.Text + "','" + date_.Text + "','" + Starttime_.Text + "','" + Endtime_.Text + "','" + HallCode_.Text + "','" + Exam_Type.Text + "','" + ModuleCode_.Text + "','"+Instructorid_.Text+"')");
                conn.CloseConnection();


                Response.Redirect("EXAM.aspx");



            }

            else {

                Label1.Text = "Please fill all the text boxes";
                Label1.ForeColor = System.Drawing.Color.Red;

            }
            }
            catch (SqlException ex)
            {
                if (ex !=null) {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }




        }


        protected void Button2_Click(object sender, EventArgs e) {

            try { 
            if (deleteExam_.Text != "") {
                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from EXAM where Exam_ID=" + deleteExam_.Text + "");
                conn.CloseConnection();

                Response.Redirect("EXAM.aspx");
            }
            else {
                    Label2.Text = "Plese enter the Exam Id";
                    Label2.ForeColor = System.Drawing.Color.Red;


            } } catch (SqlException ex)
            {
                if (ex !=null) {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");

                }

            }


        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            try {
            Session["Name"] = null;
            Response.Redirect("LogIn.aspx"); }
            catch (Exception ex)
            {
                if (ex.InnerException != null)
                {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if ((Eid_.Text!="")||(thedate_.Text!=""))
                {
                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("update EXAM set date_='"+thedate_.Text+"' where Exam_ID=" + Eid_.Text + "");
                    conn.CloseConnection();

                    Response.Redirect("EXAM.aspx");
                }
                else
                {
                    Label4.Text = "Plese enter date and exam id both";
                    Label4.ForeColor = System.Drawing.Color.Red;


                }
            }
            catch (Exception ex)
            {
                if (ex != null)
                {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");

                }

            }
        }



    }
}