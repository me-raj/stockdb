using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class StockInGateway : BaseGateway
    {

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

        public int StockSave(StockIn stockIn)
        {
            string query = "INSERT INTO StockIn (CompanyId, ItemId, AvailableQuantity, StockInQuantity, ItemName)VALUES(@companyid,@itemid,@availablequantity,@StockInQuantity,@itemname)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@companyid", stockIn.CompanyId);
            command.Parameters.AddWithValue("@itemid", stockIn.ItemId);
            command.Parameters.AddWithValue("@availablequantity", stockIn.AvailableQuantity);
            command.Parameters.AddWithValue("@StockInQuantity", stockIn.StockInQuantity);
            command.Parameters.AddWithValue("@itemname", stockIn.ItemName);
      


            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

        public int StockUpdate(StockIn stock)
        {
            string query = "Update StockIn set AvailableQuantity='" + stock.StockInQuantity + "' where ItemId=" + stock.ItemId;
            command = new SqlCommand(query, connection);
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

    }
}