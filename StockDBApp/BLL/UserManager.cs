using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using ProjectApp.DAL.Gateways;
using StockDBApp.DAL.Model;

namespace StockDBApp.BLL
{
    public class UserManager
    {
        private UserGateway userGateway;
          public UserManager()
        {
            userGateway = new UserGateway();
        }
          public int CheckUser(User user)
          {
              bool isPresent = userGateway.CheckUser(user);
              if (isPresent)
              {
                  return 1;
              }
              else
              {
                  return 0;
              }
          }
    }
}