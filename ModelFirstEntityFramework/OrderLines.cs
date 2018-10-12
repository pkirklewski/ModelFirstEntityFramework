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
    
    public partial class OrderLines
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public OrderLines()
        {
            this.OrderPaymentLines = new HashSet<OrderPaymentLines>();
        }
    
        public int OrderLineId { get; set; }
        public int OrderId { get; set; }
        public string ItemId { get; set; }
        public int Count { get; set; }
        public decimal Ammount { get; set; }
        public decimal Discount { get; set; }
        public string Note { get; set; }
        public int CurrencyId { get; set; }
    
        public virtual Orders Order { get; set; }
        public virtual Items Item { get; set; }
        public virtual Currencies Currency { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<OrderPaymentLines> OrderPaymentLines { get; set; }
    }
}