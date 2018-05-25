using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ResourceAllocationSystem
{
    public partial class Site1 : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack) {
                if (Request.Cookies["UName"] != null && Request.Cookies["PWd"] != null) {
                    Name.Text = Request.Cookies["UName"].Value;
                    Password.Attributes["value"] = Request.Cookies["PWd"].Value;
                    CheckBox1.Checked = true;
                }


            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                DbService conn = new DbService();
                conn.OpenConnection();
                Boolean a = conn.LogIn(Name.Text, Password.Text);
                if (a == true)
                {
                    if (CheckBox1.Checked)
                    {


                        Response.Cookies["UName"].Value = Name.Text;
                        Response.Cookies["PWd"].Value = Password.Text;
                        Response.Cookies["UName"].Expires = DateTime.Now.AddHours(1);
                        Response.Cookies["PWd"].Expires = DateTime.Now.AddHours(1);




                        //  Response.Cookies["UName"].Value = Name.Text;



                    }
                    else
                    {
                        Response.Cookies["UName"].Expires = DateTime.Now.AddHours(-1);
                        Response.Cookies["PWd"].Expires = DateTime.Now.AddHours(-1);


                    }
                    Session["Name"] = Name.Text;
                    Response.Redirect("Dashboard.aspx");


                }
                else
                {

                    Label5.Text = "User does not exixt";
                    Label5.ForeColor = System.Drawing.Color.Red;


                }

            }
            catch(Exception ex) {
                if (ex.InnerException != null) {

                    Label5.Text = "System ran into a problem";
                    Label5.ForeColor = System.Drawing.Color.Red;


                }


            }

    }

        protected void CheckBox1_CheckedChanged(object sender, EventArgs e)
        {

        }

    }
}