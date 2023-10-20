using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace BusBookingProject.Admin
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            cptCaptcha.ValidateCaptcha(txtCaptcha.Text.Trim());
            if (!cptCaptcha.UserValidated)
            {
                lblErrorMessage.ForeColor = System.Drawing.Color.Red;
                lblErrorMessage.Text = "Invalid CAPTCHA. Please try again.";
                return;
            }
            if (txtUserId.Text=="admin" && txtPassword.Text=="admin")
            {
                Session["UserName"] = "Admin";
                Response.Redirect("Default.aspx");
            }
            else
            {
                ScriptManager.RegisterClientScriptBlock(this, this.GetType(), "alertMessage", "alert('Username and password is incorrect please enter valid credentials')", true); 
            }
        }
    }
}