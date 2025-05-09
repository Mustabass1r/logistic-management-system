﻿using LogisticsManagement.Interfaces;
using LogisticsManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LogisticsManagement.Observers
{
    public class ShipmentCreatedObserver : IOrderObserver
    {
        public void Update(Orders order)
        {
            HttpContext.Current.Session["Notification"] = $"Shipment created for Order: {order.OrderId}";
        }
    }
}