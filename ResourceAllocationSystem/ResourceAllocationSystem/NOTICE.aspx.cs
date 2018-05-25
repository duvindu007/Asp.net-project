using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class NOTICE : System.Web.UI.Page
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
                GridView1.DataSource = bind.ShowDataInGridView("select * from NOTICE ");
                GridView1.DataBind();
            }
            catch (SqlException ex)
            {
                if (ex.InnerException != null)
                {
                    Session["LoadError"] = Convert.ToString(ex);

                    Response.Redirect("PageLoadError.aspx");
                }
            }

        }


        protected void Button1_Click(object sender, EventArgs e)
        {

         try { 


            if ((Noticedetailes_.Text != "") || (Author_.Text != "")||(Lecid_.Text!=""))
            {
                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("insert into NOTICE(Notice_Details,Author,Lec_Code) values ('" + Noticedetailes_.Text + "','" + Author_.Text + "','"+Lecid_.Text+"')");
                conn.CloseConnection();

                Response.Redirect("NOTICE.aspx");

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
                else
                {
                    Response.Redirect("NOTICE.aspx");
                }
           }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {

            try { 

            if ((deleteNotice_.Text != ""))
            {

                DbService conn = new DbService();
                conn.OpenConnection();
                conn.ExecuteQueries("delete from NOTICE  where Notice_ID=" + deleteNotice_.Text + "");
                conn.CloseConnection();
                Response.Redirect("NOTICE.aspx");

            }
            else
            {
                Label2.Text = "Please enter the Notice id";
                Label2.ForeColor = System.Drawing.Color.Red;



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