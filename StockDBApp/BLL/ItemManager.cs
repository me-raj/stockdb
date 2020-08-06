using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using StockManagementSystem.DAL.Gateway;
using StockManagementSystem.DAL.Models;

namespace StockManagementSystem.BLL
{
    public class ItemManager
    {
        ItemGateway itemGateway=new ItemGateway();

        public string ItemSave(Item item)
        {
            if (itemGateway.IsItemExists(item.ItemName))
            {
                return "Item Name is Already Exists ";
            }
            else
            {
                int rowAffect = itemGateway.ItemSave(item);
                if (rowAffect > 0)
                {
                    return "Saved Sucessfull";
                }
                else
                {
                    return "Save Faild";
                }

            }
            
        }

        public List<Item> GetAllItems()
        {
            return itemGateway.GetAllItems();
        }

        public Item GetItemById(int Id)
        {
            return itemGateway.GetItemById(Id);
        }
        public Item GetReorderLabel(int ItemId)
        {
           return itemGateway.GetReorderLabel(ItemId);
        }

        public List<ItemSearch> GetItemsSearch(string companyId, string ItemId)
        {
            return itemGateway.GetItemsSearch(companyId, ItemId);
        }
    }
}