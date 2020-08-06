
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;
using StockDBApp.DAL.Model;
using StockManagementSystem.DAL.Gateway;

namespace ProjectApp.DAL.Gateways
{
    public class UserGateway : BaseGateway
    {
        public bool CheckUser(User user)
        {
            string query = "SELECT * FROM users WHERE UserName='"+user.Name+"' AND UserPassword='"+user.Password+"'";
            command = new SqlCommand(query, connection);
            connection.Open();
            SqlDataReader userReader= command.ExecuteReader();
            bool isPresent = userReader.HasRows;
            connection.Close();
            
            return isPresent;
        }
    }
}