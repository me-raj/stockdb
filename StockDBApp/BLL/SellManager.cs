using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class SellManager
    {
        SellGateway sellGateway = new SellGateway();
        public List<Sell> GetSellItemByDate(string dtFrom, string dtTo)
        {
            return sellGateway.GetSellItemsBySearch(dtFrom, dtTo);
        }

    }
}