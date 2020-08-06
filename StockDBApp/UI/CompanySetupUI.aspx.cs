using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockDBApp.BLL;
using StockManagementSystem.BLL;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.UI
{
    public partial class CompanySetupUI : System.Web.UI.Page
    {
        CompanyManager companyManager=new CompanyManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            companyGridView.DataSource = companyManager.GetAllCompany();
            companyGridView.DataBind();
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            Company company = new Company();
            company.Name = nameTextBox.Text;
            nameTextBox.Text = "";

            outputMsgLabel.Text = companyManager.CompanySave(company);
        }
    }
}