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
    public partial class SearchViewItemUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        StockOutManager stockOutManager = new StockOutManager();
        ItemManager itemManager = new ItemManager();
        CategoryManager categoryManager = new CategoryManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {


                companyDropDownList.DataSource = companyManager.GetAllCompany();
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataValueField = "Sl";
                companyDropDownList.DataBind();


                ListItem liComapny = new ListItem("Select Item", "0");
                companyDropDownList.Items.Insert(0, liComapny);

                categoryDropDownList.DataSource = categoryManager.GetAllCategories();
                categoryDropDownList.DataTextField = "Name";
                categoryDropDownList.DataValueField = "Sl";
                categoryDropDownList.DataBind();
                categoryDropDownList.Items.Insert(0, liComapny);

            }

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            outputMsgLabel.Text = "";

            string comapnyId = companyDropDownList.SelectedItem.Value;
            string itemId = categoryDropDownList.SelectedItem.Value;

            List<ItemSearch> ItemList = itemManager.GetItemsSearch(comapnyId, itemId);
            searchGridView.DataSource = ItemList;
            searchGridView.DataBind();
            if (ItemList.Count == 0)
            {
                outputMsgLabel.Text = " Date Not Found";
            }
        }
    }
}