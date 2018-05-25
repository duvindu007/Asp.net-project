using System;
using System.Collections.Generic;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class WebForm4 : System.Web.UI.Page
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
            if (!this.IsPostBack) {
                this.BindGrid();
            }

        }
        private void BindGrid() {
            try
            {
                DbService bind = new DbService();
                GridView1.DataSource = bind.ShowDataInGridView("select * from BATCH");
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

            if ((Year_.Text != "") || (Detailes_.Text != "")||(Size_.Text!=""))
            {
                try
                {
                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("insert into BATCH(Year_,detailes,Size) values('" + Year_.Text + "','" + Detailes_.Text + "',"+Size_.Text+") ");
                    conn.CloseConnection();

                    Response.Redirect("Batch.aspx");
                }
                catch (SqlException ex)
                {
                    if(ex !=null){ 
                        Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");

}

                }
            }

            else
            {
                Label1.Text = "All fields must be filled";
                Label1.ForeColor = System.Drawing.Color.Red;

            }



        
        }
    

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                if (delete_batch.Text != "")
                {
                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("delete from BATCH where Batch_id =" + delete_batch.Text + " ");
                    conn.CloseConnection();

                    Response.Redirect("Batch.aspx");

                }
                else
                {
                    Label3.Text = "Please enter the batch Id";
                    Label3.ForeColor = System.Drawing.Color.Red;

                }

            }

            catch (SqlException ex)
            {

                if(ex !=null){ 

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
                if (ex.InnerException != null)
                {
                    Session["Error"] = Convert.ToString(ex);

                    Response.Redirect("Errorpage.aspx");
                }


            }
        }

        protected void Update_Click(object sender, EventArgs e) {

           try {
            

                if ((sIze__.Text!="")||(Bid_.Text!=""))
                {
                    DbService conn = new DbService();
                    conn.OpenConnection();
                    conn.ExecuteQueries("update BATCH set Size=" + sIze__.Text + " where Batch_id=" + Bid_.Text + " ");

                    conn.CloseConnection();

                    Response.Redirect("Batch.aspx");
                }
   

                else
                {

                    Label6.Text = "Please fill the text boxes";
                    Label6.ForeColor = System.Drawing.Color.Red;



                }



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