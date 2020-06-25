<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="hesabim.aspx.cs" Inherits="SözTabani.Hesap.hesabim" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <div class="panel-group">
    <div class="panel panel-info">
      <div class="panel-heading">
        <asp:Label ID="LblKullAdi" runat="server" Text=" " CssClass="text text-danger"></asp:Label>
    </div>
      <div class="panel-body">

  <asp:Label ID="Label10" runat="server" Text="Ad :"><asp:Label ID="LblAd" runat="server" Text=""></asp:Label></asp:Label><br />
        <asp:Label ID="Label12" runat="server" Text="Soyad :"><asp:Label ID="LblSad" runat="server" Text=""></asp:Label></asp:Label><br />
    <asp:Label ID="Label3" runat="server" Text="E-mail Adres :"><asp:Label ID="LblMail" runat="server" Text=""></asp:Label></asp:Label><br />
       <asp:Label ID="Label6" runat="server" Text="Kayıt Tarihi :"><asp:Label ID="LblKytTarih" runat="server" Text=""></asp:Label></asp:Label><br />
                    <asp:Label ID="Label8" runat="server" Text="En son Şifre Değiştirme Tarihi :">
                <asp:Label ID="LblEnSnSifre" runat="server" Text="" CssClass="text text-danger"></asp:Label> <a href="/sifredegistir">Şifre Değiştir</a></asp:Label>  <br />
        <asp:Label ID="Label5" runat="server" Text="En Son Giriş Tarihi :"><asp:Label ID="LblBrOnckGrs" runat="server" Text=""></asp:Label></asp:Label><br />
           <asp:Label ID="Label1" runat="server" Text="Eklediğim Söz Sayısı :"><asp:Label ID="LblSozSayi" runat="server" Text=""></asp:Label></asp:Label><br />
                    
          <asp:ListBox ID="LstRol" runat="server" CssClass="list-group-item"></asp:ListBox>
    <%--<asp:Label ID="Label2" runat="server" Text="Online Zaman :"><asp:Label ID="LblOnline" runat="server" Text=""></asp:Label></asp:Label><br />--%>
    <%--<asp:Label ID="Label4" runat="server" Text="Şuan Online Kullanıcı :"><asp:Label ID="LblSimdiOnline" runat="server" Text=""></asp:Label></asp:Label><br />--%>
      </div>
    </div>
</asp:Content>
