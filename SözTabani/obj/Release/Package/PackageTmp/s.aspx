<%@ Page Title="" Language="C#" MasterPageFile="~/layout/main.Master" AutoEventWireup="true" CodeBehind="s.aspx.cs" Inherits="SözTabani.s" %>
<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

    <%--<div class="col-md-6">--%><%--<p class="bg-info">--%> <div class="alert alert-info" role="alert">

    <asp:Label ID="Label1" runat="server" Text="İçerik :"></asp:Label> <b> <asp:Label ID="lblicerik" runat="server" Text="Label"></asp:Label></b><br />
    <asp:Label ID="Label3" runat="server" Text="Kişi :"></asp:Label> <b><asp:Label ID="lblkisi" runat="server" Text="Label"></asp:Label></b><br />
    <asp:Label ID="Label5" runat="server" Text="Eklenme Tarihi :"></asp:Label><b> <asp:Label ID="lbleklenmetarih" runat="server" Text="Label"></asp:Label></b><br />
    <asp:Label ID="Label7" runat="server" Text="Ekleyen Kullanıcı :"></asp:Label><b> <asp:Label ID="lblekleyenkullanici" runat="server" Text="Label"></asp:Label></b><br />
            </div>

            <a name="fb_share" type="button" href="http://www.facebook.com/share.php?u=<;url>"
 onclick="return fbs_click()" class="btn btn-primary"> <span class="fa fa-facebook-official"></span> Paylaş</a>
    <a href="https://twitter.com/share" class="btn btn-info"><span class="fa fa-twitter"></span>Tweetle</a> 
 
   

    <%--<div class="fb-comments" data-href="https://developers.facebook.com/docs/plugins/comments#configurator" data-numposts="4"></div>--%>
      
    <asp:Literal ID="Error" runat="server"></asp:Literal>
</asp:Content>
