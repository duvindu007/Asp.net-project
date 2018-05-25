using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class Hall : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from HALL");
                GridView1.DataBind();
            }
            catch (Exception ex)
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
            if ( (Hallcapacity_.Text !="") || (Availibility_.Text !=""))
            {

                if ((Availibility_.Text.Equals("Yes")) || (Availibility_.Text.Equals("No")))
                {

                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("insert into HALL(Hall_capacity,Availibility) values('"+Hallcapacity_.Text + "','" + Availibility_.Text + "')");
                    conn.CloseConnection();
                    Response.Redirect("Hall.aspx");


                }
                else
                {

                    Label3.Text = "Please enter Yes and No only";
                    Label3.ForeColor = System.Drawing.Color.Red;


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

        protected void Button2_Click1(object sender, EventArgs e)
        {
            try { 
            if (deletehall_.Text!="")
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from HALL where  Hall_id ="+Convert.ToInt32(deletehall_.Text)+"");
                conn.CloseConnection();
                Response.Redirect("Hall.aspx");




            }

            else
            {

                Label2.Text = "Please enter the Hall id";
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
        protected void StAvailibility_Click(object sender, EventArgs e)
        {
            try
            {

                if (SetAvailibility_.Text != "" || Hallid_.Text != "")
                {
                    if (SetAvailibility_.Text == "Yes" || SetAvailibility_.Text == "No")
                    {

                        DbService conn = new DbService();
                        conn.OpenConnection();
                        conn.ExecuteQueries(" exec changehallava " + Hallid_.Text + ",'" + SetAvailibility_.Text + "'");
                        conn.CloseConnection();
                        Response.Redirect("Hall.aspx");



                    }
                    else
                    {

                        Label5.Text = "Please Enter Yes or No only";
                        Label5.ForeColor = System.Drawing.Color.Red;

                    }
                }
                else
                {
                    Label4.Text = "Pleses fill in all the text boxes";
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

        protected void Logout_Click(object sender, EventArgs e)
        {
            try {

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