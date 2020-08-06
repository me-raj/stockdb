using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class CategoryGateway : BaseGateway
    {
        public int CategorySave(Category category)
        {
            string query = "INSERT INTO CategorySetup VALUES(@categoryName)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@categoryName", category.Name);
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

        public List<Category> GetAllCategories()
        {
            List<Category> categorielist = new List<Category>();
            try {
                string query = "SELECT * FROM CategorySetup";
                command = new SqlCommand(query, connection);
                connection.Open();
                reader = command.ExecuteReader();
               
                while (reader.Read())
                {
                    Category category = new Category();
                    category.Sl = Convert.ToInt32(reader["Sl"]);
                    category.Name = reader["Name"].ToString();

                    categorielist.Add(category);

                }

                connection.Close();
                return categorielist;
            }
            catch (Exception ex)
            {

            }
            return categorielist;
        }

        public bool IsCategoryExists(string category)
        {
            string query = "SELECT * FROM CategorySetup WHERE Name='" + category + "'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            bool isExists = reader.HasRows;

            connection.Close();

            return isExists;
        }

        public int Update(Category category)
        {
            string query = "UPDATE CategorySetup SET Name='" + category.Name + "' WHERE Sl=" + category.Sl;
            command = new SqlCommand(query, connection);
            connection.Open();
            int rowafect = command.ExecuteNonQuery();
            connection.Close();
            return rowafect;
        }

        public Category GetCategoryById(int Id)
        {
            string query = "SELECT * FROM CategorySetup WHERE Sl=" + Id;
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            reader.Read();
            Category category = new Category();
            category.Sl = Convert.ToInt32(reader["Sl"]);
            category.Name = reader["Name"].ToString();
      
            connection.Close();
            return category;
        }
    }
}