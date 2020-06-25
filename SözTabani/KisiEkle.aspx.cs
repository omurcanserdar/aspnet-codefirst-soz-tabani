using SözTabani.Contexts;
using System;
using System.Collections.Generic;
using System.Drawing;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SözTabani
{
    public partial class KisiEkle : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Roles.IsUserInRole("User"))
            {
                Error.Text = "User Rolundesin krds";
                //btnKisiListe.Visible = false;
            }
        }
        static string resyol;  
        protected void btnSave_Click(object sender, EventArgs e)
        {
            #region
            /* furesim 
          
            
            if (FileUpload1.HasFile)
            {
                string uzanti = Path.GetExtension(FileUpload1.PostedFile.FileName);
           

               FileUpload1.SaveAs(Server.MapPath("~/upload/sahte" + uzanti).ToString());

                int Donusturme = 640;

                Bitmap bmp = new Bitmap(Server.MapPath("~/upload/sahte" + uzanti));
                using (Bitmap OrjinalResim = bmp)
                {
                    double ResYukseklik = OrjinalResim.Height;
                    double ResGenislik = OrjinalResim.Width;
                    double oran = 0;

                    if (ResGenislik >= Donusturme)
                    {
                        oran = ResGenislik / ResYukseklik;
                        ResGenislik = Donusturme;
                        ResYukseklik = Donusturme / oran;

                        Size yenidegerler = new Size(Convert.ToInt32(ResGenislik), Convert.ToInt32(ResYukseklik));
                        Bitmap yeniresim = new Bitmap(OrjinalResim, yenidegerler);
                        yeniresim.Save(Server.MapPath("~/upload/"));
                        
                        //yeniresim.Dispose();
                        //OrjinalResim.Dispose();
                        //bmp.Dispose();


                    }
                    else
                    {
                     FileUpload1.SaveAs(Server.MapPath("~/upload/"));
                    }
                }
                FileInfo figecici = new FileInfo(Server.MapPath("~/upload/sahte" + uzanti));
                figecici.Delete();
            } */
#endregion

            #region resimyüklemefileupload2 

            if (FileUpload1.HasFile)
            {
                if (FileUpload1.PostedFile.ContentLength > 7340032) //en fazla 7MB'a kadar dosya yükleyebilir
                {
                    Error.Text += "Seçtiğiniz dosyanın boyutu büyük!";
                }
                else
                {

                    FileUpload1.SaveAs(Server.MapPath("upload/") + FileUpload1.FileName);//inen dosyanın kaydedileceği yer ve isim
                    Error.Text += "Dosya Eklendi. Dosya Boyutu:" + Convert.ToString(FileUpload1.PostedFile.ContentLength);//dsy bilgileri
                    Error.Text += Error.Text + " Dosya Türü:" + FileUpload1.PostedFile.ContentType;
                    Session["resimyolu"] = "upload/" + FileUpload1.FileName;//dosya yolu
                    resyol = Session["resimyolu"].ToString();
                }
            }
            else
            {
                Response.Write("Dosya Yükleme Hatası");
            } 
            #endregion
            //Error.Text = FileUpload1.File;


            string name = txtkisi.Text.Trim();
            string bilgi = txtkisibilgi.Text.Trim();
            MembershipUser a = Membership.GetUser();
            using (SozTabaniContext cn = new SozTabaniContext())
            {
                Entities.Kisiler nsn = new Entities.Kisiler();
                nsn.kisi_resim = resyol;
                nsn.kisi_adsoyad = name;
                nsn.kisi_eklenmetarih = DateTime.Now;
                nsn.kisi_bilgi = bilgi;
                nsn.kisi_kullanici_kullaniciadi = a.UserName;
                cn.Kisiler.Add(nsn);
                cn.SaveChanges();

                Error.Text = "Kişi Eklendi..";
                //Response.Redirect("/kisiliste");
            }
        }
    }
}