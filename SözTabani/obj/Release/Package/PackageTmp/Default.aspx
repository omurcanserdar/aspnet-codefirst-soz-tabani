<%@ Page Title="" Language="C#" MasterPageFile="~/layout/main.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="SözTabani.Default" %>

<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">

</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
   <asp:LinkButton runat="server" OnClick="Unnamed_Click" CssClass="btn btn-success"><span class="glyphicon glyphicon-repeat"></span> yenile </asp:LinkButton><br />
    <asp:ListView ID="SözList" runat="server">
        <LayoutTemplate>
            <div class="row">
                <asp:PlaceHolder ID="itemPlaceHolder" runat="server"></asp:PlaceHolder>
                   
            </div>
        </LayoutTemplate>
        <ItemTemplate>
            <div class="col-sm-6 col-md-4">
             
                <div class="thumbnail">
                    <div class="caption">
                        <h4 class="sozrenk">
                        
                           <a href='/s/<%#SözTabani.Helper.HelperMethod.KarakterDuzelt(Eval("soz_icerik").ToString())%>?id=<%#Eval("soz_id") %>' 
                               class="btn btn-info">
                               <span class="glyphicon glyphicon-folder-open"></span> User Detay 
                           </a>
                            <a href='/soz/<%#SözTabani.Helper.HelperMethod.KarakterDuzelt(Eval("soz_icerik").ToString())%>?id=<%#Eval("soz_id") %>'
                                 class="btn btn-warning"> 
                                <span class="glyphicon glyphicon-wrench"></span> Düzenle </a> 
                           
                              <a href='SozSil.aspx?id=<%#Eval("soz_id") %>'class="btn btn-danger">  
                                  <span class="glyphicon glyphicon-trash"></span> Sil </a>
                        </h4>
                   
                                                     <h5 class="sozrenk"> 
                                   <hr />  <%#Eval("soz_icerik")%><hr /></h5>
                                  <h6 class="sozaltrenk"> <%#Eval("soz_kisi_adi")%></h6><hr />
                         <%--<a name="fb_share" type="button" href="http://www.facebook.com/share.php?u=<url>"
 onclick="return fbs_click()" class="btn btn-primary"> <span class="fa fa-facebook-official"></span> Paylaş</a>


                      <a href="https://twitter.com/share" class="btn btn-info"><span class="fa fa-twitter"></span>Tweetle</a> --%>


                    
                        <%--<button class="btn btn-danger"> 
                                 <span class="fa fa-share-alt"></span> Diğer</button>--%>
                                    <%--<h6 class="sozaltrenk"> <%#Eval("soz_kullanici_kullaniciadi")%> tarafından <%#Eval("soz_eklenmetarih")%> tarihinde eklendi.</h6>--%>
                                                 </div>   
                      </div>               
            </div>
        </ItemTemplate>
    </asp:ListView>
</asp:Content>
