using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class Groups : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from GROUP_");
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

        protected void Add_to_the_Group_Click(object sender, EventArgs e)
        {
            try { 
            if ((BATCHCode_.Text != "") || (NumberOfStudent_.Text != ""))
            {

                DbService conn = new DbService();

                conn.OpenConnection();
                conn.ExecuteQueries("insert into GROUP_ (BATCH_code,NumberOfStudent) values ('" + BATCHCode_.Text+ "'," + Convert.ToInt32(NumberOfStudent_.Text) + ")");
                conn.CloseConnection();
                Response.Redirect("Groups.aspx");


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

        protected void Remove_Group_Click1(object sender, EventArgs e) {
            try { 
            if (Deletegroup_.Text!="") {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from  GROUP_ where Group_id ="+ Deletegroup_.Text+" ");
                conn.CloseConnection();
                Response.Redirect("Groups.aspx");

            }
            else {
                Label2.Text = "Please enter the Group id";
                Label2.ForeColor = System.Drawing.Color.Red;
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

        protected void Logout_Click(object sender, EventArgs e)
        {
            try { 
            Session["Name"] = null;
            Response.Redirect("LogIn.aspx");}
            catch (Exception ex)
            {
                if (ex.InnerException!=null)
                {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");

                }

            }
        }
        protected void Button1_Click1(object sender, EventArgs e) {

            try
            {
                if ((Gid_.Text!="")||(Number_of_students_.Text!=""))
                {

                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("update GROUP_  set NumberOfStudent="+Number_of_students_.Text+"  where Group_id =" + Gid_.Text + " ");
                    conn.CloseConnection();
                    Response.Redirect("Groups.aspx");

                }
                else
                {
                    Label3.Text = "Please enter Group id and Number of students";
                    Label3.ForeColor = System.Drawing.Color.Red;
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





    }
}