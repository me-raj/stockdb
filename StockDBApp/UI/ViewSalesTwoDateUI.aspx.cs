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
    public partial class ViewSalesTwoDateUI : System.Web.UI.Page
    {
        SellManager sellManager=new SellManager();
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void searchButton_Click(object sender, EventArgs e)
        {
            outputMsgLabel.Text = "";

            if (fromDateTextBox.Text == "" ||toDateTextBox.Text == "")
            {
                outputMsgLabel.Text = "Please Check You'r date";
            }
            else
            {

                string dtFrom = Convert.ToDateTime(fromDateTextBox.Text).ToString("dd-MMM-yyyy");
                string dtTo = Convert.ToDateTime(toDateTextBox.Text).ToString("dd-MMM-yyyy");
                List<Sell> listSell = sellManager.GetSellItemByDate(dtFrom, dtTo);
                sellGridView.DataSource = listSell;
                sellGridView.DataBind();
                if (listSell.Count == 0)
                {
                    outputMsgLabel.Text = "!! Sales Not Found Between Date";
                }

            }
        }
    }
}