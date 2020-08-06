using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockDBApp.BLL;
using StockDBApp.DAL.Model;

namespace StockDBApp.UI
{
    public partial class LoginUi : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void LogInButton_OnClick(object sender, EventArgs e)
        {
            User aUser = new User();
            aUser.Name = UserNameTextBox.Text;
            aUser.Password = UserPasswordTextBox.Text;
          
            UserManager userManager = new UserManager();
            int validUser = userManager.CheckUser(aUser);
            if (validUser == 1)
            {
                Response.Redirect("HomeUI.aspx");
            }
            else
            {
                OutputLabel.Text = "Invalid User Name or Password";
            }
        }
    }
}