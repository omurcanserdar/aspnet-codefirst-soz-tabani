using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace SözTabani.Helper
{
    public static class HelperMethod
    {
        public static string KarakterDuzelt(string deger)
        {
            deger = deger.ToLower();
            return deger.Replace('ş', 's').
               Replace('ğ', 'g').
                 Replace('ö', 'o').
                   Replace('ı', 'i').
               Replace('ç', 'c').
               Replace('ü', 'u').
               Replace(' ', '-').
                  Replace(' ', '-').
                     Replace(',', '-').
                        Replace('!', '-').
                Replace('.', '-');
        }
    }
}