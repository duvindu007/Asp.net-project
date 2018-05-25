using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class WebForm2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["Name"]!= null) {

                lblsuccess.Text = "Welcome "+Session["Name"].ToString()+"";


            }
            else{
                Response.Redirect("LogIn.aspx");


            }


        }

        protected void Logout_Click(object sender, EventArgs e)
        {
            Session["Name"] = null;
            Response.Redirect("LogIn.aspx");
        }
    }
}