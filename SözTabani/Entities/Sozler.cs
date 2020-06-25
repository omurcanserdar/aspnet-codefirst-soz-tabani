using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SözTabani.Entities
{
    public class Sozler
    {
        [Key]
        public int soz_id { get; set; }
        public string soz_icerik { get; set; }
        public DateTime soz_eklenmetarih { get; set; }

        public int soz_kisi_id { get; set; }
        public string soz_kisi_adi { get; set; }
        public int soz_kullanici_id { get; set; }
        public string soz_kullanici_kullaniciadi { get; set; }

        public virtual Kisiler kisiler { get; set; }
        public virtual Kullanici kullanici { get; set; }
    }
}