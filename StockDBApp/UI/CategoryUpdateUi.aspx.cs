using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystem.BLL;
using StockManagementSystem.DAL.Models;

namespace StockDBApp.UI
{
    public partial class CategoryUpdateUi : System.Web.UI.Page
    {
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (IsPostBack == false)
            {
                int CategoryId = Convert.ToInt32(Request.QueryString["Sl"]);
                Category category = categoryManager.GetCategoryByID(CategoryId);


                if (category != null)
                {
                    LoadFormWithCategory(category);
                }
            }
        }

        public void LoadFormWithCategory(Category category)
        {
            idHiddenField.Value = category.Sl.ToString();
            categoryNameUpdateTextBox.Text = category.Name;

        }
        protected void categoryUpdateSaveButton_OnClick(object sender, EventArgs e)
        {
            Category category = new Category();
            category.Sl = Convert.ToInt32(idHiddenField.Value);
            category.Name = categoryNameUpdateTextBox.Text;

            outputLabel.Text = categoryManager.Update(category);
        }
    }
}