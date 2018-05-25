using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class Lab : System.Web.UI.Page
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
            try { 
            DbService bind = new DbService();
            GridView1.DataSource = bind.ShowDataInGridView("select * from Lab");
            GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                if (ex != null) { 
                Session["LoadError"] = Convert.ToString(ex);

                Response.Redirect("PageLoadError.aspx");}

            }

        }

        protected void Add_Click(object sender, EventArgs e)
        {
            try
            {
                if ((Labfacilities_.Text !="") || (Availibility_.Text !=""))
                {

                    if (Availibility_.Text.Equals("Yes") || Availibility_.Text.Equals("No"))
                    {

                        DbService conn = new DbService();
                        conn.OpenConnection();
                        conn.ExecuteQueries("insert into Lab(Lab_facilities,Availibility) values('" + Labfacilities_.Text + "','" + Availibility_.Text + "')");
                        conn.CloseConnection();

                        Response.Redirect("Lab.aspx");


                    }
                    else {

                        Label4.Text = "Please Enter Yes or No only";
                        Label4.ForeColor = System.Drawing.Color.Red;


                    }



                }
                else
                {
                    Label1.Text = "Please fill all the text boxes";
                    Label1.ForeColor = System.Drawing.Color.Red;

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

        protected void Button2_Click(object sender, EventArgs e)
        {
            try { 
            if (deletelab_.Text != "")
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from Lab where  Lab_id =" + deletelab_.Text + " ");
                conn.CloseConnection();
                Response.Redirect("Lab.aspx");




            }

            else
            {

                Label2.Text = "Please enter the Lab id";
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


        protected void StAvailibility_Click(object sender, EventArgs e) {


            try { 


            if (SetAvailibility_.Text != "" || Labid_.Text != "")
            {

                if (SetAvailibility_.Text.Equals("Yes") || SetAvailibility_.Text.Equals("No"))
                {


                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries(" exec chngava_lab " + Labid_.Text + ",'" + SetAvailibility_.Text + "'");
                    conn.CloseConnection();
                    Response.Redirect("Lab.aspx");



                }
                else
                {

                    Label5.Text = "Please enter Yes or No only";
                    Label5.ForeColor = System.Drawing.Color.Red;

                }

            }
            else {

                Label3.Text = "Please fill all the text boxes";
                Label3.ForeColor = System.Drawing.Color.Red;


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