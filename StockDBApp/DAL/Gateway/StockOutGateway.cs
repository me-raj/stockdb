using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class StockOutGateway : BaseGateway
    {
      
        public int StockOutSave(StockOut StockOut)
        {
            string query = "INSERT INTO StockOut (ItemId, CompanyId, StockOutQty, ItemName, StockStatus,dtEntry)VALUES('" + StockOut.ItemId + "','" + StockOut.CompanyId + "','" + StockOut.StockOutQuantity + "','" + StockOut.ItemName + "','" + StockOut.Status + "', '" + DateTime.Now.ToString("dd-MMM-yyyy") + "')";
            command = new SqlCommand(query, connection);
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

        public bool IsItemExists(int ItemId)
        {
            string query = "SELECT * FROM StockIn WHERE ItemId='" + ItemId + "'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            bool isExists = reader.HasRows;

            connection.Close();

            return isExists;
        }
        public int UpdateStockOut(StockOut stockOut)
        {
            string query = "Update StockIn set AvailableQuantity='" + stockOut.StockOutQuantity + "' where ItemId=" + stockOut.ItemId;
            command = new SqlCommand(query, connection);
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

        public Item GetItemInfo(string name)
        {
            Item item = new Item();
            item.ReorderLevel = 0;
            item.AvailableQuantity = 0;

            string query = "SELECT * FROM ItemSetup WHERE ItemName='"+name+"'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                item.Sl = Convert.ToInt32(reader["Sl"]);
                item.CompanyName = reader["CompanyName"].ToString();
            }
            connection.Close();



            string aquery = "SELECT * FROM StockIn WHERE ItemId=" + item.Sl;
            command = new SqlCommand(aquery, connection);
            connection.Open();
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                item.AvailableQuantity = Convert.ToInt32(reader["AvailableQuantity"]);
            }
            connection.Close();
            return item;
        }
        public int GetStock(int ItemId)
        {
            int stockQty = 0;
            string aquery = "SELECT * FROM StockIn WHERE AvailableQuantity=" + ItemId;
            command = new SqlCommand(aquery, connection);
            connection.Open();
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                stockQty = Convert.ToInt32(reader["AvailableQuantity"]);
            }
            return stockQty;
        }
        public int StockUpdate(int Available, int itemId)
        {
            string query = "Update StockIn set AvailableQuantity='" + Available + "' where ItemId=" + itemId;
            command = new SqlCommand(query, connection);
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

    }
}