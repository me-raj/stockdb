using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class StockInManager
    {
        StockInGateway stockInGateway = new StockInGateway();
        public string ItemSave(StockIn stockIn)
        {
            int rowAffect = stockInGateway.StockSave(stockIn);
            if (rowAffect > 0)
            {
                return "Saved Sucessfull";
            }
            else
            {
                return "Save Faild";
            }

     

        }


        public string StockSaveUpdate(StockIn stock)
        {
            if (stockInGateway.IsItemExists(stock.ItemId))
            {
                int available = stock.AvailableQuantity;
                stock.StockInQuantity += available;
                int rowAffect = stockInGateway.StockUpdate(stock);

                if (rowAffect > 0)
                {
                    return "Stock Update";
                }
                else
                {
                    return "Stock Update Faild !!!";
                }

            }

            else
            {
                int rowAffect = stockInGateway.StockSave(stock);
                if (rowAffect > 0)
                {
                    return "Stock Save";
                }
                else
                {
                    return "Stock Failed";
                }

            }

        }


       



    }
}