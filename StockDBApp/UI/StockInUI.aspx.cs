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
    public partial class StockInUI : System.Web.UI.Page
    {
        CompanyManager companyManager = new CompanyManager();
        StockInManager stockManager = new StockInManager();
        ItemManager itemManager = new ItemManager();
        Item aItem = new Item();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                companyDropDownList.DataSource = companyManager.GetAllCompany();
                companyDropDownList.DataTextField = "Name";
                companyDropDownList.DataValueField = "Sl";
                companyDropDownList.DataBind();

                ListItem liComapny = new ListItem("Select Item", "-1");
                companyDropDownList.Items.Insert(0, liComapny);

                ListItem liItem = new ListItem("Select Item", "-1");
                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.Enabled = false;
                reorderTextBox.Enabled = false;
                avilableQuantityTextBox.Enabled = false;
            }
        }

        protected void saveButton_Click(object sender, EventArgs e)
        {
            StockIn item = new StockIn();
            item.CompanyId = companyDropDownList.SelectedItem.Value;
            item.ItemId = Int32.Parse(itemDropDownList.SelectedItem.Value);
            item.ItemName = itemDropDownList.SelectedItem.Text;
            item.AvailableQuantity = Int32.Parse(avilableQuantityTextBox.Text);
            item.StockInQuantity = Int32.Parse(stockInTextBox.Text);

            string message = stockManager.StockSaveUpdate(item);

         
            outputMsgLabel.Text = message;

            //Clear All
            companyDropDownList.DataSource = companyManager.GetAllCompany();
            companyDropDownList.DataTextField = "Name";
            companyDropDownList.DataValueField = "Sl";
            companyDropDownList.DataBind();

            ListItem liComapny = new ListItem("Select Item", "-1");
            companyDropDownList.Items.Insert(0, liComapny);

            itemDropDownList.Items.Clear();

            ListItem liItem = new ListItem("Select Item", "-1");

            itemDropDownList.Items.Insert(0, liItem);
            itemDropDownList.DataTextField = "Name";
            itemDropDownList.DataValueField = "Sl";
            itemDropDownList.DataBind();

            itemDropDownList.Enabled = false;
            reorderTextBox.Enabled = false;
            avilableQuantityTextBox.Enabled = false;

            reorderTextBox.Text = "";
            avilableQuantityTextBox.Text = "";
            stockInTextBox.Text = "";

        }

     

        protected void Button1_Click(object sender, EventArgs e)
        {
            //int id = Convert.ToInt32(Request.QueryString["Sl"]);
            //Item item=itemManager.GetItemById(id);
            //idsHiddenField.Value = (item.Sl).ToString();
            //reorderTextBox.Text = item.ReorderLevel.ToString();
            //itemManager.GetItemById(id);
           // HiddenField idHiddenField = (HiddenField)row.FindControl("idHiddenField");
            //int id = Convert.ToInt32(idHiddenField.Value);
            //Response.Write(id);
        }

        //protected void GetReorderLabel(object sender, EventArgs e)
        //{
        
        //    int ReorderLabel = itemManager.GetReorderLabel(Int32.Parse(companyDropDownList.SelectedItem.Value));
        //    reorderTextBox.Text = ReorderLabel.ToString();
        //}

      
        protected void companyDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {

            List<Item> aItem = new List<Item>();

            aItem = itemManager.GetAllItems().Where(m => m.CompanyName == companyDropDownList.SelectedItem.Value).ToList();

            ListItem liItem = new ListItem("Select Item", "-1");

            if (aItem.Count == 0)
            {
                Response.Redirect(Request.Url.AbsoluteUri);
            }
            else
            {
                itemDropDownList.DataSource = aItem;
                itemDropDownList.DataTextField = "ItemName";
                itemDropDownList.DataValueField = "Sl";
                itemDropDownList.DataBind();

                itemDropDownList.Items.Insert(0, liItem);
                itemDropDownList.SelectedIndex = 0;
                itemDropDownList.Enabled = true;
            }
            


        }

        protected void itemDropDownList_SelectedIndexChanged(object sender, EventArgs e)
        {
            aItem = itemManager.GetReorderLabel(Int32.Parse(itemDropDownList.SelectedItem.Value));
            
            reorderTextBox.Text = aItem.ReorderLevel.ToString();
            avilableQuantityTextBox.Text = aItem.AvailableQuantity.ToString();
        }
    }
}