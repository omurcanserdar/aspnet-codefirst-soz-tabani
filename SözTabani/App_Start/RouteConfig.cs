using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Routing;

namespace SözTabani.App_Start
{
    public static class RouteConfig
    {
        public static void SozTabaniRoutes(RouteCollection routes)
        {
            //Default.aspx(anasayfa)
            routes.MapPageRoute("DefaultaspxRoute",
                                "anasayfa",
                                "~/Default.aspx");

            //hata
            routes.MapPageRoute("HataaspxRoute",
                               "error",
                               "~/Hata/hata.aspx");

            #region YardımcıSayfalarRoute


            //gizlilik
            routes.MapPageRoute("GizlilikRoute",
                            "gizlilik",
                            "~/YardımcıSayfalar/gizlilik.aspx");

            //hakkımızda
            routes.MapPageRoute("HakkimizdaRoute",
                            "hakkimizda",
                            "~/YardımcıSayfalar/hakkimizda.aspx");

            //yardım
            routes.MapPageRoute("YardimaspxRoute",
                               "yardim",
                               "~/YardımcıSayfalar/yardim.aspx");
            //sıksorulansorular
            routes.MapPageRoute("SıksorulansorularRoute",
                                "sss",
                                "~/YardımcıSayfalar/sıksorulansorular.aspx");
            //kullanımkosullari
            routes.MapPageRoute("KullanımKosulRoute",
                           "kullanimkosullari",
                           "~/YardımcıSayfalar/kullanimkosullari.aspx");
            //iletisim
            routes.MapPageRoute("iletisimRoute",
                           "iletisim",
                           "~/YardımcıSayfalar/iletisim.aspx");

            #endregion

            #region HesapRoute
            //kayıt
            routes.MapPageRoute("KayitaspxRoute",
                                "kayit",
                                "~/Hesap/kaydol.aspx");
            //giris
            routes.MapPageRoute("GirisaspxRoute",
                               "giris",
                               "~/Hesap/giris.aspx");
            //cikis
            routes.MapPageRoute("CikisaspxRoute",
                               "cikis",
                               "~/Hesap/cikis.aspx");
            //sifredegistir
            routes.MapPageRoute("SifredegisaspxRoute",
                               "sifredegistir",
                               "~/Hesap/sifredegistir.aspx");
            //hesap 
            routes.MapPageRoute("HesabımaspxRoute",
                             "hesabim",
                             "~/Hesap/hesabim.aspx");
            //sifremiunuttum
            routes.MapPageRoute("SifremiUnuttumRoute",
                             "sifremiunuttum",
                             "~/Hesap/sifremiunuttum.aspx");
            #endregion

            #region rolRoute
            //rolekle
            routes.MapPageRoute("rolekleaspxRoute",
                            "rolekle",
                            "~/Rol/rolekle.aspx");
            //rolliste
            routes.MapPageRoute("rollisteaspxRoute",
                            "rolliste",
                            "~/Rol/rolliste.aspx");
            routes.MapPageRoute("rolataRoute",
                                "rolata",
                                "~/Rol/rolata.aspx");
            #endregion 

            #region sozRoute
            //soz 
            routes.MapPageRoute("SozUrlRouteUser",
                               "s/{soz_icerik}",
                               "~/s.aspx");

            routes.MapPageRoute("SozekleaspxRoute",
                              "sozekle",
                              "~/SozEkle.aspx");

            routes.MapPageRoute("SozSilRoute",
                              "sozsil",
                              "~/SozSil.aspx");

            routes.MapPageRoute("SozListeaspxRoute",
                               "sozliste",
                               "~/SozListe.aspx");

            routes.MapPageRoute("SozUrlRoute",
                               "soz/{soz_icerik}",
                               "~/SozDetay.aspx");
            #endregion

            #region kisiRoute
            //kisi
            routes.MapPageRoute("KisiEkleRoute",
                             "kisiekle",
                             "~/KisiEkle.aspx");

            routes.MapPageRoute("KisiSilRoute",
                            "kisisil",
                            "~/KisiSil.aspx");

            routes.MapPageRoute("KisiListeRoute",
                            "kisiliste",
                            "~/KisiListe.aspx");


            routes.MapPageRoute("KisiUrlRouteUser",
                               "k/{kisi_adsoyad}",
                               "~/k.aspx");
          

            routes.MapPageRoute("KisiUrlRoute",
                               "kisi/{kisi_adsoyad}",
                               "~/KisiDetay.aspx");
            #endregion


            //atasoz
            routes.MapPageRoute("AtasozRoute",
                           "atasoz",
                           "~/atasoz.aspx");

        }
    }
}