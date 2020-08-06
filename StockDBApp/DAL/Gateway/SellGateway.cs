using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class SellGateway : BaseGateway
    {
        public List<Sell> GetSellItemsBySearch(string dtFrom, string dtTo)
        {
            string query = "SELECT * FROM StockOut where dtEntry between '" + dtFrom + "' and '" + dtTo + "' and StockStatus='Sell'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Sell> Itemlist = new List<Sell>();
            while (reader.Read())
            {
                Sell item = new Sell();
                item.ItemName = reader["ItemName"].ToString();
                item.SaleQty = reader["StockOutQty"].ToString();

                Itemlist.Add(item);

            }

            connection.Close();
            return Itemlist;
        }
    }
}