//------------------------------------------------------------------------------
// <auto-generated>
//     This code was generated from a template.
//
//     Manual changes to this file may cause unexpected behavior in your application.
//     Manual changes to this file will be overwritten if the code is regenerated.
// </auto-generated>
//------------------------------------------------------------------------------

namespace ModelFirstEntityFramework
{
    using System;
    using System.Collections.Generic;
    
    public partial class OrderPaymentLines
    {
        public int OrderPaymentLineId { get; set; }
        public int OrderLineId { get; set; }
        public int PaymentId { get; set; }
        public string PaymentType { get; set; }
        public string CurrencyId { get; set; }
        public string Note { get; set; }
    
        public virtual OrderLines OrderLine { get; set; }
        public virtual Payments Payment { get; set; }
        public virtual Currencies Currency { get; set; }
    }
}