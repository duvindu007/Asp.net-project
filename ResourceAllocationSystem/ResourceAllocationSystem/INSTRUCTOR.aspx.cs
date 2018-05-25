using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class INSTRUCTOR : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from INSTRUCTOR");
                GridView1.DataBind();
            }
            catch (Exception ex)
            {
                if (ex.InnerException != null)
                {
                    Session["LoadError"] = Convert.ToString(ex);

                    Response.Redirect("PageLoadError.aspx");
                }
            }

        }

        protected void Register_Click(object sender, EventArgs e)
        {

            try { 

            if ((Nsbm_ID.Text != "") || (UserName_.Text != "") || (Password_.Text != "")) { 

                DbService conn = new DbService();
              Boolean a=  conn.Check("select * from INSTRUCTOR where Ins_Uname = '"+UserName_.Text+"'");

                if (a == false)
                {



                    conn.OpenConnection();
                    conn.ExecuteQueries("insert into INSTRUCTOR values ('" + Nsbm_ID.Text + "','" + UserName_.Text + "','" + Password_.Text + "')");
                    conn.CloseConnection();

                    Response.Redirect("INSTRUCTOR.aspx");

                }
                else {

                    Label1.Text = "User name already exist";
                    Label1.ForeColor = System.Drawing.Color.Red;


                }



            }
            else {

                Label1.Text = "Please fill all the text boxes";
                Label1.ForeColor = System.Drawing.Color.Red;



            }}
            catch (Exception ex)
            {
                if (ex.InnerException != null)
                {

                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }
        }

        protected void Button2_Click(object sender, EventArgs e) {

            try { 

            if (deleteIns_.Text != "")
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from INSTRUCTOR where NSBM_ID ='" + deleteIns_.Text + "'");

                conn.CloseConnection();

                Response.Redirect("INSTRUCTOR.aspx");


            }

            else {


                Label2.Text = "Please enter the Nsbm id";
                Label2.ForeColor = System.Drawing.Color.Red;

            }
}
            catch (Exception ex)
            {
                if (ex.InnerException!=null) {
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