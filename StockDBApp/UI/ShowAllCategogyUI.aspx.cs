using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystem.BLL;

namespace StockDBApp.UI
{
    public partial class ShowAllCategogyUI : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            categoryGridView.DataSource = categoryManager.GetAllCategories();
            categoryGridView.DataBind();
        }

        protected void updateLinkButton_OnClick(object sender, EventArgs e)
        {
            LinkButton linkButton = (LinkButton)sender;
            DataControlFieldCell cell = (DataControlFieldCell)linkButton.Parent;
            GridViewRow row = (GridViewRow)cell.Parent;
            HiddenField idHiddenField = (HiddenField)row.FindControl("idHiddenField");
            int id = Convert.ToInt32(idHiddenField.Value);
            Response.Redirect("CategoryUi.aspx?Id=" + id);
        }
    }
}