﻿//------------------------------------------------------------------------------
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
    using System.Data.Entity;
    using System.Data.Entity.Infrastructure;
    
    public partial class JewelleryModelContainer : DbContext
    {
        public JewelleryModelContainer()
            : base("name=JewelleryModelContainer")
        {
        }
    
        protected override void OnModelCreating(DbModelBuilder modelBuilder)
        {
            throw new UnintentionalCodeFirstException();
        }
    
        public virtual DbSet<Items> Items { get; set; }
        public virtual DbSet<Products> Products { get; set; }
        public virtual DbSet<LegalUnits> LegalUnits { get; set; }
        public virtual DbSet<ItemLocalisation> ItemLocalisations { get; set; }
        public virtual DbSet<ItemPrices> ItemPrices { get; set; }
        public virtual DbSet<PriceCodes> PriceCodes { get; set; }
        public virtual DbSet<Currencies> Currencies { get; set; }
        public virtual DbSet<Merchants> Merchants { get; set; }
        public virtual DbSet<Stores> Stores { get; set; }
        public virtual DbSet<StoreItems> StoreItems { get; set; }
        public virtual DbSet<ItemDescriptions> ItemDescriptions { get; set; }
        public virtual DbSet<Orders> Orders { get; set; }
        public virtual DbSet<OrderLines> OrderLines { get; set; }
        public virtual DbSet<OrderPaymentLines> OrderPaymentLines { get; set; }
        public virtual DbSet<Terminals> Terminals { get; set; }
        public virtual DbSet<Payments> Payments { get; set; }
    }
}
