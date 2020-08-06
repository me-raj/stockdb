using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockManagementSystem.BLL;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.UI
{
    public partial class CatagorySetupUI : System.Web.UI.Page
    {
        CategoryManager categoryManager=new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            CategoryListGridView.DataSource = categoryManager.GetAllCategories();
            CategoryListGridView.DataBind();

            
        }

        //protected void saveButton_Click(object sender, EventArgs e)
        //{
           
         
          
        //}

      

        //protected void catagoryGridView_RowEditing(object sender, GridViewEditEventArgs e)
        //{
        //        int id = Convert.ToInt32(Request.QueryString["Sl"]);

        //        Category category = categoryManager.GetCategoryByID(id);

                
        //        nameTextBox.Text = category.Name;
               
        //}

    
        //protected void OnSelectedIndexChanged(object sender, EventArgs e)
        //{
        //    HiddenField1.Value = catagoryGridView.SelectedRow.Cells[0].Text;
        //    nameTextBox.Text  = catagoryGridView.SelectedRow.Cells[1].Text;
        //}

        protected void updateButton_OnClick(object sender, EventArgs e)
        {
            LinkButton linkUpdateButton = sender as LinkButton;
            DataControlFieldCell cell = linkUpdateButton.Parent as DataControlFieldCell;
            GridViewRow row = cell.Parent as GridViewRow;
            HiddenField idHiddenField = row.FindControl("idHiddenField") as HiddenField;
            int id = Convert.ToInt32(idHiddenField.Value);
            Response.Redirect("CategoryUpdateUI.aspx?Sl=" + id);
        }

        protected void CategorySaveButton_OnClick(object sender, EventArgs e)
        {
            Category aCategory = new Category();
            aCategory.Name = CategoryNameTextBox.Text;

            CategoryManager categoryManager = new CategoryManager();
            OutputLabel.Text = categoryManager.CategorySave(aCategory);
            CategoryNameTextBox.Text = "";
        }
    }
}