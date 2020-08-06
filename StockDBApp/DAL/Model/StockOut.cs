using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystem.DAL.Models
{
    public class StockOut
    {       
        public string CompanyId { get; set; }
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public int StockOutQuantity { get; set; }
        public int AvailableQuantity { get; set; }
        public string Status { get; set; }

    }
}