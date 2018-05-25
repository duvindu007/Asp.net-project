using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class STUDENT : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from STUDENT ");
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


            if ((NsbmIdnumber_.Text != "") || (Degree_.Text != "") || (GroupNumber_.Text != "") || (UserName_.Text != "") || (Password_.Text != "")) { 

                      DbService conn = new DbService();
              Boolean a=  conn.Check("select * from STUDENT where UserName='"+UserName_.Text+"'");

                if (a == false)
                {

                    conn.OpenConnection();
                    conn.ExecuteQueries("insert into STUDENT values('" + NsbmIdnumber_.Text + "','" + Degree_.Text + "','" + GroupNumber_.Text + "','" + UserName_.Text + "','" + Password_.Text + "')");
                    conn.CloseConnection();

                    Response.Redirect("STUDENT.aspx");


                }

                else {

                    Label1.Text = "User name allready exist";
                    Label1.ForeColor = System.Drawing.Color.Red;

                }
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

        protected void Button2_Click(object sender, EventArgs e)
        {

            try { 

            if ((Nsbmid_.Text != ""))
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from STUDENT where NSBM_ID='" + Nsbmid_.Text + "'");
                conn.CloseConnection();
                Response.Redirect("STUDENT.aspx");

            }
            else
            {
                Label2.Text = "Please enter the NSBM ID";
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