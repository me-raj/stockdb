using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class ItemGateway : BaseGateway
    {
        public int ItemSave(Item item)
        {
            string query = "INSERT INTO ItemSetup VALUES(@categoryname,@companyname,@itemname,@reorderlevel)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@categoryname", item.CategoryName);
            command.Parameters.AddWithValue("@companyname", item.CompanyName);
            command.Parameters.AddWithValue("@itemname", item.ItemName);
            command.Parameters.AddWithValue("@reorderlevel", item.ReorderLevel);

           
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

        public bool IsItemExists(string item)
        {
            string query = "SELECT * FROM ItemSetup WHERE ItemName='" + item + "'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            bool isExists = reader.HasRows;

            connection.Close();

            return isExists;
        }

        public List<Item> GetAllItems()
        {
            string query = "SELECT * FROM ItemSetup";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Item> Itemlist = new List<Item>();
            while (reader.Read())
            {
                Item item = new Item();
                item.Sl = Convert.ToInt32(reader["Sl"]);
                item.CategoryName = reader["CategoryName"].ToString();
                item.CompanyName = reader["CompanyName"].ToString();
                item.ItemName = reader["ItemName"].ToString();
                item.ReorderLevel = Convert.ToInt32(reader["ReorderLevel"]);

                Itemlist.Add(item);

            }

            connection.Close();
            return Itemlist;
        }
        public Item GetItemById(int Id)
        {
            string query = "SELECT * FROM ItemSetup WHERE Sl=" + Id;
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            reader.Read();
            Item item = new Item();
            item.Sl = Convert.ToInt32(reader["Sl"]);
            item.ReorderLevel = Convert.ToInt32(reader["ReorderLevel"]);
          
            connection.Close();
            return item;
        }


        public Item GetReorderLabel(int ItemId)
        {
            Item item = new Item();
            item.ReorderLevel = 0;
            item.AvailableQuantity = 0;
            string query = "SELECT * FROM ItemSetup WHERE sl=" + ItemId;
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            if (reader.HasRows)
            {
                reader.Read();
                item.Sl = Convert.ToInt32(reader["Sl"]);
                item.ReorderLevel = Convert.ToInt32(reader["ReorderLevel"]);
            }
            connection.Close();
            string aquery = "SELECT * FROM StockIn WHERE ItemId=" + ItemId;
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

        public List<ItemSearch> GetItemsSearch(string companyId, string categoryId)
        {
            string aQuery = "SELECT I.ItemName,C.Name as CompanyName, S.AvailableQuantity,S.AvailableQuantity as Qty,I.ReorderLevel FROM ItemSetup I left outer join StockIn S on S.itemId = I.Sl left outer join Company C on C.Sl = I.CompanyName left outer join CategorySetup CA on CA.Sl = I.CategoryName WHERE C.Sl = '" + companyId + "'  or CA.Sl = '" + categoryId + "' ";
            command = new SqlCommand(aQuery, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<ItemSearch> Itemlist = new List<ItemSearch>();
            while (reader.Read())
            {
                ItemSearch item = new ItemSearch();
                item.ItemName = reader["ItemName"].ToString();
                item.CompanyName = reader["CompanyName"].ToString();
                item.Quantity = Convert.ToInt32(reader["AvailableQuantity"]);
             
               
                item.AvailableQuantity = Convert.ToInt32(reader["AvailableQuantity"]);
                item.ReorderLevel = Convert.ToInt32(reader["ReorderLevel"]);

                Itemlist.Add(item);

            }

            connection.Close();
            return Itemlist;
        }
    }
}