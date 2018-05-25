using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class Errorpage : System.Web.UI.Page
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
            Label1.Text = (string) Session["Error"];


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

                Session["Error"] = Convert.ToString(ex);

                Response.Redirect("Errorpage.aspx");



            }
        }
    }
}