using SözTabani.Entities;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using SözTabani.Contexts;

namespace SözTabani.Contexts
{
    public class SozTabaniInitializer : System.Data.Entity.DropCreateDatabaseIfModelChanges<SozTabaniContext>
    {
        protected override void Seed(SozTabaniContext context)
        {
            var kisiler = new List<Kisiler> 
            { 
              new Kisiler{ kisi_adsoyad="Mustafa Kemal ATATÜRK", kisi_eklenmetarih=DateTime.Now},
              new Kisiler{ kisi_adsoyad="Mevlana", kisi_eklenmetarih=DateTime.Now}  
            };

            kisiler.ForEach(s => context.Kisiler.Add(s));
            context.SaveChanges();

            var posts = new List<Sozler> 
            {
                new Sozler{soz_icerik="Büyük ölülere matem gerekmez, fikirlerine bağlılık gerekir.", soz_eklenmetarih=DateTime.Now},
                new Sozler{soz_icerik="Ben, gerektiği zaman, en büyük hediyem olmak üzere Türk milletine canımı vereceğim.", soz_eklenmetarih=DateTime.Now},            
            };

            posts.ForEach(s => context.Sözler.Add(s));
            context.SaveChanges();

            var atasozuyruk = new List<AtasozUyruk> 
            { 
              new AtasozUyruk { Uyruk="Türkiye"},
              new AtasozUyruk { Uyruk="Çin"}  
            };
            atasozuyruk.ForEach(s => context.AtasözUyruk.Add(s));
            context.SaveChanges();

            var atasozleri_ini = new List<Atasozleri> 
            { 
              new Atasozleri{ atasoz_icerik="Ayağını yorganına göre uzat", atasoz_eklenmetarih=DateTime.Now},
              new Atasozleri{ atasoz_icerik="Üzüm üzüme baka baka kararır", atasoz_eklenmetarih=DateTime.Now}  
            };
            atasozleri_ini.ForEach(s => context.Atasözleri.Add(s));
            context.SaveChanges();
        }
    }
}