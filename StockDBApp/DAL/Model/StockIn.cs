using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace StockManagementSystem.DAL.Models
{
    public class StockIn
    {
        public int Sl { get; set; }
        public string CompanyId { get; set; }
        public int ItemId { get; set; }
        public string ItemName { get; set; }
        public int ReorderLevel { get; set; }
        public int AvailableQuantity { get; set; }
        public int StockInQuantity { get; set; }
        public int CategoryName { get; set; }

    }
}