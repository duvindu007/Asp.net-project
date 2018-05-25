using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class Lecturer : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from LECTURER ");
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

        protected void Register_Click(object sender, EventArgs e)
        {
            try { 


            if ((lec_name.Text != "") || (username_.Text != "") || (password_.Text != "") || (email_.Text != "") || (phone_.Text != "")) {

                DbService conn = new DbService();
                Boolean a = conn.Check("select * from LECTURER where UserName='" + username_.Text + "'");
                if (a == false)
                {



                    conn.OpenConnection();
                    conn.ExecuteQueries("Insert into LECTURER(Name,Phone,Email,UserName,Password_) values ('" + lec_name.Text + "','" + phone_.Text + "','" + email_.Text + "','" + username_.Text + "','" + password_.Text + "') ");
                    conn.CloseConnection();
                    Response.Redirect("Lecturer.aspx");

                }
                else {
                    Label1.Text = "User Name allready exist";
                    Label1.ForeColor = System.Drawing.Color.Red;




                }




            }
            else {
                Label1.Text = "Please fill all the text boxes";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }catch (SqlException ex)
            {
                if (ex !=null) {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");


                }
            }

}

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {

                if (LecId_.Text != "")
                {

                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("delete from LECTURER  where Lec_ID =" + LecId_.Text + "");
                    conn.CloseConnection();
                    Response.Redirect("Lecturer.aspx");

                }
                else
                {

                    Label2.Text = "Please fill Lecturer id";
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
            try
            {
                Session["Name"] = null;
                Response.Redirect("LogIn.aspx");
            }
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