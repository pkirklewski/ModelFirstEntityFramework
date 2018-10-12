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
    
    public partial class ItemLocalisation
    {
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2214:DoNotCallOverridableMethodsInConstructors")]
        public ItemLocalisation()
        {
            this.ItemDescriptions = new HashSet<ItemDescriptions>();
        }
    
        public int ItemLocalisationId { get; set; }
        public int ItemId { get; set; }
        public string NameTranslated { get; set; }
        public string LanguageCultureCode { get; set; }
        public string LanguageName { get; set; }
        public string ISO639_2 { get; set; }
        public string ISO639_3 { get; set; }
        public string ItemLocalisationModifiedBy { get; set; }
        public string ItemLocalisationModifiedDateTime { get; set; }
    
        public virtual Items Item { get; set; }
        [System.Diagnostics.CodeAnalysis.SuppressMessage("Microsoft.Usage", "CA2227:CollectionPropertiesShouldBeReadOnly")]
        public virtual ICollection<ItemDescriptions> ItemDescriptions { get; set; }
    }
}