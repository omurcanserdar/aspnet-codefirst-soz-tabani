using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Web;

namespace SözTabani.Entities
{
    public class AtasozUyruk
    {
        [Key]
        public int atasoz_uyrukid { get; set; }
        public string Uyruk { get; set; }

        public int uyruk_kullanici_id { get; set; }
        public virtual Kullanici kullanici { get; set; }
    }
}