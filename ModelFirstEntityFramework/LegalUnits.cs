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
    
    public partial class LegalUnits
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public LegalUnits()
        {
            this.Products = new HashSet<Products>();
            this.Stores = new HashSet<Stores>();
        }
    
        public int LegalUnitId { get; set; }
        public string LegalUnitCode { get; set; }
        public string LegalUnitName { get; set; }
        public string LegalUnitModifiedBy { get; set; }
        public string LegalUnitModifiedDateTime { get; set; }
    
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Products> Products { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<Stores> Stores { get; set; }
    }
}