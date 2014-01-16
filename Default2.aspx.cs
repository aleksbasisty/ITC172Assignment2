using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Default2 : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["newCustomer"] != null)
        {
            Class1 c = (Class1)Session["newCustomer"];
            txtFirstName.Text = c.FirstName;
            txtLastName.Text = c.LastName;
            txtAddress.Text = c.Address;
            txtCity.Text = c.City;
            txtState.Text = c.State;
            txtZip.Text = c.Zip;
            txtPhone.Text = c.Phone;
            txtEmail.Text = c.Email;
            txtPassword.Text = c.Password;
            txtConfirm.Text = c.Password;
        }
        else
        {
            Response.Redirect("Default.aspx");
        }
    }
    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        Response.Redirect("Default3.aspx?Lastname=" + txtLastName.Text + "&Firstname=" + txtFirstName.Text);
    }
}