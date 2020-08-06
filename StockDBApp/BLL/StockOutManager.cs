using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class StockOutManager
    {
        StockOutGateway stockOutGateway = new StockOutGateway();
        StockInGateway stockInGateway = new StockInGateway();



        public string StockOutUpdate(StockOut stock)
        {
            Item item = new Item();
            item = stockOutGateway.GetItemInfo(stock.ItemName);
            stock.ItemId = item.Sl;
            stock.CompanyId = item.CompanyName;

                int available = item.AvailableQuantity;
                available = available-stock.StockOutQuantity;
                 item.AvailableQuantity = available;
                int rowAffect = stockOutGateway.StockOutSave(stock);
             
                 stockOutGateway.StockUpdate(available,item.Sl);

                 if (available > 0)
                {
                    return "Stock Update";
                }
                else
                {
                    return "Stock Update Failed";
                }

            }
    }
}