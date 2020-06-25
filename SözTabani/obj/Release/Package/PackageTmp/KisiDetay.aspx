<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="KisiDetay.aspx.cs" Inherits="SözTabani.KisiDetay" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
 <h2 class="sub-header">
        Kişi Detayları</h2>
    <div class="form-group">
        <label for="txtkisi">
            Kişi </label>
        <asp:TextBox ID="txtkisi" runat="server" CssClass="form-control" placeholder="Kişi"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtkisi"
            Display="Dynamic" ForeColor="Red">Veri girişi yapılmadı !</asp:RequiredFieldValidator>
    </div>
     <div class="form-group">
        <label for="txtkisibilgi">
            Kişi Hakkında </label>
        <asp:TextBox ID="txtkisibilgi" runat="server" CssClass="form-control" placeholder="Kişi Bilgi..."></asp:TextBox>
           <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtkisibilgi"
            Display="Dynamic" ForeColor="Red">Veri girişi yapılmadı !</asp:RequiredFieldValidator>
         </div>
 
    <asp:LinkButton ID="btnSave" runat="server" CssClass="btn btn-danger" OnClick="btnSave_Click">
           <span class="glyphicon glyphicon-refresh"></span> Güncelle
    </asp:LinkButton>
     
       <a href="/kisiliste" class="btn btn-default">
              <span class="glyphicon glyphicon-list"></span> Kişi Listesi</a>
          
    <asp:Label ID="Error" runat="server" CssClass="text-danger"></asp:Label>
</asp:Content>
