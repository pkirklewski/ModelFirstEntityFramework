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
    
    public partial class Products
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public Products()
        {
            this.Items = new HashSet<Items>();
        }
    
        public int ProductId { get; set; }
        public int LegalUnitId { get; set; }
        public string ProductName { get; set; }
        public string ProductNo { get; set; }
        public string ProductTypeId { get; set; }
        public string ProductModifiedBy { get; set; }
        public string ProductModifiedDateTime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Items> Items { get; set; }
        public virtual LegalUnits LegalUnit { get; set; }
    }
}