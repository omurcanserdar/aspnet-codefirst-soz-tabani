using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SözTabani.Entities
{
    public class Kullanici
    {
        [Key]
        public Guid Kullanici_id { get; set; }
        public string Kullanici_kullaniciadi { get; set; }
        public string Kullanici_Ad { get; set; }
        public string Kullanici_Soyad { get; set; }

        public virtual List<Kisiler>Kisiler { get; set; }
        public virtual List<Sozler> Sozler { get; set; }
        public virtual List<Atasozleri> Atasozleri { get; set; }
        public virtual List<AtasozUyruk> Uyruk { get; set; }

    }
}