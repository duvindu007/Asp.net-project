using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data.Sql;
using System.Data;
using System.IO;




namespace ResourceAllocationSystem
{
    public partial class WebForm3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"] != null)
            {

                lblsuccess.Text =  "" + Session["Name"].ToString() + "";


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
                GridView1.DataSource = bind.ShowDataInGridView("select * from ADMIN_");
                GridView1.DataBind();
            }
            catch(SqlException ex) {
                if (ex !=null) { 
                Session["LoadError"] = Convert.ToString(ex);

                Response.Redirect("PageLoadError.aspx");
}
            }

        }

        protected void Register_Click(object sender, EventArgs e)
        {

           try
            {



                if ((full_name.Text != "") || (TextBox1.Text != "") || (TextBox2.Text != "") || (TextBox3.Text != "") || (TextBox4.Text != "") || (cnfrmPassword_.Text != ""))
                {
                    if (TextBox3.Text == cnfrmPassword_.Text)
                    {
                        DbService conn = new DbService();

                        Boolean a = conn.Check("Select * from ADMIN_ where UserName ='" + TextBox2.Text + "'");



                        if (a == false)
                        {

                            conn.OpenConnection();

                            conn.ExecuteQueries("insert into ADMIN_(Admin_Name,Email,UserName,Password_,Phone) values ('" + full_name.Text + "','" + TextBox1.Text + "','" + TextBox2.Text + "','" + TextBox3.Text + "','" + TextBox4.Text + "')");


                            conn.CloseConnection();

                            Response.Redirect("Admin.aspx");
                        }

                        else
                        {


                            Label1.Text = "User name allready exist plese enter other one";
                            Label1.ForeColor = System.Drawing.Color.Red;


                        }


                    }
                    else
                    {

                        Label1.Text = "Passwords does not match";
                        Label1.ForeColor = System.Drawing.Color.Red;


                    }


                }

                else
                {
                    Label1.Text = "All fields must be full";
                    Label1.ForeColor = System.Drawing.Color.Red;


                }

            }



            catch(SqlException ex) {

                if(ex !=null){ 

                Session["Error"] = Convert.ToString(ex);

                Response.Redirect("Errorpage.aspx");

}

            }

        }

     
        protected void Button1_Click(object sender, EventArgs e)
        {

            try {

                if (TextBox5.Text != "")
                {


                    DbService connn = new DbService();
                    connn.OpenConnection();

                    connn.ExecuteQueries("delete from  ADMIN_ where Admin_ID = " + TextBox5.Text + "");

                    connn.CloseConnection();

                    Response.Redirect("Admin.aspx");

                }

                else
                {

                    Label2.Text = "please enter the admin id";
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

            try
            {


                Session["Name"] = null;
                Response.Redirect("LogIn.aspx");

            }


            catch (Exception ex)
            {
                if (ex.InnerException != null) { 
                Session["Error"] = Convert.ToString( ex);

                Response.Redirect("Errorpage.aspx");
}
  }


        }

      
    }
}




    
