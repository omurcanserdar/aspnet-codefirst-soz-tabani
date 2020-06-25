<%@ Page Title="" Language="C#" MasterPageFile="~/layout/kullanici.Master" AutoEventWireup="true" CodeBehind="SozEkle.aspx.cs" Inherits="SözTabani.SozEkle" %>

<asp:Content ID="Content2" ContentPlaceHolderID="mainContentPlaceHolder" runat="server">
  
     <h2 class="sub-header">
       Yeni Söz Ekle </h2>
 <h6> Ekleme yapmadan önce kişinin sistemde kayıtlı olduğundan emin olun ! </h6>
    <div class="form-group">
        <label for="txtsöz">
            Söz </label>
        <asp:TextBox ID="txtsöz" runat="server" CssClass="form-control" placeholder="Sözü ekleyin"  Height="50px" Width="1000px"></asp:TextBox>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator1" runat="server" ControlToValidate="txtsöz"
            Display="Dynamic" ForeColor="Red"> Veri girişi yapılmadı ! </asp:RequiredFieldValidator>
    
     <div class="form-group">
        <label for="txtTitlekisi">
            Kişi</label>
        <asp:DropDownList ID="ddlKisi" runat="server" AppendDataBoundItems="true" CssClass="form-control" Width="300px"> 
            <asp:ListItem Text="Kişi" Value="-1" />
        </asp:DropDownList>
        <asp:RequiredFieldValidator ID="RequiredFieldValidator3" runat="server" ControlToValidate="ddlKisi" InitialValue="-1"
            Display="Dynamic" ForeColor="Red">Seçimini Kontrol Et,Geçersiz Kişi !</asp:RequiredFieldValidator>
    </div>
   
    <asp:LinkButton ID="btnSave" 
        runat="server"
        CssClass="btn btn-danger"
        OnClick="btnSave_Click"  CausesValidation="False">
         <span aria-hidden="true" class="glyphicon glyphicon-floppy-disk"></span> Ekle
    </asp:LinkButton>

        <a href="/sozliste" class="btn btn-info">
             <span class="glyphicon glyphicon-list"></span> Söz Liste
        </a>
     <a href="/kisiekle" class="btn btn-danger">
           <span class="glyphicon glyphicon-floppy-disk"></span>Kişi Ekle
     </a>
      <a href="/kisiliste" class="btn btn-info"> 
             <span class="glyphicon glyphicon-list"></span> Kişi Liste
      </a>
    
    <asp:Label ID="Error" runat="server" CssClass="text-danger"></asp:Label>
     </asp:Content>
