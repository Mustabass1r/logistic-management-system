//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace LogiticsManagment.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Rate
    {
        public int rate_id { get; set; }
        public string delivery_method { get; set; }
        public decimal weight_range_start { get; set; }
        public decimal weight_range_end { get; set; }
        public decimal rate_per_km { get; set; }
    }
}
