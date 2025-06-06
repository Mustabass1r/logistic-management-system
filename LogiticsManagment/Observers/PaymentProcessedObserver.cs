﻿using LogisticsManagement.Interfaces;
using LogisticsManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace LogisticsManagement.Observers
{
    public class PaymentProcessedObserver : IOrderObserver
    {
        public void Update(Orders order)
        {
            HttpContext.Current.Session["Notification"] = $"Payment processed for Order: {order.OrderId}";
        }
    }
}