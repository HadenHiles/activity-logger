//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ActivityLogger.Models
{
    using System;
    using System.Collections.Generic;
    
    public partial class Company
    {
        public int CompanyID { get; set; }
        public string Name { get; set; }
        public string City { get; set; }
        public string Province { get; set; }
        public decimal Revenue { get; set; }
        public decimal Expenses { get; set; }
        public decimal NetIncome { get; set; }
        public bool PremiumMember { get; set; }
        public System.DateTime RegistrationDate { get; set; }
    }
}
