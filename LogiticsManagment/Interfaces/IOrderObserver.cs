using LogisticsManagement.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Threading.Tasks;

namespace LogisticsManagement.Interfaces
{
    public interface IOrderObserver
    {
        void Update(Orders order);
    }
}
