using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.Configuration;

namespace StockManagementSystem.DAL.Gateway
{
    public class BaseGateway
    {
      

        public SqlConnection connection { get; set; }
        public SqlCommand command { get; set; }
        public SqlDataReader reader { get; set; }
        public string query { get; set; }
        public string connectionstring = WebConfigurationManager.ConnectionStrings["StockDB"].ToString();

        public BaseGateway()
        {
            connection = new SqlConnection(connectionstring);
            command = new SqlCommand();
        }

    }
}