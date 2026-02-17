using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Registration_Page_Validation
{
    public partial class Registration_Page : System.Web.UI.Page
    {
        protected void Checked_change(object sender, EventArgs e)
        {
            pnlUpload.Visible = Checkpoint.Checked;
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            
            if (Page.IsValid)
            { 

              
                ScriptManager.RegisterStartupScript(
                    this,
                    this.GetType(),
                    "alert",
                    "alert('Registration completed successfully!');",
                    true
                );

           
                ClearForm();
            }
        }

        private void ClearForm()
        {
            txtFirstName.Text = "";
            txtLastName.Text = "";
            txtDOB.Text = "";
            rblGender.ClearSelection();
            txtCountryCode.Text = "";
            txtMobile.Text = "";
            txtEmail.Text = "";
            txtPassword.Text = "";
            txtConfirmPassword.Text = "";
            txtAddress.Text = "";
            Checkpoint.Checked = false;
            pnlUpload.Visible = false;
        }



    }
}



