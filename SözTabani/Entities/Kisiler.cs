using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SözTabani.Entities
{
    public class Kisiler
    {
        [Key]
        public int kisi_id { get; set; }
       public string kisi_resim { get; set; }
        public string kisi_adsoyad { get; set; }
       public string kisi_bilgi { get; set; }
        public DateTime kisi_eklenmetarih { get; set; }

        public int kisi_kullanici_id { get; set; }
        public string kisi_kullanici_kullaniciadi { get; set; }
        public virtual Kullanici Kullanicilar { get; set; }

    }
}