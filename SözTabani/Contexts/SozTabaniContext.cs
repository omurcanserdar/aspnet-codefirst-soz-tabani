using SözTabani.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Data.Entity;

namespace SözTabani.Contexts
{
    public class SozTabaniContext : DbContext
    {
        public SozTabaniContext()
            : base("name=SozTabaniConnection")
        {

        }

        public DbSet<Kisiler> Kisiler { get; set; }
        public DbSet<Sozler> Sözler { get; set; }
        public DbSet<Atasozleri> Atasözleri { get; set; }
        public DbSet<AtasozUyruk> AtasözUyruk { get; set; }
        public DbSet<Kullanici> Kullanıcılar { get; set; }
    }
}