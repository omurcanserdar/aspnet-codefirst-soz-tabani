<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="KisiSil.aspx.cs" Inherits="SözTabani.KisiSil" %>
<%--<asp:Content ID="Content1" ContentPlaceHolderID="headContentPlaceHolder" runat="server">
</asp:Content>--%>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">

  <h2 class="sub-header">
       Silinecek Kişi </h2> 
    <div class="form-group">
        <label for="txtTextkisi">
            Kişi</label>
        <asp:TextBox ID="txtTextkisi" runat="server" CssClass="form-control" placeholder="Kişi" Enabled="False"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtTextkisi"
            Display="Dynamic" ForeColor="Red"> Boş deger !</asp:RequiredFieldValidator>
    </div>
   
    <asp:LinkButton ID="btnSil" runat="server" CssClass="btn btn-danger"
        OnClick="btnSil_Click"  CausesValidation="False">
          <span class="glyphicon glyphicon-trash"></span> Sil</asp:LinkButton>
        <a href="/kisiliste" class="btn btn-default">
             <span class="glyphicon glyphicon-list"></span> Kişi Listesi</a>
    <asp:Label ID="Errora" runat="server" CssClass="text-danger"></asp:Label>
</asp:Content>