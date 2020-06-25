<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="sifredegistir.aspx.cs" Inherits="SözTabani.Hesap.sifredegistir" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
     <p class="text-danger">
        <asp:Literal runat="server" ID="ErrorMessage" />
         </p>
        <div class="form-horizontal">
      <div class="form-group">
            <asp:Label ID="Label2" runat="server" AssociatedControlID="Password" CssClass="col-md-2 control-label" 
                                 Text="Mevcut Şifre"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="Password" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="Password"
                    CssClass="text-danger" ErrorMessage="Şifre Gerekli !" ForeColor="Red" />
            </div>
           </div>
           <div class="form-group">
            <asp:Label ID="Label1" runat="server" AssociatedControlID="yenisifre" CssClass="col-md-2 control-label"
                 Text="Yeni Şifre"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="yenisifre" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="yenisifre"
                    CssClass="text-danger" ErrorMessage="Şifre girilmeli..." ForeColor="Red"/>
            </div>
        </div>
        <div class="form-group">
            <asp:Label ID="Label3" runat="server" AssociatedControlID="yenisifre_tekrar" CssClass="col-md-2 control-label"
                 Text="Yeni Şifre(Tekrar)"></asp:Label>
            <div class="col-md-5">
                <asp:TextBox runat="server" ID="yenisifre_tekrar" TextMode="Password" CssClass="form-control" />
                <asp:RequiredFieldValidator ID="RequiredFieldValidator4" runat="server" ControlToValidate="yenisifre_tekrar"
                    CssClass="text-danger" Display="Dynamic" ErrorMessage="Şifre Girilmeli" ForeColor="Red"/>
                <asp:CompareValidator ID="CompareValidator1" runat="server" ControlToCompare="yenisifre"
                    ControlToValidate="yenisifre_tekrar" CssClass="text-danger" Display="Dynamic"
                    ErrorMessage="Şifreler Eşleşmiyor !" ForeColor="Red"/>
            </div>
              </div>
            <div class="form-group">
            <div class="col-md-offset-2 col-md-3">
                <asp:LinkButton ID="BtnDegistir" runat="server"
                    CssClass="btn btn-danger" OnClick="Change">
                    <span aria-hidden="true" class="glyphicon glyphicon-refresh"></span> Şifre Değiştir
                </asp:LinkButton>
               <%-- <a href="/giris" class="btn btn-info">Zaten Üyeyim</a>--%>
    </div>
    </div>
       </div>

</asp:Content>
