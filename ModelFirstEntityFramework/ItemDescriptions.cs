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
    
    public partial class ItemDescriptions
    {
        public int ItemDescriptionId { get; set; }
        public string ItemId { get; set; }
        public string ItemName { get; set; }
        public string ItemDescription { get; set; }
        public string ItemColor { get; set; }
        public string ItemMaterial { get; set; }
        public string ItemTheme { get; set; }
        public string ItemStone { get; set; }
        public string ItemDescrModifiedBy { get; set; }
        public string ItemDescModifiedDateTime { get; set; }
        public int LocalisationId { get; set; }
    
        public virtual Items Item { get; set; }
        public virtual ItemLocalisation ItemLocalisation { get; set; }
    }
}
