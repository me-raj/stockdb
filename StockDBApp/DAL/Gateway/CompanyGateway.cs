using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.DAL.Gateway
{
    public class CompanyGateway : BaseGateway
    {
        public int CompanySave(Company company)
        {
            string query = "INSERT INTO Company VALUES(@companyName)";
            command = new SqlCommand(query, connection);
            command.Parameters.AddWithValue("@companyName", company.Name);

          
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

        public List<Company> GetAllCompany()
        {
            string query = "SELECT * FROM Company";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            List<Company> companylist = new List<Company>();
            while (reader.Read())
            {
                Company company = new Company();
                company.Sl = Convert.ToInt32(reader["Sl"]);
                company.Name = reader["Name"].ToString();

                companylist.Add(company);

            }

            connection.Close();
            return companylist;
        }

        public bool IsCompanyExists(string company)
        {
            string query = "SELECT * FROM Company WHERE Name='" + company + "'";
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();

            bool isExists = reader.HasRows;

            connection.Close();

            return isExists;
        }

        public int Update(Company company)
        {
            string query = "UPDATE Company SET Name='" + company.Name + "' WHERE Sl=" + company.Sl;
            command = new SqlCommand(query, connection);
            connection.Open();
            int rowaffect = command.ExecuteNonQuery();
            connection.Close();
            return rowaffect;
        }

        public Company GetCompanyBySl(int Id)
        {
            string query = "SELECT * FROM Company WHERE Sl=" + Id;
            command = new SqlCommand(query, connection);
            connection.Open();
            reader = command.ExecuteReader();
            reader.Read();
            Company company = new Company();
            company.Sl = Convert.ToInt32(reader["Sl"]);
            company.Name = reader["Name"].ToString();

            connection.Close();
            return company;
        }
    }
}