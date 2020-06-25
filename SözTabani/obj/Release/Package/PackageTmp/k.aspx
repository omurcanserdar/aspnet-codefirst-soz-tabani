<%@ Page Title="" Language="C#" MasterPageFile="~/layout/main.Master" AutoEventWireup="true" CodeBehind="k.aspx.cs" Inherits="SözTabani.k" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

 <%--<asp:Image ID="kisiresim" runat="server" ImageUrl="iUrl" Width="500px" Height="250px" /><br />--%>
   <%-- <asp:Label ID="Label3" runat="server" Text="Kişi :"></asp:Label> <b><asp:Label ID="kisiadsoyad" runat="server" Text="Label"></asp:Label></b><br />
    <asp:Label ID="Label5" runat="server" Text="Kişi Bilgi :"></asp:Label><b> <asp:Label ID="kisibilgi" runat="server" Text="Label"></asp:Label></b><br />
           <asp:Label ID="Label2" runat="server" Text="Eklenme Tarihi :"></asp:Label><b> <asp:Label ID="kisieklenmetarih" runat="server" Text="Label"></asp:Label></b><br />
    <asp:Label ID="Label7" runat="server" Text="Ekleyen Kullanıcı :"></asp:Label><b> <asp:Label ID="kisi_kullaniciadi" runat="server" Text="Label"></asp:Label></b><br />
            </div>--%>

    <div class="row">
  <div class="col-sm-6 col-md-4">
    <div class="thumbnail">
      <asp:Image ID="Image1" runat="server" />
      <div class="caption">   
          <asp:Label ID="lbladsoyad" runat="server" Text="Label"></asp:Label>
        <p>
             <asp:Label ID="lblbilgi" runat="server" Text="Label"></asp:Label><br />
            <hr />
               <asp:Label ID="lbleklenmetarih" runat="server" Text="Label"></asp:Label><br />
                  <asp:Label ID="lblekleyenkkullanici" runat="server" Text="Label"></asp:Label>
       
        </p>
        <p><a href="#" class="btn btn-primary" role="button">Fişekle</a> <a href="#" class="btn btn-danger" role="button">Istır</a></p>
      </div>
    </div>
  </div>
</div>







</asp:Content>
