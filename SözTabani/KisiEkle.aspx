<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="KisiEkle.aspx.cs" Inherits="SözTabani.KisiEkle" %>
<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
    <h2 class="sub-header">
        Yeni Kişi Ekle</h2>
    <h6> Ekleme yapmadan önce kişinin sistemde kayıtlı olmadığından emin olun !</h6>
    <div class="form-group">
        <label for="txtkisi">
            Kişi </label>
        <asp:TextBox ID="txtkisi" runat="server" CssClass="form-control" placeholder="Kişi" ></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator2" runat="server" ControlToValidate="txtkisi"
            Display="Dynamic" ForeColor="Red"> Veri girişi yapılmadı ! </asp:RequiredFieldValidator>

    </div>
     <div class="form-group">
        <label for="txtkisibilgi">
            Kişi Hakkında </label>
        <asp:TextBox ID="txtkisibilgi" runat="server" CssClass="form-control" placeholder="Kişi hakkında bilgi yazın"></asp:TextBox>
         <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtkisibilgi"
            Display="Dynamic" ForeColor="Red"> Veri girişi yapılmadı !</asp:RequiredFieldValidator>
         </div>
   
    <div class="form-group">
        <label for="FileUpload1">
            Resim </label>
      <asp:FileUpload ID="FileUpload1" runat="server" />
        </div>


    <asp:LinkButton ID="btnSave" runat="server" Text="Ekle" CssClass="btn btn-danger"
        OnClick="btnSave_Click"  CausesValidation="False">
            <span class="glyphicon glyphicon-floppy-disk"></span> Kaydet
    </asp:LinkButton>
    
  <a href="/kisiliste" runat="server" class="btn btn-info">
          <span class="glyphicon glyphicon-list"></span> Kişi Listesi
  </a>
    <asp:Label ID="Error" runat="server" CssClass="text-danger"></asp:Label>
   
     <asp:Image ID="Image1" runat="server" />
    </asp:Content>