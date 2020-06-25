using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SözTabani.Entities
{
    public class Atasozleri
    {
        [Key]
        public int atasoz_id { get; set; }
        public string atasoz_icerik { get; set; }
        public DateTime atasoz_eklenmetarih { get; set; }
        
        public int atasoz_kullanici_id { get; set; }
        public string atasoz_kullanici_kullaniciadi { get; set; }
        public int atasoz_uyruk_id { get; set; }
        public virtual Kullanici Kullanici { get; set; }
        public virtual AtasozUyruk Uyruk { get; set; }
    }
}